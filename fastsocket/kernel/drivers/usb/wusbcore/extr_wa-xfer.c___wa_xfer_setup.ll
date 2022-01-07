; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i64, i64, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.wa_xfer_hdr }
%struct.wa_xfer_hdr = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.urb = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"xfer %p: Failed to allocate %d segments: %d\0A\00", align 1
@WA_SEG_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*, %struct.urb*)* @__wa_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_setup(%struct.wa_xfer* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.wa_xfer*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wa_xfer_hdr*, align 8
  %12 = alloca %struct.wa_xfer_hdr*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %13 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %20 = call i32 @__wa_xfer_setup_sizes(%struct.wa_xfer* %19, i32* %7)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %138

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @__wa_xfer_setup_segs(%struct.wa_xfer* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %35 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %34, i64 %37, i32 %38)
  br label %137

40:                                               ; preds = %24
  %41 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %42 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store %struct.wa_xfer_hdr* %46, %struct.wa_xfer_hdr** %11, align 8
  %47 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %48 = call i32 @wa_xfer_id_init(%struct.wa_xfer* %47)
  %49 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %50 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @__wa_xfer_setup_hdr0(%struct.wa_xfer* %49, %struct.wa_xfer_hdr* %50, i32 %51, i64 %52)
  %54 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %11, align 8
  store %struct.wa_xfer_hdr* %54, %struct.wa_xfer_hdr** %12, align 8
  %55 = load %struct.urb*, %struct.urb** %4, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %60 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %40
  %64 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %65 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  br label %69

67:                                               ; preds = %40
  %68 = load i64, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i64 [ %66, %63 ], [ %68, %67 ]
  %71 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %11, align 8
  %72 = getelementptr inbounds %struct.wa_xfer_hdr, %struct.wa_xfer_hdr* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %74 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %78

78:                                               ; preds = %129, %69
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %81 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %132

84:                                               ; preds = %78
  %85 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %86 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %87, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store %struct.wa_xfer_hdr* %91, %struct.wa_xfer_hdr** %12, align 8
  %92 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %12, align 8
  %93 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %11, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @memcpy(%struct.wa_xfer_hdr* %92, %struct.wa_xfer_hdr* %93, i64 %94)
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %12, align 8
  %98 = getelementptr inbounds %struct.wa_xfer_hdr, %struct.wa_xfer_hdr* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %101 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %106 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @cpu_to_le32(i64 %107)
  br label %112

109:                                              ; preds = %84
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @cpu_to_le32(i64 %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i64 [ %108, %104 ], [ %111, %109 ]
  %114 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %12, align 8
  %115 = getelementptr inbounds %struct.wa_xfer_hdr, %struct.wa_xfer_hdr* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @WA_SEG_READY, align 4
  %117 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %118 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 8
  %124 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %125 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %112
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %9, align 8
  br label %78

132:                                              ; preds = %78
  %133 = load %struct.wa_xfer_hdr*, %struct.wa_xfer_hdr** %12, align 8
  %134 = getelementptr inbounds %struct.wa_xfer_hdr, %struct.wa_xfer_hdr* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = or i64 %135, 128
  store i64 %136, i64* %134, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %132, %32
  br label %138

138:                                              ; preds = %137, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @__wa_xfer_setup_sizes(%struct.wa_xfer*, i32*) #1

declare dso_local i32 @__wa_xfer_setup_segs(%struct.wa_xfer*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.wa_xfer*, i64, i32) #1

declare dso_local i32 @wa_xfer_id_init(%struct.wa_xfer*) #1

declare dso_local i32 @__wa_xfer_setup_hdr0(%struct.wa_xfer*, %struct.wa_xfer_hdr*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.wa_xfer_hdr*, %struct.wa_xfer_hdr*, i64) #1

declare dso_local i64 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
