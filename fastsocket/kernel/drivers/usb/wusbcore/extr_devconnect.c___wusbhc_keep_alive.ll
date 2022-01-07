; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c___wusbhc_keep_alive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c___wusbhc_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.wuie_keep_alive, %struct.device* }
%struct.wuie_keep_alive = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wusb_port = type { %struct.wusb_dev* }

@WUIE_ELT_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KEEPALIVE: device %u timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*)* @__wusbhc_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wusbhc_keep_alive(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wusb_dev*, align 8
  %6 = alloca %struct.wusb_port*, align 8
  %7 = alloca %struct.wuie_keep_alive*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 2
  store %struct.wuie_keep_alive* %15, %struct.wuie_keep_alive** %7, align 8
  %16 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %17 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %105, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WUIE_ELT_MAX, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  br i1 %34, label %35, label %108

35:                                               ; preds = %33
  %36 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @msecs_to_jiffies(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %40, i32 %41)
  store %struct.wusb_port* %42, %struct.wusb_port** %6, align 8
  %43 = load %struct.wusb_port*, %struct.wusb_port** %6, align 8
  %44 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %43, i32 0, i32 0
  %45 = load %struct.wusb_dev*, %struct.wusb_dev** %44, align 8
  store %struct.wusb_dev* %45, %struct.wusb_dev** %5, align 8
  %46 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %47 = icmp eq %struct.wusb_dev* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %105

49:                                               ; preds = %35
  %50 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp eq %struct.TYPE_4__* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %49
  br label %105

62:                                               ; preds = %54
  %63 = load i32, i32* @jiffies, align 4
  %64 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %65 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i64 @time_after(i32 %63, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %75 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %79 = load %struct.wusb_port*, %struct.wusb_port** %6, align 8
  %80 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %78, %struct.wusb_port* %79)
  br label %104

81:                                               ; preds = %62
  %82 = load i32, i32* @jiffies, align 4
  %83 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %84 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = udiv i32 %86, 2
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = call i64 @time_after(i32 %82, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %94 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %97 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %95, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %81
  br label %104

104:                                              ; preds = %103, %72
  br label %105

105:                                              ; preds = %104, %61, %48
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %23

108:                                              ; preds = %33
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %114 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 127, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %108
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = add i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %127 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = icmp ugt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %133 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %134 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %133, i32 0, i32 1
  %135 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %132, i32 10, i32 5, %struct.TYPE_5__* %134)
  br label %145

136:                                              ; preds = %120
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %141 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %142 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %141, i32 0, i32 1
  %143 = call i32 @wusbhc_mmcie_rm(%struct.wusbhc* %140, %struct.TYPE_5__* %142)
  br label %144

144:                                              ; preds = %139, %136
  br label %145

145:                                              ; preds = %144, %131
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, %struct.wusb_port*) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @wusbhc_mmcie_rm(%struct.wusbhc*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
