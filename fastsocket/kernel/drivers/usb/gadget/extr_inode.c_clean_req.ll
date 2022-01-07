; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_clean_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_clean_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.dev_data* }
%struct.dev_data = type { i64, i64 }
%struct.usb_request = type { i64, i32, i32 }

@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@epio_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @clean_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_req(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.dev_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %6, i32 0, i32 0
  %8 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  store %struct.dev_data* %8, %struct.dev_data** %5, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %13 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %18 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kfree(i64 %19)
  %21 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %22 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %25 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %27 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %28 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %16, %2
  %30 = load i32, i32* @epio_complete, align 4
  %31 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %34 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
