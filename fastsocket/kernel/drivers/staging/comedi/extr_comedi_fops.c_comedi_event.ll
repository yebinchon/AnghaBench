; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, i32, i32 (i32, i32)*, i32 }

@SRF_RUNNING = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@SRF_ERROR = common dso_local global i32 0, align 4
@SRF_USER = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@SDF_CMD_WRITE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_event(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 1
  %10 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  store %struct.comedi_async* %10, %struct.comedi_async** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %11)
  %13 = load i32, i32* @SRF_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %132

17:                                               ; preds = %2
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.comedi_async*, %struct.comedi_async** %19, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @COMEDI_CB_EOA, align 4
  %24 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* @SRF_RUNNING, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 1
  %37 = load %struct.comedi_async*, %struct.comedi_async** %36, align 8
  %38 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %41 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i32, i32* @SRF_ERROR, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @SRF_ERROR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %34
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @comedi_set_subdevice_runflags(%struct.comedi_subdevice* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 1
  %66 = load %struct.comedi_async*, %struct.comedi_async** %65, align 8
  %67 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %127

71:                                               ; preds = %60
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %73 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %72)
  %74 = load i32, i32* @SRF_USER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %78, i32 0, i32 4
  %80 = call i32 @wake_up_interruptible(i32* %79)
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SDF_CMD_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i32, i32* @SIGIO, align 4
  %91 = load i32, i32* @POLL_IN, align 4
  %92 = call i32 @kill_fasync(i32* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %77
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SDF_CMD_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i32, i32* @SIGIO, align 4
  %104 = load i32, i32* @POLL_OUT, align 4
  %105 = call i32 @kill_fasync(i32* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %93
  br label %126

107:                                              ; preds = %71
  %108 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %109 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %108, i32 0, i32 3
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = icmp ne i32 (i32, i32)* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %114 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %113, i32 0, i32 3
  %115 = load i32 (i32, i32)*, i32 (i32, i32)** %114, align 8
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 1
  %118 = load %struct.comedi_async*, %struct.comedi_async** %117, align 8
  %119 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %122 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %115(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %112, %107
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %60
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 1
  %130 = load %struct.comedi_async*, %struct.comedi_async** %129, align 8
  %131 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %16
  ret void
}

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_set_subdevice_runflags(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
