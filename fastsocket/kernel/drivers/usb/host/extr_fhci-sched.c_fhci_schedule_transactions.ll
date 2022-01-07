; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_fhci_schedule_transactions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_fhci_schedule_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@FRAME_END_TRANSMISSION = common dso_local global i32 0, align 4
@FHCI_TF_ISO = common dso_local global i32 0, align 4
@FHCI_TF_INTR = common dso_local global i32 0, align 4
@FHCI_TF_CTRL = common dso_local global i32 0, align 4
@FHCI_TF_BULK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_schedule_transactions(%struct.fhci_usb* %0) #0 {
  %2 = alloca %struct.fhci_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.fhci_usb* %0, %struct.fhci_usb** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %5 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FRAME_END_TRANSMISSION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %14 = call i64 @rotate_frames(%struct.fhci_usb* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %68

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %20 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FRAME_END_TRANSMISSION, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %68

28:                                               ; preds = %18
  %29 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %30 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %37 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %38 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* @FHCI_TF_ISO, align 4
  %42 = call i32 @scan_ed_list(%struct.fhci_usb* %36, i32* %40, i32 %41)
  %43 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %44 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %45 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* @FHCI_TF_INTR, align 4
  %49 = call i32 @scan_ed_list(%struct.fhci_usb* %43, i32* %47, i32 %48)
  %50 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %51 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %52 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* @FHCI_TF_CTRL, align 4
  %56 = call i32 @scan_ed_list(%struct.fhci_usb* %50, i32* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %35, %28
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %62 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %63 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* @FHCI_TF_BULK, align 4
  %67 = call i32 @scan_ed_list(%struct.fhci_usb* %61, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %16, %27, %60, %57
  ret void
}

declare dso_local i64 @rotate_frames(%struct.fhci_usb*) #1

declare dso_local i32 @scan_ed_list(%struct.fhci_usb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
