; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bdi_writeback }
%struct.bdi_writeback = type { i32, i32, i32 }
%struct.backing_dev_info = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@default_backing_dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@inode_lock = common dso_local global i32 0, align 4
@NR_BDI_STAT_ITEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdi_destroy(%struct.backing_dev_info* %0) #0 {
  %2 = alloca %struct.backing_dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdi_writeback*, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %2, align 8
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %6 = call i64 @bdi_has_dirty_io(%struct.backing_dev_info* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  store %struct.bdi_writeback* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_backing_dev_info, i32 0, i32 0), %struct.bdi_writeback** %4, align 8
  %9 = call i32 @spin_lock(i32* @inode_lock)
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %11 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.bdi_writeback*, %struct.bdi_writeback** %4, align 8
  %14 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %13, i32 0, i32 2
  %15 = call i32 @list_splice(i32* %12, i32* %14)
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %17 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %4, align 8
  %20 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %19, i32 0, i32 1
  %21 = call i32 @list_splice(i32* %18, i32* %20)
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %23 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.bdi_writeback*, %struct.bdi_writeback** %4, align 8
  %26 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %25, i32 0, i32 0
  %27 = call i32 @list_splice(i32* %24, i32* %26)
  %28 = call i32 @spin_unlock(i32* @inode_lock)
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %31 = call i32 @bdi_unregister(%struct.backing_dev_info* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %44, %29
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @NR_BDI_STAT_ITEMS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %38 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @percpu_counter_destroy(i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %49 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %48, i32 0, i32 0
  %50 = call i32 @prop_local_destroy_percpu(i32* %49)
  ret void
}

declare dso_local i64 @bdi_has_dirty_io(%struct.backing_dev_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bdi_unregister(%struct.backing_dev_info*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @prop_local_destroy_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
