; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32 }
%struct.svc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"svc: socket %p TCP (connected) state change %d (svsk %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"svc: socket %p: no user data\0A\00", align 1
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @svc_tcp_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.svc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.svc_sock*
  store %struct.svc_sock* %7, %struct.svc_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.sock* %8, i32 %11, i64 %14)
  %16 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %17 = icmp ne %struct.svc_sock* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %19)
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @XPT_CLOSE, align 4
  %23 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %24 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %22, i32* %25)
  %27 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %28 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %27, i32 0, i32 0
  %29 = call i32 @svc_xprt_enqueue(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %21, %18
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @waitqueue_active(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wake_up_interruptible_all(i64 %44)
  br label %46

46:                                               ; preds = %41, %35, %30
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.sock*, i32, i64) #1

declare dso_local i32 @printk(i8*, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_2__*) #1

declare dso_local i64 @waitqueue_active(i64) #1

declare dso_local i32 @wake_up_interruptible_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
