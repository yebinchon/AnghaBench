; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cypress_cy7c63.c_vendor_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cypress_cy7c63.c_vendor_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cypress = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CYPRESS_MAX_REQSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Sending usb_control_msg (data: %d)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@CYPRESS_READ_PORT_ID0 = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"READ_PORT0 returned: %d\0A\00", align 1
@CYPRESS_READ_PORT_ID1 = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"READ_PORT1 returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cypress*, i8, i8, i8)* @vendor_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vendor_command(%struct.cypress* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.cypress*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cypress* %0, %struct.cypress** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CYPRESS_MAX_REQSIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.cypress*, %struct.cypress** %5, align 8
  %19 = getelementptr inbounds %struct.cypress, %struct.cypress* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %107

25:                                               ; preds = %4
  %26 = load %struct.cypress*, %struct.cypress** %5, align 8
  %27 = getelementptr inbounds %struct.cypress, %struct.cypress* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8, i8* %8, align 1
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %30)
  %32 = load %struct.cypress*, %struct.cypress** %5, align 8
  %33 = getelementptr inbounds %struct.cypress, %struct.cypress* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @usb_rcvctrlpipe(%struct.TYPE_3__* %34, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.cypress*, %struct.cypress** %5, align 8
  %37 = getelementptr inbounds %struct.cypress, %struct.cypress* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i8, i8* %6, align 1
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @USB_RECIP_OTHER, align 4
  %45 = or i32 %43, %44
  %46 = load i8, i8* %7, align 1
  %47 = load i8, i8* %8, align 1
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @CYPRESS_MAX_REQSIZE, align 4
  %50 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %51 = call i32 @usb_control_msg(%struct.TYPE_3__* %38, i32 %39, i8 zeroext %40, i32 %45, i8 zeroext %46, i8 zeroext %47, i8* %48, i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  switch i32 %53, label %104 [
    i32 128, label %54
  ]

54:                                               ; preds = %25
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @CYPRESS_READ_PORT_ID0, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.cypress*, %struct.cypress** %5, align 8
  %65 = getelementptr inbounds %struct.cypress, %struct.cypress* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %63, i8* %67, align 1
  %68 = load %struct.cypress*, %struct.cypress** %5, align 8
  %69 = getelementptr inbounds %struct.cypress, %struct.cypress* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.cypress*, %struct.cypress** %5, align 8
  %73 = getelementptr inbounds %struct.cypress, %struct.cypress* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %76)
  br label %103

78:                                               ; preds = %54
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @CYPRESS_READ_PORT_ID1, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.cypress*, %struct.cypress** %5, align 8
  %89 = getelementptr inbounds %struct.cypress, %struct.cypress* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %87, i8* %91, align 1
  %92 = load %struct.cypress*, %struct.cypress** %5, align 8
  %93 = getelementptr inbounds %struct.cypress, %struct.cypress* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.cypress*, %struct.cypress** %5, align 8
  %97 = getelementptr inbounds %struct.cypress, %struct.cypress* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %100)
  br label %102

102:                                              ; preds = %84, %78
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %25, %103
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @kfree(i8* %105)
  br label %107

107:                                              ; preds = %104, %17
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i8 zeroext, i32, i8 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
