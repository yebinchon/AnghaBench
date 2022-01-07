; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i32, i32, %struct.wa_seg**, i32, %struct.TYPE_5__*, %struct.wahc* }
%struct.wa_seg = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wahc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"xfer %p#%u: available %u empty %u (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"delayed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"submitted\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"xfer %p#%u: delayed\0A\00", align 1
@WA_SEG_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*)* @__wa_xfer_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_submit(%struct.wa_xfer* %0) #0 {
  %2 = alloca %struct.wa_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wa_seg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wa_rpipe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %2, align 8
  %13 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %13, i32 0, i32 5
  %15 = load %struct.wahc*, %struct.wahc** %14, align 8
  store %struct.wahc* %15, %struct.wahc** %4, align 8
  %16 = load %struct.wahc*, %struct.wahc** %4, align 8
  %17 = getelementptr inbounds %struct.wahc, %struct.wahc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %21 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.wa_rpipe*, %struct.wa_rpipe** %23, align 8
  store %struct.wa_rpipe* %24, %struct.wa_rpipe** %9, align 8
  %25 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %26 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.wahc*, %struct.wahc** %4, align 8
  %31 = getelementptr inbounds %struct.wahc, %struct.wahc* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %34, i32 0, i32 3
  %36 = load %struct.wahc*, %struct.wahc** %4, align 8
  %37 = getelementptr inbounds %struct.wahc, %struct.wahc* %36, i32 0, i32 1
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.wahc*, %struct.wahc** %4, align 8
  %40 = getelementptr inbounds %struct.wahc, %struct.wahc* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %44 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %43, i32 0, i32 2
  %45 = call i64 @atomic_read(i32* %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  store i32 0, i32* %3, align 4
  %50 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %51 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %124, %1
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %127

60:                                               ; preds = %54
  %61 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %62 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %61, i32 0, i32 2
  %63 = call i64 @atomic_read(i32* %62)
  store i64 %63, i64* %11, align 8
  %64 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %65 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %64, i32 0, i32 1
  %66 = call i64 @list_empty(i32* %65)
  store i64 %66, i64* %12, align 8
  %67 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %67, i32 0, i32 2
  %69 = load %struct.wa_seg**, %struct.wa_seg*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %69, i64 %71
  %73 = load %struct.wa_seg*, %struct.wa_seg** %72, align 8
  store %struct.wa_seg* %73, %struct.wa_seg** %7, align 8
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %60
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %81, %60
  %86 = phi i1 [ true, %60 ], [ %84, %81 ]
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %89 = call i32 (%struct.device*, i8*, %struct.wa_xfer*, i32, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %75, i32 %76, i64 %77, i64 %78, i8* %88)
  %90 = load i64, i64* %11, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.device*, i8*, %struct.wa_xfer*, i32, ...) @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.wa_xfer* %97, i32 %98)
  %100 = load i32, i32* @WA_SEG_DELAYED, align 4
  %101 = load %struct.wa_seg*, %struct.wa_seg** %7, align 8
  %102 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.wa_seg*, %struct.wa_seg** %7, align 8
  %104 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %103, i32 0, i32 0
  %105 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %106 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %105, i32 0, i32 1
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  br label %119

108:                                              ; preds = %92
  %109 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %110 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %111 = load %struct.wa_seg*, %struct.wa_seg** %7, align 8
  %112 = call i32 @__wa_seg_submit(%struct.wa_rpipe* %109, %struct.wa_xfer* %110, %struct.wa_seg* %111)
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %117 = call i32 @__wa_xfer_abort(%struct.wa_xfer* %116)
  br label %128

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %121 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %54

127:                                              ; preds = %54
  br label %128

128:                                              ; preds = %127, %115
  %129 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %130 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %129, i32 0, i32 0
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.wa_xfer*, i32, ...) #1

declare dso_local i32 @__wa_seg_submit(%struct.wa_rpipe*, %struct.wa_xfer*, %struct.wa_seg*) #1

declare dso_local i32 @__wa_xfer_abort(%struct.wa_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
