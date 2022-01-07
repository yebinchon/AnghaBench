; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_OutURBs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_OutURBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__**, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"comedi_: submitting out-urb[%d]\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"comedi_: ao: usb_submit_urb(%d) error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*)* @usbduxsub_submit_OutURBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsub_submit_OutURBs(%struct.usbduxsub* %0) #0 {
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
  br label %89

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %85, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %15 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %88

18:                                               ; preds = %12
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %20 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %26 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %29 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %27, i32* %35, align 4
  %36 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %37 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %40 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %38, i32* %46, align 8
  %47 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %48 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @URB_ISO_ASAP, align 4
  %56 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %57 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %55, i32* %63, align 8
  %64 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %65 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32 @usb_submit_urb(%struct.TYPE_4__* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %18
  %76 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %77 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %18
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %12

88:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %75, %8
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
