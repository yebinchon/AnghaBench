; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_inet_dccp_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_inet_dccp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, %struct.sock* }
%struct.sock = type { i8, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@SOCK_DCCP = common dso_local global i64 0, align 8
@DCCPF_CLOSED = common dso_local global i32 0, align 4
@DCCPF_LISTEN = common dso_local global i32 0, align 4
@DCCP_LISTEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_dccp_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 2
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i32 @lock_sock(%struct.sock* %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SS_UNCONNECTED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_DCCP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  br label %58

27:                                               ; preds = %20
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  store i8 %30, i8* %6, align 1
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 1, %32
  %34 = load i32, i32* @DCCPF_CLOSED, align 4
  %35 = load i32, i32* @DCCPF_LISTEN, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %58

40:                                               ; preds = %27
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @DCCP_LISTEN, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dccp_listen_start(%struct.sock* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %52, %39, %26
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call i32 @release_sock(%struct.sock* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @dccp_listen_start(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
