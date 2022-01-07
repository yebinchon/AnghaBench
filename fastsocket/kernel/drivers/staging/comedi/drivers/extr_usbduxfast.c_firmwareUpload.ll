; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbduxfast.c_firmwareUpload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbduxfast.c_firmwareUpload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxfastsub_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIRMWARE_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"comedi_: usbduxfast firmware binary it too large for FX2.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"comedi_: mem alloc for firmware failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"comedi_: can not stop firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"comedi_: firmware upload failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"comedi_: can not start firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxfastsub_s*, i32*, i32)* @firmwareUpload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmwareUpload(%struct.usbduxfastsub_s* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbduxfastsub_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.usbduxfastsub_s* %0, %struct.usbduxfastsub_s** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FIRMWARE_MAX_LEN, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %19 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %13
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 %26, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %33 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %25
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i32* %40, i32* %41, i32 %42)
  %44 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %45 = call i32 @usbduxfastsub_stop(%struct.usbduxfastsub_s* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %50 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %90

57:                                               ; preds = %39
  %58 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @usbduxfastsub_upload(%struct.usbduxfastsub_s* %58, i32* %59, i32 0, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %66 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %90

73:                                               ; preds = %57
  %74 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %75 = call i32 @usbduxfastsub_start(%struct.usbduxfastsub_s* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %80 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @kfree(i32* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %73
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @kfree(i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %78, %64, %48, %31, %17, %12
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usbduxfastsub_stop(%struct.usbduxfastsub_s*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usbduxfastsub_upload(%struct.usbduxfastsub_s*, i32*, i32, i32) #1

declare dso_local i32 @usbduxfastsub_start(%struct.usbduxfastsub_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
