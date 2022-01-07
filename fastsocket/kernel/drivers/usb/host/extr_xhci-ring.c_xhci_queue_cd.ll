; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_queue_cd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_queue_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_command = type { i32 }
%union.xhci_trb = type { i32 }
%struct.xhci_cd = type { i32, %union.xhci_trb*, %struct.xhci_command* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_command*, %union.xhci_trb*)* @xhci_queue_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_queue_cd(%struct.xhci_hcd* %0, %struct.xhci_command* %1, %union.xhci_trb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_command*, align 8
  %7 = alloca %union.xhci_trb*, align 8
  %8 = alloca %struct.xhci_cd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_command* %1, %struct.xhci_command** %6, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %7, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.xhci_cd* @kzalloc(i32 24, i32 %9)
  store %struct.xhci_cd* %10, %struct.xhci_cd** %8, align 8
  %11 = load %struct.xhci_cd*, %struct.xhci_cd** %8, align 8
  %12 = icmp ne %struct.xhci_cd* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.xhci_cd*, %struct.xhci_cd** %8, align 8
  %18 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %21 = load %struct.xhci_cd*, %struct.xhci_cd** %8, align 8
  %22 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %21, i32 0, i32 2
  store %struct.xhci_command* %20, %struct.xhci_command** %22, align 8
  %23 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %24 = load %struct.xhci_cd*, %struct.xhci_cd** %8, align 8
  %25 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %24, i32 0, i32 1
  store %union.xhci_trb* %23, %union.xhci_trb** %25, align 8
  %26 = load %struct.xhci_cd*, %struct.xhci_cd** %8, align 8
  %27 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %26, i32 0, i32 0
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.xhci_cd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
