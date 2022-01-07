; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_writeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.writeback_control = type { i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@LLONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @writeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeout(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control, align 4
  %7 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 2
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 3
  %12 = load i32, i32* @LLONG_MAX, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 4
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 5
  %15 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %19, align 8
  %21 = icmp ne i32 (%struct.page*, %struct.writeback_control*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @clear_page_dirty_for_io(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %25
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @remove_migration_ptes(%struct.page* %33, %struct.page* %34)
  %36 = load %struct.address_space*, %struct.address_space** %4, align 8
  %37 = getelementptr inbounds %struct.address_space, %struct.address_space* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %39, align 8
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i32 %40(%struct.page* %41, %struct.writeback_control* %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @lock_page(%struct.page* %47)
  br label %49

49:                                               ; preds = %46, %32
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %29, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
