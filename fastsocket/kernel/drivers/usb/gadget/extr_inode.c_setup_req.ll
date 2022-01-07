; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.dev_data* }
%struct.dev_data = type { i32*, i64 }
%struct.usb_request = type { i32, i64, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"ep0 request busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep0_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_req(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %9, i32 0, i32 0
  %11 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  store %struct.dev_data* %11, %struct.dev_data** %8, align 8
  %12 = load %struct.dev_data*, %struct.dev_data** %8, align 8
  %13 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.dev_data*, %struct.dev_data** %8, align 8
  %18 = call i32 @DBG(%struct.dev_data* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i32* @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.dev_data*, %struct.dev_data** %8, align 8
  %38 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %41 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %31
  %45 = load i32, i32* @ep0_complete, align 4
  %46 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %47 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %50 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %52 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %44, %36, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @DBG(%struct.dev_data*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
