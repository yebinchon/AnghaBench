; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_sync_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, i32 }
%struct.iblock_dev = type { i32 }
%struct.bio = type { %struct.se_cmd*, i32, i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iblock_end_io_flush = common dso_local global i32 0, align 4
@WRITE_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @iblock_execute_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_sync_cache(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.iblock_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.iblock_dev* @IBLOCK_DEV(i32 %8)
  store %struct.iblock_dev* %9, %struct.iblock_dev** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 2
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %20 = load i32, i32* @SAM_STAT_GOOD, align 4
  %21 = call i32 @target_complete_cmd(%struct.se_cmd* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.bio* @bio_alloc(i32 %23, i32 0)
  store %struct.bio* %24, %struct.bio** %5, align 8
  %25 = load i32, i32* @iblock_end_io_flush, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.iblock_dev*, %struct.iblock_dev** %3, align 8
  %29 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %22
  %36 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  store %struct.se_cmd* %36, %struct.se_cmd** %38, align 8
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i32, i32* @WRITE_FLUSH, align 4
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = call i32 @submit_bio(i32 %40, %struct.bio* %41)
  ret i32 0
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
