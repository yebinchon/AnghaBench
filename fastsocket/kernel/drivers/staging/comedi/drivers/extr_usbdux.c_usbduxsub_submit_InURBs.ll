; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_InURBs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_InURBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__**, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"comedi%d: submitting in-urb[%d]: %p,%p intv=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"comedi_: ai: usb_submit_urb(%d) error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*)* @usbduxsub_submit_InURBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsub_submit_InURBs(%struct.usbduxsub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbduxsub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %3, align 8
  %6 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %7 = icmp ne %struct.usbduxsub* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %132

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %128, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %15 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %131

18:                                               ; preds = %12
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %20 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %23 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %21, i32* %29, align 8
  %30 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %31 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %34 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %42 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %45 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %43, i32* %51, align 4
  %52 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %53 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @URB_ISO_ASAP, align 4
  %61 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %62 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i32 %60, i32* %68, align 8
  %69 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %70 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %74 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %80 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %89 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %90, i64 %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %98 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, %struct.TYPE_6__* %87, i32 %96, i32 %105)
  %107 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %108 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %109, i64 %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call i32 @usb_submit_urb(%struct.TYPE_5__* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %18
  %119 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %120 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %18
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %12

131:                                              ; preds = %12
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %118, %8
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
