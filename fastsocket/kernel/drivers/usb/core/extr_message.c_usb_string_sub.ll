; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_string_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_string_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_QUIRK_STRING_FETCH_255 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i8*)* @usb_string_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_string_sub(%struct.usb_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @USB_QUIRK_STRING_FETCH_255, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @usb_get_string(%struct.usb_device* %20, i32 %21, i32 %22, i8* %23, i8 zeroext -1)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @usb_get_string(%struct.usb_device* %29, i32 %30, i32 %31, i8* %32, i8 zeroext 2)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @usb_get_string(%struct.usb_device* %37, i32 %38, i32 %39, i8* %40, i8 zeroext %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %36, %28
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @usb_try_string_workarounds(i8* %60, i32* %9)
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 1
  %78 = sub nsw i32 %75, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %74, %46
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  br label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %79
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @usb_get_string(%struct.usb_device*, i32, i32, i8*, i8 zeroext) #1

declare dso_local i32 @usb_try_string_workarounds(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
