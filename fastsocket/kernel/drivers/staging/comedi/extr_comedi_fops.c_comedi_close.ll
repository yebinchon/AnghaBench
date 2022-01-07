; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 (%struct.comedi_device*)*, %struct.comedi_subdevice* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { %struct.file*, %struct.file* }

@THIS_MODULE = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @comedi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device_file_info*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %12)
  store %struct.comedi_device_file_info* %13, %struct.comedi_device_file_info** %6, align 8
  %14 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %14, i32 0, i32 0
  %16 = load %struct.comedi_device*, %struct.comedi_device** %15, align 8
  store %struct.comedi_device* %16, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %8, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 6
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  %23 = icmp ne %struct.comedi_subdevice* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %57, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 6
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i64 %36
  store %struct.comedi_subdevice* %37, %struct.comedi_subdevice** %8, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 1
  %40 = load %struct.file*, %struct.file** %39, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = icmp eq %struct.file* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %46 = call i32 @do_cancel(%struct.comedi_device* %44, %struct.comedi_subdevice* %45)
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load %struct.file*, %struct.file** %49, align 8
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = icmp eq %struct.file* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  store %struct.file* null, %struct.file** %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %25

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 5
  %74 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %73, align 8
  %75 = icmp ne i32 (%struct.comedi_device*)* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 5
  %79 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %78, align 8
  %80 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %81 = call i32 %79(%struct.comedi_device* %80)
  br label %82

82:                                               ; preds = %76, %71, %66, %61
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @module_put(i32 %94)
  br label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FASYNC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load %struct.file*, %struct.file** %4, align 8
  %112 = call i32 @comedi_fasync(i32 -1, %struct.file* %111, i32 0)
  br label %113

113:                                              ; preds = %110, %96
  ret i32 0
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_fasync(i32, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
