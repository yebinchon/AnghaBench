; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_store_max_read_buffer_kb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_store_max_read_buffer_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.comedi_device_file_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@bytes_per_kibi = common dso_local global i64 0, align 8
@SDF_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_max_read_buffer_kb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_max_read_buffer_kb(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.comedi_device_file_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.comedi_subdevice*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device* %14)
  store %struct.comedi_device_file_info* %15, %struct.comedi_device_file_info** %10, align 8
  %16 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %17 = call %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %16)
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strict_strtoul(i8* %18, i32 10, i64* %11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %81

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %81

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @bytes_per_kibi, align 8
  %34 = mul i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %81

41:                                               ; preds = %31
  %42 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %43 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %48 = icmp eq %struct.comedi_subdevice* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SDF_CMD_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp eq %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56, %49, %41
  %62 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %63 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %81

69:                                               ; preds = %56
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %10, align 8
  %76 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %69, %61, %38, %28, %21
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
