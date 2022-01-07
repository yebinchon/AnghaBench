; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_dev_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_dev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.dst_entry* }
%struct.TYPE_2__ = type { i32, %struct.dst_entry* }
%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@dst_gc_mutex = common dso_local global i32 0, align 4
@dst_busy_list = common dso_local global %struct.dst_entry* null, align 8
@dst_garbage = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dst_dev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_dev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %9, align 8
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %60 [
    i64 128, label %13
    i64 129, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = call i32 @mutex_lock(i32* @dst_gc_mutex)
  %15 = load %struct.dst_entry*, %struct.dst_entry** @dst_busy_list, align 8
  store %struct.dst_entry* %15, %struct.dst_entry** %8, align 8
  br label %16

16:                                               ; preds = %27, %13
  %17 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %18 = icmp ne %struct.dst_entry* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %20, %struct.dst_entry** %9, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 129
  %25 = zext i1 %24 to i32
  %26 = call i32 @dst_ifdown(%struct.dst_entry* %21, %struct.net_device* %22, i32 %25)
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 0
  %30 = load %struct.dst_entry*, %struct.dst_entry** %29, align 8
  store %struct.dst_entry* %30, %struct.dst_entry** %8, align 8
  br label %16

31:                                               ; preds = %16
  %32 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_garbage, i32 0, i32 0))
  %33 = load %struct.dst_entry*, %struct.dst_entry** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_garbage, i32 0, i32 1), align 8
  store %struct.dst_entry* %33, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* null, %struct.dst_entry** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_garbage, i32 0, i32 1), align 8
  %34 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_garbage, i32 0, i32 0))
  %35 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %36 = icmp ne %struct.dst_entry* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %39 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %40 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %39, i32 0, i32 0
  store %struct.dst_entry* %38, %struct.dst_entry** %40, align 8
  br label %43

41:                                               ; preds = %31
  %42 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %42, %struct.dst_entry** @dst_busy_list, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %54, %43
  %45 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %46 = icmp ne %struct.dst_entry* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 129
  %52 = zext i1 %51 to i32
  %53 = call i32 @dst_ifdown(%struct.dst_entry* %48, %struct.net_device* %49, i32 %52)
  br label %54

54:                                               ; preds = %47
  %55 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %56 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %55, i32 0, i32 0
  %57 = load %struct.dst_entry*, %struct.dst_entry** %56, align 8
  store %struct.dst_entry* %57, %struct.dst_entry** %8, align 8
  br label %44

58:                                               ; preds = %44
  %59 = call i32 @mutex_unlock(i32* @dst_gc_mutex)
  br label %60

60:                                               ; preds = %3, %58
  %61 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dst_ifdown(%struct.dst_entry*, %struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
