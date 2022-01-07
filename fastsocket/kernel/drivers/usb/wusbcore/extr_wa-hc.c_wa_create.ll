; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-hc.c_wa_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-hc.c_wa_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WA-CDS: can't initialize notif endpoint: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_create(%struct.wahc* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.wahc*, %struct.wahc** %4, align 8
  %11 = call i32 @wa_rpipes_create(%struct.wahc* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wahc*, %struct.wahc** %4, align 8
  %24 = getelementptr inbounds %struct.wahc, %struct.wahc* %23, i32 0, i32 2
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.wahc*, %struct.wahc** %4, align 8
  %33 = getelementptr inbounds %struct.wahc, %struct.wahc* %32, i32 0, i32 3
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.wahc*, %struct.wahc** %4, align 8
  %35 = getelementptr inbounds %struct.wahc, %struct.wahc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.wahc*, %struct.wahc** %4, align 8
  %41 = getelementptr inbounds %struct.wahc, %struct.wahc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wahc*, %struct.wahc** %4, align 8
  %43 = getelementptr inbounds %struct.wahc, %struct.wahc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @kmalloc(i32 %44, i32 %45)
  %47 = load %struct.wahc*, %struct.wahc** %4, align 8
  %48 = getelementptr inbounds %struct.wahc, %struct.wahc* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.wahc*, %struct.wahc** %4, align 8
  %50 = getelementptr inbounds %struct.wahc, %struct.wahc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %15
  br label %70

54:                                               ; preds = %15
  %55 = load %struct.wahc*, %struct.wahc** %4, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %57 = call i32 @wa_nep_create(%struct.wahc* %55, %struct.usb_interface* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %75

65:                                               ; preds = %60
  %66 = load %struct.wahc*, %struct.wahc** %4, align 8
  %67 = getelementptr inbounds %struct.wahc, %struct.wahc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  br label %70

70:                                               ; preds = %65, %53
  %71 = load %struct.wahc*, %struct.wahc** %4, align 8
  %72 = call i32 @wa_rpipes_destroy(%struct.wahc* %71)
  br label %73

73:                                               ; preds = %70, %14
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %64
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @wa_rpipes_create(%struct.wahc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @wa_nep_create(%struct.wahc*, %struct.usb_interface*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wa_rpipes_destroy(%struct.wahc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
