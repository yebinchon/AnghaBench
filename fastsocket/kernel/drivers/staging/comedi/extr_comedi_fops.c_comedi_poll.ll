; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"no driver configured on comedi%i\0A\00", align 1
@SRF_RUNNING = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @comedi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device_file_info*, align 8
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca %struct.comedi_subdevice*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iminor(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %18)
  store %struct.comedi_device_file_info* %19, %struct.comedi_device_file_info** %8, align 8
  %20 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %20, i32 0, i32 0
  %22 = load %struct.comedi_device*, %struct.comedi_device** %21, align 8
  store %struct.comedi_device* %22, %struct.comedi_device** %9, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %130

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %39 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %40 = call %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %39)
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %10, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %42 = icmp ne %struct.comedi_subdevice* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @poll_wait(%struct.file* %44, i32* %48, i32* %49)
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %43
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i64 @comedi_buf_read_n_available(%struct.TYPE_6__* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %63 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %62)
  %64 = load i32, i32* @SRF_RUNNING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61, %55, %43
  %68 = load i32, i32* @POLLIN, align 4
  %69 = load i32, i32* @POLLRDNORM, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %38
  %75 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %8, align 8
  %76 = call %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info* %75)
  store %struct.comedi_subdevice* %76, %struct.comedi_subdevice** %11, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %78 = icmp ne %struct.comedi_subdevice* %77, null
  br i1 %78, label %79, label %125

79:                                               ; preds = %74
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @poll_wait(%struct.file* %80, i32* %84, i32* %85)
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @comedi_buf_write_alloc(%struct.TYPE_6__* %89, i32 %94)
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %79
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %102 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %101)
  %103 = load i32, i32* @SRF_RUNNING, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i64 @comedi_buf_write_n_allocated(%struct.TYPE_6__* %109)
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @bytes_per_sample(i32 %115)
  %117 = icmp sge i64 %110, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %106, %100, %79
  %119 = load i32, i32* @POLLOUT, align 4
  %120 = load i32, i32* @POLLWRNORM, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %118, %106
  br label %125

125:                                              ; preds = %124, %74
  %126 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %30
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @comedi_buf_read_n_available(%struct.TYPE_6__*) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i32 @comedi_buf_write_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @comedi_buf_write_n_allocated(%struct.TYPE_6__*) #1

declare dso_local i64 @bytes_per_sample(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
