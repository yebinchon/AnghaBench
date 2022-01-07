; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_show_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_show_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.iblock_dev = type { i32, i8*, i32, %struct.block_device* }
%struct.block_device = type { %struct.iblock_dev*, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"iBlock device: %s\00", align 1
@IBDF_HAS_UDEV_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"  UDEV PATH: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  readonly: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Major: %d Minor: %d  %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"CLAIMED: IBLOCK\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CLAIMED: OS\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Major: 0 Minor: 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @iblock_show_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_show_configfs_dev_params(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iblock_dev*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.se_device*, %struct.se_device** %3, align 8
  %11 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %10)
  store %struct.iblock_dev* %11, %struct.iblock_dev** %5, align 8
  %12 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %13 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %12, i32 0, i32 3
  %14 = load %struct.block_device*, %struct.block_device** %13, align 8
  store %struct.block_device* %14, %struct.block_device** %6, align 8
  %15 = load i32, i32* @BDEVNAME_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.block_device*, %struct.block_device** %6, align 8
  %20 = icmp ne %struct.block_device* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load %struct.block_device*, %struct.block_device** %6, align 8
  %27 = call i8* @bdevname(%struct.block_device* %26, i8* %18)
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IBDF_HAS_UDEV_PATH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %38, %31
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.block_device*, %struct.block_device** %6, align 8
  %68 = icmp ne %struct.block_device* %67, null
  br i1 %68, label %69, label %100

69:                                               ; preds = %49
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.block_device*, %struct.block_device** %6, align 8
  %75 = getelementptr inbounds %struct.block_device, %struct.block_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MAJOR(i32 %76)
  %78 = load %struct.block_device*, %struct.block_device** %6, align 8
  %79 = getelementptr inbounds %struct.block_device, %struct.block_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MINOR(i32 %80)
  %82 = load %struct.block_device*, %struct.block_device** %6, align 8
  %83 = getelementptr inbounds %struct.block_device, %struct.block_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %69
  br label %95

87:                                               ; preds = %69
  %88 = load %struct.block_device*, %struct.block_device** %6, align 8
  %89 = getelementptr inbounds %struct.block_device, %struct.block_device* %88, i32 0, i32 0
  %90 = load %struct.iblock_dev*, %struct.iblock_dev** %89, align 8
  %91 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %92 = icmp eq %struct.iblock_dev* %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  br label %95

95:                                               ; preds = %87, %86
  %96 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %86 ], [ %94, %87 ]
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %81, i8* %96)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %108

100:                                              ; preds = %49
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i32, i32* %9, align 4
  %110 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i32 %109
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @bdevname(%struct.block_device*, i8*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
