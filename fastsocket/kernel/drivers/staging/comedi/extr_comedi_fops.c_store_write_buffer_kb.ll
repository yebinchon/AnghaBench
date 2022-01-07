; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_store_write_buffer_kb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_store_write_buffer_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.comedi_device_file_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@bytes_per_kibi = common dso_local global i64 0, align 8
@SDF_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_write_buffer_kb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_write_buffer_kb(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.comedi_device_file_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.comedi_subdevice*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device* %15)
  store %struct.comedi_device_file_info* %16, %struct.comedi_device_file_info** %10, align 8
  %17 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %18 = call %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info* %17)
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strict_strtoul(i8* %19, i32 10, i64* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %92

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %92

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @bytes_per_kibi, align 8
  %35 = mul i64 %33, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %92

42:                                               ; preds = %32
  %43 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %44 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %49 = icmp eq %struct.comedi_subdevice* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SDF_CMD_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %50, %42
  %63 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %64 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %92

70:                                               ; preds = %57
  %71 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %72 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @resize_async_buffer(%struct.TYPE_2__* %73, %struct.comedi_subdevice* %74, i32* %77, i64 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %81 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %92

89:                                               ; preds = %70
  %90 = load i64, i64* %9, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %87, %62, %39, %29, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @resize_async_buffer(%struct.TYPE_2__*, %struct.comedi_subdevice*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
