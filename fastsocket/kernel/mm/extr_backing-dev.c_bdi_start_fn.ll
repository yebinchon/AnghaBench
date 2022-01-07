; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_start_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_start_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32*, i32, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32, i32, i32, i32 }

@bdi_lock = common dso_local global i32 0, align 4
@bdi_list = common dso_local global i32 0, align 4
@BDI_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bdi_start_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdi_start_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca %struct.backing_dev_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bdi_writeback*
  store %struct.bdi_writeback* %7, %struct.bdi_writeback** %3, align 8
  %8 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %8, i32 0, i32 2
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  store %struct.backing_dev_info* %10, %struct.backing_dev_info** %4, align 8
  %11 = call i32 @spin_lock_bh(i32* @bdi_lock)
  %12 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %13 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %12, i32 0, i32 3
  %14 = call i32 @list_add_rcu(i32* %13, i32* @bdi_list)
  %15 = call i32 @spin_unlock_bh(i32* @bdi_lock)
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %17 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %18 = call i32 @bdi_task_init(%struct.backing_dev_info* %16, %struct.bdi_writeback* %17)
  %19 = load i32, i32* @BDI_pending, align 4
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %21 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %20, i32 0, i32 2
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = call i32 (...) @smp_mb__after_clear_bit()
  %24 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %25 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %24, i32 0, i32 2
  %26 = load i32, i32* @BDI_pending, align 4
  %27 = call i32 @wake_up_bit(i32* %25, i32 %26)
  %28 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %29 = call i32 @bdi_writeback_task(%struct.bdi_writeback* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %34 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %33, i32 0, i32 1
  %35 = call i32 @list_del_rcu(i32* %34)
  %36 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %37 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %40 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %39, i32 0, i32 0
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %45 = call i32 @wb_do_writeback(%struct.bdi_writeback* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %48 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bdi_task_init(%struct.backing_dev_info*, %struct.bdi_writeback*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @bdi_writeback_task(%struct.bdi_writeback*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @wb_do_writeback(%struct.bdi_writeback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
