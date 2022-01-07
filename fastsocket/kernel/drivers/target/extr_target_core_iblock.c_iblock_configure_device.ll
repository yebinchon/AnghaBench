; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_configure_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iblock_dev = type { i32, i32*, %struct.block_device*, i32, i32 }
%struct.block_device = type { i32 }
%struct.request_queue = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IBDF_HAS_UDEV_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Missing udev_path= parameters for IBLOCK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IBLOCK_BIO_POOL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IBLOCK: Unable to create bioset\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"IBLOCK: Claiming struct block_device: %s\0A\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"IBLOCK: BLOCK Discard support available, disabled by default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @iblock_configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_configure_device(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.iblock_dev*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %9 = load %struct.se_device*, %struct.se_device** %3, align 8
  %10 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %9)
  store %struct.iblock_dev* %10, %struct.iblock_dev** %4, align 8
  store %struct.block_device* null, %struct.block_device** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IBDF_HAS_UDEV_PATH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %135

23:                                               ; preds = %1
  %24 = load i32, i32* @IBLOCK_BIO_POOL_SIZE, align 4
  %25 = call i32* @bioset_create(i32 %24, i32 0)
  %26 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %27 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %29 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %133

34:                                               ; preds = %23
  %35 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %36 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @FMODE_READ, align 4
  %40 = load i32, i32* @FMODE_EXCL, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %43 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @FMODE_WRITE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %34
  %51 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %56 = call %struct.block_device* @open_bdev_exclusive(i32 %53, i32 %54, %struct.iblock_dev* %55)
  store %struct.block_device* %56, %struct.block_device** %6, align 8
  %57 = load %struct.block_device*, %struct.block_device** %6, align 8
  %58 = call i64 @IS_ERR(%struct.block_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.block_device*, %struct.block_device** %6, align 8
  %62 = call i32 @PTR_ERR(%struct.block_device* %61)
  store i32 %62, i32* %8, align 4
  br label %126

63:                                               ; preds = %50
  %64 = load %struct.block_device*, %struct.block_device** %6, align 8
  %65 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %66 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %65, i32 0, i32 2
  store %struct.block_device* %64, %struct.block_device** %66, align 8
  %67 = load %struct.block_device*, %struct.block_device** %6, align 8
  %68 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %67)
  store %struct.request_queue* %68, %struct.request_queue** %5, align 8
  %69 = load %struct.block_device*, %struct.block_device** %6, align 8
  %70 = call i32 @bdev_logical_block_size(%struct.block_device* %69)
  %71 = load %struct.se_device*, %struct.se_device** %3, align 8
  %72 = getelementptr inbounds %struct.se_device, %struct.se_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @UINT_MAX, align 4
  %75 = load %struct.se_device*, %struct.se_device** %3, align 8
  %76 = getelementptr inbounds %struct.se_device, %struct.se_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  store i32 %74, i32* %77, align 4
  %78 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %79 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.se_device*, %struct.se_device** %3, align 8
  %82 = getelementptr inbounds %struct.se_device, %struct.se_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %85 = call i64 @blk_queue_discard(%struct.request_queue* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %63
  %88 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %89 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.se_device*, %struct.se_device** %3, align 8
  %93 = getelementptr inbounds %struct.se_device, %struct.se_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 4
  %95 = load %struct.se_device*, %struct.se_device** %3, align 8
  %96 = getelementptr inbounds %struct.se_device, %struct.se_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %99 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 9
  %103 = load %struct.se_device*, %struct.se_device** %3, align 8
  %104 = getelementptr inbounds %struct.se_device, %struct.se_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %107 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.se_device*, %struct.se_device** %3, align 8
  %111 = getelementptr inbounds %struct.se_device, %struct.se_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  %113 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %87, %63
  %115 = load %struct.se_device*, %struct.se_device** %3, align 8
  %116 = getelementptr inbounds %struct.se_device, %struct.se_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 65535, i32* %117, align 4
  %118 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %119 = call i64 @blk_queue_nonrot(%struct.request_queue* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.se_device*, %struct.se_device** %3, align 8
  %123 = getelementptr inbounds %struct.se_device, %struct.se_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %114
  store i32 0, i32* %2, align 4
  br label %135

126:                                              ; preds = %60
  %127 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %128 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @bioset_free(i32* %129)
  %131 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %132 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %32
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %125, %19
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @bioset_create(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.block_device* @open_bdev_exclusive(i32, i32, %struct.iblock_dev*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i64 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i64 @blk_queue_nonrot(%struct.request_queue*) #1

declare dso_local i32 @bioset_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
