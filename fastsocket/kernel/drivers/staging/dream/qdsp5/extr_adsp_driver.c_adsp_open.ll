; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.adsp_device* }
%struct.adsp_device = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adsp_open() name = '%s'\0A\00", align 1
@adsp_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"adsp_open() module '%s' adev %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @adsp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adsp_device*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @nonseekable_open(%struct.inode* %8, %struct.file* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.adsp_device* @inode_to_device(%struct.inode* %16)
  store %struct.adsp_device* %17, %struct.adsp_device** %6, align 8
  %18 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %19 = icmp ne %struct.adsp_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %15
  %24 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %25 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %29 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %32 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %31, i32 0, i32 0
  %33 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %34 = call i32 @msm_adsp_get(i32 %30, %struct.TYPE_2__** %32, i32* @adsp_ops, %struct.adsp_device* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %23
  %40 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %41 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %44 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42, %struct.adsp_device* %43)
  %45 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store %struct.adsp_device* %45, %struct.adsp_device** %47, align 8
  %48 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %49 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %51 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @INIT_HLIST_HEAD(i32* %53)
  %55 = load %struct.adsp_device*, %struct.adsp_device** %6, align 8
  %56 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_init(i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %39, %37, %20, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.adsp_device* @inode_to_device(%struct.inode*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @msm_adsp_get(i32, %struct.TYPE_2__**, i32*, %struct.adsp_device*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
