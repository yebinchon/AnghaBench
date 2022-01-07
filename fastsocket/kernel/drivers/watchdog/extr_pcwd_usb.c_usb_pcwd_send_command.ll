; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pcwd_private = type { i8, i8, i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@HID_DT_REPORT = common dso_local global i32 0, align 4
@USB_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"usb_pcwd_send_command: error in usb_control_msg for cmd 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_pcwd_private*, i8, i8*, i8*)* @usb_pcwd_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_pcwd_private*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  store %struct.usb_pcwd_private* %0, %struct.usb_pcwd_private** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %14 = icmp ne %struct.usb_pcwd_private* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %17 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %111

21:                                               ; preds = %15
  %22 = load i8, i8* %7, align 1
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 2
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8 zeroext %34, i8 zeroext %36, i8 zeroext %38)
  %40 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %41 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %40, i32 0, i32 3
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %44 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %47 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_sndctrlpipe(i32 %48, i32 0)
  %50 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %51 = load i32, i32* @HID_DT_REPORT, align 4
  %52 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %53 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %56 = load i32, i32* @USB_COMMAND_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(i32 %45, i32 %49, i32 %50, i32 %51, i32 512, i32 %54, i8* %55, i32 6, i32 %56)
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 6
  br i1 %59, label %60, label %67

60:                                               ; preds = %21
  %61 = load i8, i8* %7, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %61, i8 zeroext %63, i8 zeroext %65)
  br label %67

67:                                               ; preds = %60, %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @USB_COMMAND_TIMEOUT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %89

78:                                               ; preds = %76
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %81 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %80, i32 0, i32 3
  %82 = call i64 @atomic_read(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %68

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %96 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %95, i32 0, i32 0
  %97 = load i8, i8* %96, align 4
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %102 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %8, align 8
  store i8 %103, i8* %104, align 1
  %105 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %106 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %105, i32 0, i32 2
  %107 = load i8, i8* %106, align 2
  %108 = load i8*, i8** %9, align 8
  store i8 %107, i8* %108, align 1
  br label %109

109:                                              ; preds = %100, %92, %89
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %20
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @dbg(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
