; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32 }

@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@USB_DT_STRING = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c"wrong descriptor type %02x for string %d (\22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_string(%struct.usb_device* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EHOSTUNREACH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %98

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23, %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %98

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @GFP_NOIO, align 4
  %36 = call i8* @kmalloc(i32 256, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @usb_get_langid(%struct.usb_device* %43, i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %94

49:                                               ; preds = %42
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @usb_string_sub(%struct.usb_device* %50, i32 %53, i32 %54, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %94

60:                                               ; preds = %49
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 2
  %68 = sdiv i32 %67, 2
  %69 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @utf16s_to_utf8s(i32* %65, i32 %68, i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @USB_DT_STRING, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %60
  %85 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 1
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 zeroext %89, i32 %90, i8* %91)
  br label %93

93:                                               ; preds = %84, %60
  br label %94

94:                                               ; preds = %93, %59, %48
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %39, %29, %17
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_langid(%struct.usb_device*, i8*) #1

declare dso_local i32 @usb_string_sub(%struct.usb_device*, i32, i32, i8*) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
