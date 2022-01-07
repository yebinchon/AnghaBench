; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_show_read_buffer_kb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_show_read_buffer_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.comedi_device_file_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDF_CMD_READ = common dso_local global i32 0, align 4
@bytes_per_kibi = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_read_buffer_kb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_read_buffer_kb(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device_file_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_subdevice*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.comedi_device_file_info* %12, %struct.comedi_device_file_info** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %14 = call %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %13)
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %10, align 8
  %15 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %21 = icmp ne %struct.comedi_subdevice* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SDF_CMD_READ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @bytes_per_kibi, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %34, %29, %22, %3
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.comedi_device_file_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
