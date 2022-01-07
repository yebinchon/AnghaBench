; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, i32, i32, i32 }
%struct.sk_buff = type { %struct.sock* }

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @rose_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  store i32 0, i32* %11, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = icmp eq %struct.sock* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_SEQPACKET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %98

32:                                               ; preds = %21
  %33 = load %struct.sock*, %struct.sock** %10, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCP_LISTEN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %98

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %66, %41
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @prepare_to_wait(i32 %45, i32* @wait, i32 %46)
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 4
  %50 = call %struct.sk_buff* @skb_dequeue(i32* %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %75

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EWOULDBLOCK, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %75

62:                                               ; preds = %54
  %63 = load i32, i32* @current, align 4
  %64 = call i32 @signal_pending(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = call i32 @release_sock(%struct.sock* %67)
  %69 = call i32 (...) @schedule()
  %70 = load %struct.sock*, %struct.sock** %10, align 8
  %71 = call i32 @lock_sock(%struct.sock* %70)
  br label %42

72:                                               ; preds = %62
  %73 = load i32, i32* @ERESTARTSYS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %59, %53
  %76 = load %struct.sock*, %struct.sock** %10, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @finish_wait(i32 %78, i32* @wait)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %98

83:                                               ; preds = %75
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load %struct.sock*, %struct.sock** %85, align 8
  store %struct.sock* %86, %struct.sock** %9, align 8
  %87 = load %struct.sock*, %struct.sock** %9, align 8
  %88 = load %struct.socket*, %struct.socket** %6, align 8
  %89 = call i32 @sock_graft(%struct.sock* %87, %struct.socket* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %83, %82, %38, %29
  %99 = load %struct.sock*, %struct.sock** %10, align 8
  %100 = call i32 @release_sock(%struct.sock* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
