; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmidi_device = type { i32, i32, i32, %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"can't change configurations\0A\00", align 1
@ESPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmidi_device*, i32, i32)* @gmidi_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmidi_set_config(%struct.gmidi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmidi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_gadget*, align 8
  %10 = alloca i8*, align 8
  store %struct.gmidi_device* %0, %struct.gmidi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %12 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %11, i32 0, i32 3
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %12, align 8
  store %struct.usb_gadget* %13, %struct.usb_gadget** %9, align 8
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %15 = call i64 @gadget_is_sa1100(%struct.usb_gadget* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %19 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %24 = call i32 @ERROR(%struct.gmidi_device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ESPIPE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %79

27:                                               ; preds = %17, %3
  %28 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %29 = call i32 @gmidi_reset_config(%struct.gmidi_device* %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %35 [
    i32 131, label %31
    i32 0, label %38
  ]

31:                                               ; preds = %27
  %32 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @set_gmidi_config(%struct.gmidi_device* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %27, %35
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %45 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %50 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %48, %40
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %61 = call i32 @gmidi_reset_config(%struct.gmidi_device* %60)
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %64 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %69 [
    i32 128, label %66
    i32 130, label %67
    i32 129, label %68
  ]

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %70

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %70

68:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %70

69:                                               ; preds = %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %70

70:                                               ; preds = %69, %68, %67, %66
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %73 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @INFO(%struct.gmidi_device* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %70, %59
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %38, %22
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @gadget_is_sa1100(%struct.usb_gadget*) #1

declare dso_local i32 @ERROR(%struct.gmidi_device*, i8*) #1

declare dso_local i32 @gmidi_reset_config(%struct.gmidi_device*) #1

declare dso_local i32 @set_gmidi_config(%struct.gmidi_device*, i32) #1

declare dso_local i32 @INFO(%struct.gmidi_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
