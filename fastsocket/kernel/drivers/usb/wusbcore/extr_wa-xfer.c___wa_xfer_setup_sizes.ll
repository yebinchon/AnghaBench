; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_setup_sizes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_setup_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.urb* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i32 }

@WA_XFER_TYPE_CTL = common dso_local global i32 0, align 4
@WA_XFER_TYPE_BI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FIXME: ISOC not implemented\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"HW BUG? seg_size %zu smaller than maxpktsize %zu\0A\00", align 1
@WA_SEGS_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"BUG? ops, number of segments %d bigger than %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*, i32*)* @__wa_xfer_setup_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_setup_sizes(%struct.wa_xfer* %0, i32* %1) #0 {
  %3 = alloca %struct.wa_xfer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.wa_rpipe*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %11 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %10, i32 0, i32 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %17 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %16, i32 0, i32 6
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  store %struct.urb* %18, %struct.urb** %8, align 8
  %19 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %19, i32 0, i32 5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.wa_rpipe*, %struct.wa_rpipe** %22, align 8
  store %struct.wa_rpipe* %23, %struct.wa_rpipe** %9, align 8
  %24 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %25 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  switch i32 %28, label %40 [
    i32 130, label %29
    i32 129, label %32
    i32 131, label %32
    i32 128, label %35
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @WA_XFER_TYPE_CTL, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  store i32 4, i32* %5, align 4
  br label %44

32:                                               ; preds = %2, %2
  %33 = load i32, i32* @WA_XFER_TYPE_BI, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  store i32 4, i32* %5, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %162

40:                                               ; preds = %2
  %41 = call i32 (...) @BUG()
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %32, %29
  %45 = load %struct.urb*, %struct.urb** %8, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB_DIR_IN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %54 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %66 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = mul nsw i32 %69, 1
  %71 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %72 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %71, i32 0, i32 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 %70, %78
  %80 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %81 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %83 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %7, align 8
  %88 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %89 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %44
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %97 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %98, i64 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %162

103:                                              ; preds = %44
  %104 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %105 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = udiv i64 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %114 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.urb*, %struct.urb** %8, align 8
  %116 = getelementptr inbounds %struct.urb, %struct.urb* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %119 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %124 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %122, %125
  %127 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %128 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %130 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @WA_SEGS_MAX, align 8
  %134 = icmp uge i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %103
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.urb*, %struct.urb** %8, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %141 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %139, %142
  %144 = load i64, i64* @WA_SEGS_MAX, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %143, i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %162

148:                                              ; preds = %103
  %149 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %150 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @WA_XFER_TYPE_CTL, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %160 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %153, %148
  br label %162

162:                                              ; preds = %161, %135, %94, %35
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
