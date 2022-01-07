; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.comedi_devconfig = type { i8*, i32 }
%struct.comedi_device_file_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@comedi_autoconfig = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_NAMELEN = common dso_local global i32 0, align 4
@COMEDI_NDEVCONFOPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_auto_config(%struct.device* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_devconfig, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.comedi_device_file_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @comedi_autoconfig, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_set_drvdata(%struct.device* %18, i32* null)
  store i32 0, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @comedi_alloc_board_minor(%struct.device* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %20
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 4, i32 %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @dev_set_drvdata(%struct.device* %38, i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %41)
  store %struct.comedi_device_file_info* %42, %struct.comedi_device_file_info** %12, align 8
  %43 = call i32 @memset(%struct.comedi_devconfig* %10, i32 0, i32 16)
  %44 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @COMEDI_NAMELEN, align 4
  %48 = call i32 @strncpy(i8* %45, i8* %46, i32 %47)
  %49 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @COMEDI_NAMELEN, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @COMEDI_NDEVCONFOPTS, align 4
  %57 = icmp ugt i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32 %61, i32* %62, i32 %66)
  %68 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %12, align 8
  %69 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %12, align 8
  %74 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @comedi_device_attach(%struct.TYPE_2__* %75, %struct.comedi_devconfig* %10)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %12, align 8
  %78 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %35, %32
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @kfree(i32* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @comedi_free_board_minor(i32 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %25, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @comedi_alloc_board_minor(%struct.device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @memset(%struct.comedi_devconfig*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @comedi_device_attach(%struct.TYPE_2__*, %struct.comedi_devconfig*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @comedi_free_board_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
