; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_simple_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_simple_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.usb_device*, %struct.completion* }
%struct.usb_device = type { i32 }
%struct.completion = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s failed, iterations left %d, status %d (not %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.urb*, i32, i32, i32, i8*)* @simple_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_io(%struct.usbtest_dev* %0, %struct.urb* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.completion, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store %struct.urb* %1, %struct.urb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load %struct.urb*, %struct.urb** %8, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 3
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %13, align 8
  %21 = load %struct.urb*, %struct.urb** %8, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.urb*, %struct.urb** %8, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 4
  store %struct.completion* %15, %struct.completion** %25, align 8
  br label %26

26:                                               ; preds = %100, %6
  %27 = load i32, i32* %16, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = icmp sgt i32 %30, 0
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %101

35:                                               ; preds = %33
  %36 = call i32 @init_completion(%struct.completion* %15)
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @usb_pipeout(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.urb*, %struct.urb** %8, align 8
  %44 = call i32 @simple_fill_buf(%struct.urb* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.urb*, %struct.urb** %8, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @usb_submit_urb(%struct.urb* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %101

51:                                               ; preds = %45
  %52 = call i32 @wait_for_completion(%struct.completion* %15)
  %53 = load %struct.urb*, %struct.urb** %8, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 3
  store %struct.usb_device* %56, %struct.usb_device** %58, align 8
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @usb_pipein(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %69 = load %struct.urb*, %struct.urb** %8, align 8
  %70 = call i32 @simple_check_buf(%struct.usbtest_dev* %68, %struct.urb* %69)
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %67, %61, %51
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = load %struct.urb*, %struct.urb** %8, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %17, align 4
  %83 = srem i32 %82, %81
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %14, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %94, %74
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.urb*, %struct.urb** %8, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %71
  br label %26

101:                                              ; preds = %50, %33
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.urb*, %struct.urb** %8, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %111, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %108, %101
  %117 = load i32, i32* %16, align 4
  ret i32 %117
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @simple_fill_buf(%struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @simple_check_buf(%struct.usbtest_dev*, %struct.urb*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
