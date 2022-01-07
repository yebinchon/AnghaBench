; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811_cs.c_sl811_cs_config_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811_cs.c_sl811_cs_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_11__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@CISTPL_POWER_VNOM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i8*)* @sl811_cs_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl811_cs_config_check(%struct.pcmcia_device* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %206

20:                                               ; preds = %5
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 10000
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %206

44:                                               ; preds = %29
  br label %71

45:                                               ; preds = %20
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 10000
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %206

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 10000
  %90 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %91 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %116

93:                                               ; preds = %71
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @CISTPL_POWER_VNOM, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 10000
  %112 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %113 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %102, %93
  br label %116

116:                                              ; preds = %115, %80
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122, %116
  %129 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %130 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %131 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %122
  %136 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %137 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %140 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %135
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %201

153:                                              ; preds = %147, %135
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  br label %165

162:                                              ; preds = %153
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  br label %165

165:                                              ; preds = %162, %159
  %166 = phi %struct.TYPE_17__* [ %161, %159 ], [ %164, %162 ]
  store %struct.TYPE_17__* %166, %struct.TYPE_17__** %12, align 8
  %167 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %168 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %169 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %177 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %186 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %195 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  store i64 %193, i64* %196, align 8
  %197 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %198 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %199 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %198, i32 0, i32 0
  %200 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %197, %struct.TYPE_11__* %199)
  store i32 %200, i32* %6, align 4
  br label %206

201:                                              ; preds = %147
  %202 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %203 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %202)
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %201, %165, %66, %41, %17
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
