; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_handler.c_tipc_k_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_handler.c_tipc_k_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_item = type { i64, i32, i32 }

@handler_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Signal request ignored by handler\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@qitem_lock = common dso_local global i32 0, align 4
@tipc_queue_item_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Signal queue out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@signal_queue_head = common dso_local global i32 0, align 4
@tipc_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_k_signal(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.queue_item*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @handler_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOPROTOOPT, align 4
  %12 = sub i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = call i32 @spin_lock_bh(i32* @qitem_lock)
  %15 = load i32, i32* @tipc_queue_item_cache, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.queue_item* @kmem_cache_alloc(i32 %15, i32 %16)
  store %struct.queue_item* %17, %struct.queue_item** %6, align 8
  %18 = load %struct.queue_item*, %struct.queue_item** %6, align 8
  %19 = icmp ne %struct.queue_item* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @spin_unlock_bh(i32* @qitem_lock)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.queue_item*, %struct.queue_item** %6, align 8
  %28 = getelementptr inbounds %struct.queue_item, %struct.queue_item* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.queue_item*, %struct.queue_item** %6, align 8
  %31 = getelementptr inbounds %struct.queue_item, %struct.queue_item* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.queue_item*, %struct.queue_item** %6, align 8
  %33 = getelementptr inbounds %struct.queue_item, %struct.queue_item* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %33, i32* @signal_queue_head)
  %35 = call i32 @spin_unlock_bh(i32* @qitem_lock)
  %36 = call i32 @tasklet_schedule(i32* @tipc_tasklet)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %25, %20, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.queue_item* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
