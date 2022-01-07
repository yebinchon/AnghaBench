; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.unix_sock = type { i32, i32 }
%struct.pid = type { i32 }
%struct.cred = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @unix_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.unix_sock*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca %struct.cred*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.unix_sock* @unix_sk(%struct.sock* %13)
  store %struct.unix_sock* %14, %struct.unix_sock** %7, align 8
  store %struct.pid* null, %struct.pid** %8, align 8
  store %struct.cred* null, %struct.cred** %9, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_STREAM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_SEQPACKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %82

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.unix_sock*, %struct.unix_sock** %7, align 8
  %33 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %82

37:                                               ; preds = %29
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = call i32 @unix_state_lock(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TCP_CLOSE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TCP_LISTEN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %71

52:                                               ; preds = %45, %37
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.unix_sock*, %struct.unix_sock** %7, align 8
  %60 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %59, i32 0, i32 0
  %61 = call i32 @wake_up_interruptible_all(i32* %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* @TCP_LISTEN, align 8
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = call i32 @init_peercred(%struct.sock* %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %62, %51
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = call i32 @unix_state_unlock(%struct.sock* %72)
  %74 = load %struct.pid*, %struct.pid** %8, align 8
  %75 = call i32 @put_pid(%struct.pid* %74)
  %76 = load %struct.cred*, %struct.cred** %9, align 8
  %77 = icmp ne %struct.cred* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.cred*, %struct.cred** %9, align 8
  %80 = call i32 @put_cred(%struct.cred* %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %36, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @init_peercred(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
