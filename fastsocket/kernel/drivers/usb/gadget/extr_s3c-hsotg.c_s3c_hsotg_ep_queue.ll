; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_ep_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.s3c_hsotg_req = type { i32 }
%struct.s3c_hsotg_ep = type { i32, i32, %struct.s3c_hsotg* }
%struct.s3c_hsotg = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: req %p: %d@%p, noi=%d, zero=%d, snok=%d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @s3c_hsotg_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsotg_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c_hsotg_req*, align 8
  %9 = alloca %struct.s3c_hsotg_ep*, align 8
  %10 = alloca %struct.s3c_hsotg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = call %struct.s3c_hsotg_req* @our_req(%struct.usb_request* %14)
  store %struct.s3c_hsotg_req* %15, %struct.s3c_hsotg_req** %8, align 8
  %16 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %17 = call %struct.s3c_hsotg_ep* @our_ep(%struct.usb_ep* %16)
  store %struct.s3c_hsotg_ep* %17, %struct.s3c_hsotg_ep** %9, align 8
  %18 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %19 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %18, i32 0, i32 2
  %20 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %19, align 8
  store %struct.s3c_hsotg* %20, %struct.s3c_hsotg** %10, align 8
  %21 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %10, align 8
  %22 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %25 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %41 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.usb_request* %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %8, align 8
  %45 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @EINPROGRESS, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %52 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %10, align 8
  %54 = call i64 @using_dma(%struct.s3c_hsotg* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %3
  %57 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %10, align 8
  %58 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %59 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %60 = call i32 @s3c_hsotg_map_dma(%struct.s3c_hsotg* %57, %struct.s3c_hsotg_ep* %58, %struct.usb_request* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %91

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %68 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %67, i32 0, i32 0
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %72 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %71, i32 0, i32 1
  %73 = call i32 @list_empty(i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %8, align 8
  %75 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %74, i32 0, i32 0
  %76 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %77 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %76, i32 0, i32 1
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %10, align 8
  %83 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %84 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %8, align 8
  %85 = call i32 @s3c_hsotg_start_req(%struct.s3c_hsotg* %82, %struct.s3c_hsotg_ep* %83, %struct.s3c_hsotg_req* %84, i32 0)
  br label %86

86:                                               ; preds = %81, %66
  %87 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %9, align 8
  %88 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %87, i32 0, i32 0
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %63
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.s3c_hsotg_req* @our_req(%struct.usb_request*) #1

declare dso_local %struct.s3c_hsotg_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.usb_request*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @using_dma(%struct.s3c_hsotg*) #1

declare dso_local i32 @s3c_hsotg_map_dma(%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*, %struct.usb_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @s3c_hsotg_start_req(%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_req*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
