; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ch341_configure()\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*)* @ch341_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_configure(%struct.usb_device* %0, %struct.ch341_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %5, align 8
  store i32 8, i32* %8, align 4
  %9 = call i32 @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 8, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @ch341_control_in(%struct.usb_device* %18, i32 95, i32 0, i32 0, i8* %19, i32 8)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %83

24:                                               ; preds = %17
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = call i32 @ch341_control_out(%struct.usb_device* %25, i32 161, i32 0, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %83

30:                                               ; preds = %24
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %33 = call i32 @ch341_set_baudrate(%struct.usb_device* %31, %struct.ch341_private* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %83

37:                                               ; preds = %30
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @ch341_control_in(%struct.usb_device* %38, i32 149, i32 9496, i32 0, i8* %39, i32 8)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %83

44:                                               ; preds = %37
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = call i32 @ch341_control_out(%struct.usb_device* %45, i32 154, i32 9496, i32 80)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %83

50:                                               ; preds = %44
  %51 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %52 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %53 = call i32 @ch341_get_status(%struct.usb_device* %51, %struct.ch341_private* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %83

57:                                               ; preds = %50
  %58 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %59 = call i32 @ch341_control_out(%struct.usb_device* %58, i32 161, i32 20511, i32 55562)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %83

63:                                               ; preds = %57
  %64 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %65 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %66 = call i32 @ch341_set_baudrate(%struct.usb_device* %64, %struct.ch341_private* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %83

70:                                               ; preds = %63
  %71 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %72 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %73 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ch341_set_handshake(%struct.usb_device* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %81 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %82 = call i32 @ch341_get_status(%struct.usb_device* %80, %struct.ch341_private* %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %78, %69, %62, %56, %49, %43, %36, %29, %23
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ch341_control_in(%struct.usb_device*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ch341_control_out(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @ch341_set_baudrate(%struct.usb_device*, %struct.ch341_private*) #1

declare dso_local i32 @ch341_get_status(%struct.usb_device*, %struct.ch341_private*) #1

declare dso_local i32 @ch341_set_handshake(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
