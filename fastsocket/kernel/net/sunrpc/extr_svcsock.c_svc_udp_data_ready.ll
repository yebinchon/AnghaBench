; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_udp_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_udp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.svc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"svc: socket %p(inet %p), count=%d, busy=%d\0A\00", align 1
@XPT_BUSY = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @svc_udp_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_udp_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.svc_sock*
  store %struct.svc_sock* %9, %struct.svc_sock** %5, align 8
  %10 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %11 = icmp ne %struct.svc_sock* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XPT_BUSY, align 4
  %17 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %18 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %16, i32* %19)
  %21 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.svc_sock* %13, %struct.sock* %14, i32 %15, i32 %20)
  %22 = load i32, i32* @XPT_DATA, align 4
  %23 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %24 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %22, i32* %25)
  %27 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %28 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %27, i32 0, i32 0
  %29 = call i32 @svc_xprt_enqueue(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %12, %2
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @waitqueue_active(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wake_up_interruptible(i64 %44)
  br label %46

46:                                               ; preds = %41, %35, %30
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.svc_sock*, %struct.sock*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_2__*) #1

declare dso_local i64 @waitqueue_active(i64) #1

declare dso_local i32 @wake_up_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
