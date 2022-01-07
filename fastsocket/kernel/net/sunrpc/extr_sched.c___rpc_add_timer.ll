; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rpc_task = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"RPC: %5u setting alarm for %lu ms\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*)* @__rpc_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_add_timer(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_wait_queue*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %65

10:                                               ; preds = %2
  %11 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 1000
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %17, %18
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 %26, i64* %30, align 8
  %31 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %32 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %10
  %37 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %43 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @time_before(i64 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %36, %10
  %49 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %50 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @rpc_set_queue_timer(%struct.rpc_wait_queue* %49, i64 %54)
  br label %56

56:                                               ; preds = %48, %36
  %57 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %58 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %62 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @list_add(i32* %60, i32* %63)
  br label %65

65:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @rpc_set_queue_timer(%struct.rpc_wait_queue*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
