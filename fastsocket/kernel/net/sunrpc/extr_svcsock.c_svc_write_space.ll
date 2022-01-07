; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.svc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"svc: socket %p(inet %p), write_space busy=%d\0A\00", align 1
@XPT_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"RPC svc_write_space: someone sleeping on %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @svc_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.svc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.svc_sock*
  store %struct.svc_sock* %7, %struct.svc_sock** %3, align 8
  %8 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %9 = icmp ne %struct.svc_sock* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = load i32, i32* @XPT_BUSY, align 4
  %14 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %15 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %13, i32* %16)
  %18 = call i32 (i8*, %struct.svc_sock*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.svc_sock* %11, %struct.sock* %12, i32 %17)
  %19 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %20 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %19, i32 0, i32 0
  %21 = call i32 @svc_xprt_enqueue(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @waitqueue_active(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %35 = call i32 (i8*, %struct.svc_sock*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.svc_sock* %34)
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @wake_up_interruptible(i64 %38)
  br label %40

40:                                               ; preds = %33, %27, %22
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.svc_sock*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_2__*) #1

declare dso_local i64 @waitqueue_active(i64) #1

declare dso_local i32 @wake_up_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
