; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_execute_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_execute_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, %struct.se_device*, i32, %struct.scatterlist* }
%struct.se_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.scatterlist = type { i32 }
%struct.fd_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SCF_FUA = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @fd_execute_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_rw(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 6
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %4, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 4
  %23 = load %struct.se_device*, %struct.se_device** %22, align 8
  store %struct.se_device* %23, %struct.se_device** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @fd_do_rw(%struct.se_cmd* %28, %struct.scatterlist* %29, i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  br label %81

32:                                               ; preds = %1
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @fd_do_rw(%struct.se_cmd* %33, %struct.scatterlist* %34, i32 %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %32
  %40 = load %struct.se_device*, %struct.se_device** %7, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SCF_FUA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %45
  %53 = load %struct.se_device*, %struct.se_device** %7, align 8
  %54 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %53)
  store %struct.fd_dev* %54, %struct.fd_dev** %9, align 8
  %55 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.se_device*, %struct.se_device** %7, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %57, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.fd_dev*, %struct.fd_dev** %9, align 8
  %69 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.fd_dev*, %struct.fd_dev** %9, align 8
  %72 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @vfs_fsync_range(%struct.TYPE_6__* %70, i32 %76, i32 %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %52, %45, %39, %32
  br label %81

81:                                               ; preds = %80, %27
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %85, i32* %2, align 4
  br label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %91 = load i32, i32* @SAM_STAT_GOOD, align 4
  %92 = call i32 @target_complete_cmd(%struct.se_cmd* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @fd_do_rw(%struct.se_cmd*, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @vfs_fsync_range(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
