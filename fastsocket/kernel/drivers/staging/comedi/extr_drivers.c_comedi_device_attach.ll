; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_device_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)*, i32, %struct.comedi_driver*, i32, i64 }
%struct.comedi_device.0 = type opaque
%struct.comedi_devconfig = type opaque
%struct.comedi_device = type { i32, i8*, %struct.comedi_driver*, i32* }
%struct.comedi_devconfig.1 = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@comedi_drivers = common dso_local global %struct.comedi_driver* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"comedi: failed to increment module count, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"comedi: failed to increment module count\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"BUG: dev->board_name=<%p>\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BUG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_device_attach(%struct.comedi_device* %0, %struct.comedi_devconfig.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig.1*, align 8
  %6 = alloca %struct.comedi_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig.1* %1, %struct.comedi_devconfig.1** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %153

15:                                               ; preds = %2
  %16 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %16, %struct.comedi_driver** %6, align 8
  br label %17

17:                                               ; preds = %91, %15
  %18 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %19 = icmp ne %struct.comedi_driver* %18, null
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @try_module_get(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %91

28:                                               ; preds = %20
  %29 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %35 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_devconfig.1, %struct.comedi_devconfig.1* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @comedi_recognize(%struct.comedi_driver* %34, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @module_put(i32 %48)
  br label %91

50:                                               ; preds = %33
  br label %66

51:                                               ; preds = %28
  %52 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_devconfig.1, %struct.comedi_devconfig.1* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @module_put(i32 %63)
  br label %91

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 2
  store %struct.comedi_driver* %67, %struct.comedi_driver** %69, align 8
  %70 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %70, i32 0, i32 0
  %72 = load i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)*, i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)** %71, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = bitcast %struct.comedi_device* %73 to %struct.comedi_device.0*
  %75 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %76 = bitcast %struct.comedi_devconfig.1* %75 to %struct.comedi_devconfig*
  %77 = call i32 %72(%struct.comedi_device.0* %74, %struct.comedi_devconfig* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %66
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 2
  %83 = load %struct.comedi_driver*, %struct.comedi_driver** %82, align 8
  %84 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @module_put(i32 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = call i32 @__comedi_device_detach(%struct.comedi_device* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %153

90:                                               ; preds = %66
  br label %122

91:                                               ; preds = %60, %45, %26
  %92 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %92, i32 0, i32 2
  %94 = load %struct.comedi_driver*, %struct.comedi_driver** %93, align 8
  store %struct.comedi_driver* %94, %struct.comedi_driver** %6, align 8
  br label %17

95:                                               ; preds = %17
  %96 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %96, %struct.comedi_driver** %6, align 8
  br label %97

97:                                               ; preds = %115, %95
  %98 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %99 = icmp ne %struct.comedi_driver* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @try_module_get(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %115

108:                                              ; preds = %100
  %109 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %110 = call i32 @comedi_report_boards(%struct.comedi_driver* %109)
  %111 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %112 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @module_put(i32 %113)
  br label %115

115:                                              ; preds = %108, %106
  %116 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %116, i32 0, i32 2
  %118 = load %struct.comedi_driver*, %struct.comedi_driver** %117, align 8
  store %struct.comedi_driver* %118, %struct.comedi_driver** %6, align 8
  br label %97

119:                                              ; preds = %97
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %153

122:                                              ; preds = %90
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = call i32 @postconfig(%struct.comedi_device* %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 2
  %127 = load %struct.comedi_driver*, %struct.comedi_driver** %126, align 8
  %128 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @module_put(i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %135 = call i32 @__comedi_device_detach(%struct.comedi_device* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %153

137:                                              ; preds = %122
  %138 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %137
  %143 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  %147 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %148 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %147, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  %150 = call i32 (...) @smp_wmb()
  %151 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %152 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %133, %119, %80, %12
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32* @comedi_recognize(%struct.comedi_driver*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @__comedi_device_detach(%struct.comedi_device*) #1

declare dso_local i32 @comedi_report_boards(%struct.comedi_driver*) #1

declare dso_local i32 @postconfig(%struct.comedi_device*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
