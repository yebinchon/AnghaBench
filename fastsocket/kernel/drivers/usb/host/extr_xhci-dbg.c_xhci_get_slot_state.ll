; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_get_slot_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_get_slot_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.xhci_slot_ctx = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"enabled/disabled\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"addressed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xhci_get_slot_state(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_container_ctx*, align 8
  %6 = alloca %struct.xhci_slot_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %5, align 8
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %8 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %9 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %7, %struct.xhci_container_ctx* %8)
  store %struct.xhci_slot_ctx* %9, %struct.xhci_slot_ctx** %6, align 8
  %10 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = call i32 @GET_SLOT_STATE(i32 %13)
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 129, label %16
    i32 131, label %17
    i32 130, label %18
  ]

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %20

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %20

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %20

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @GET_SLOT_STATE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
