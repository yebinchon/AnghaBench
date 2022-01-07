; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.fhci_hcd = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"low level driver config failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"low level driver initialize failed\0A\00", align 1
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @fhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %6)
  store %struct.fhci_hcd* %7, %struct.fhci_hcd** %5, align 8
  %8 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %9 = call i32 @fhci_mem_init(%struct.fhci_hcd* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %14 = call i32 @fhci_err(%struct.fhci_hcd* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %17 = call i32 @fhci_create_lld(%struct.fhci_hcd* %16)
  %18 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %26 = call i32 @fhci_err(%struct.fhci_hcd* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %15
  %30 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %31 = call i32 @fhci_usb_init(%struct.fhci_hcd* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %36 = call i32 @fhci_err(%struct.fhci_hcd* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %70

37:                                               ; preds = %29
  %38 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %39 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %46 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %56 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %61 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @HC_STATE_RUNNING, align 4
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %69 = call i32 @fhci_usb_enable(%struct.fhci_hcd* %68)
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %34, %24, %12
  %71 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %72 = call i32 @fhci_mem_free(%struct.fhci_hcd* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %37
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @fhci_mem_init(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_err(%struct.fhci_hcd*, i8*) #1

declare dso_local i32 @fhci_create_lld(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_usb_init(%struct.fhci_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fhci_usb_enable(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_mem_free(%struct.fhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
