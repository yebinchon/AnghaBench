; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_ptable_queue_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_ptable_queue_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.epitem = type { i32, i32 }
%struct.eppoll_entry = type { i32, %struct.TYPE_3__, %struct.epitem*, i32* }
%struct.TYPE_3__ = type { i32 }

@pwq_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ep_poll_callback = common dso_local global i32 0, align 4
@FMODE_SINGLE_WAKEUP = common dso_local global i32 0, align 4
@WQ_FLAG_LOADBALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32*, i32*)* @ep_ptable_queue_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_ptable_queue_proc(%struct.file* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.epitem*, align 8
  %8 = alloca %struct.eppoll_entry*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.epitem* @ep_item_from_epqueue(i32* %9)
  store %struct.epitem* %10, %struct.epitem** %7, align 8
  %11 = load %struct.epitem*, %struct.epitem** %7, align 8
  %12 = getelementptr inbounds %struct.epitem, %struct.epitem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load i32, i32* @pwq_cache, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.eppoll_entry* @kmem_cache_alloc(i32 %16, i32 %17)
  store %struct.eppoll_entry* %18, %struct.eppoll_entry** %8, align 8
  %19 = icmp ne %struct.eppoll_entry* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %22 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %21, i32 0, i32 1
  %23 = load i32, i32* @ep_poll_callback, align 4
  %24 = call i32 @init_waitqueue_func_entry(%struct.TYPE_3__* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %27 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.epitem*, %struct.epitem** %7, align 8
  %29 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %30 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %29, i32 0, i32 2
  store %struct.epitem* %28, %struct.epitem** %30, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FMODE_SINGLE_WAKEUP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load i32, i32* @WQ_FLAG_LOADBALANCE, align 4
  %39 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %40 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %20
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %47 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %46, i32 0, i32 1
  %48 = call i32 @add_wait_queue(i32* %45, %struct.TYPE_3__* %47)
  %49 = load %struct.eppoll_entry*, %struct.eppoll_entry** %8, align 8
  %50 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %49, i32 0, i32 0
  %51 = load %struct.epitem*, %struct.epitem** %7, align 8
  %52 = getelementptr inbounds %struct.epitem, %struct.epitem* %51, i32 0, i32 1
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.epitem*, %struct.epitem** %7, align 8
  %55 = getelementptr inbounds %struct.epitem, %struct.epitem* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %61

58:                                               ; preds = %15, %3
  %59 = load %struct.epitem*, %struct.epitem** %7, align 8
  %60 = getelementptr inbounds %struct.epitem, %struct.epitem* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %44
  ret void
}

declare dso_local %struct.epitem* @ep_item_from_epqueue(i32*) #1

declare dso_local %struct.eppoll_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
