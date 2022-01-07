; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not get a urb for the reset sequence\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"could not get a buffer for the reset sequence\0A\00", align 1
@ftdi_elan_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed to submit urb containing the reset sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_synchronize_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_synchronize_reset(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = icmp ne %struct.urb* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %15 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %23 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = call i8* @usb_buffer_alloc(%struct.TYPE_5__* %24, i32 %25, i32 %26, i32* %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %34 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = call i32 @usb_free_urb(%struct.urb* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %111

42:                                               ; preds = %21
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 85, i8* %47, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 -86, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 90, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 -91, i8* %62, align 1
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %65 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %68 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %71 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %69, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ftdi_elan_write_bulk_callback, align 4
  %77 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %78 = call i32 @usb_fill_bulk_urb(%struct.urb* %63, %struct.TYPE_5__* %66, i32 %73, i8* %74, i32 %75, i32 %76, %struct.usb_ftdi* %77)
  %79 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.urb*, %struct.urb** %5, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @usb_submit_urb(%struct.urb* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %42
  %90 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %91 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %96 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.urb*, %struct.urb** %5, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @usb_buffer_free(%struct.TYPE_5__* %97, i32 %98, i8* %99, i32 %102)
  %104 = load %struct.urb*, %struct.urb** %5, align 8
  %105 = call i32 @usb_free_urb(%struct.urb* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %111

108:                                              ; preds = %42
  %109 = load %struct.urb*, %struct.urb** %5, align 8
  %110 = call i32 @usb_free_urb(%struct.urb* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %89, %32, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @usb_buffer_alloc(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_5__*, i32, i8*, i32, i32, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_buffer_free(%struct.TYPE_5__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
