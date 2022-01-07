; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32 }
%struct.iblock_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"blkdev_issue_discard() failed: %d\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @iblock_execute_write_same_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_write_same_unmap(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.iblock_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.iblock_dev* @IBLOCK_DEV(i32 %8)
  store %struct.iblock_dev* %9, %struct.iblock_dev** %4, align 8
  %10 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %11 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @blkdev_issue_discard(i32 %12, i32 %15, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = load i32, i32* @GOOD, align 4
  %29 = call i32 @target_complete_cmd(%struct.se_cmd* %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(i32) #1

declare dso_local i32 @blkdev_issue_discard(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
