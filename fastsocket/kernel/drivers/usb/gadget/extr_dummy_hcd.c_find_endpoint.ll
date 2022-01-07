; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_find_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_find_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dummy = type { %struct.dummy_ep* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@DUMMY_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dummy_ep* (%struct.dummy*, i32)* @find_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dummy_ep* @find_endpoint(%struct.dummy* %0, i32 %1) #0 {
  %3 = alloca %struct.dummy_ep*, align 8
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dummy_ep*, align 8
  store %struct.dummy* %0, %struct.dummy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dummy*, %struct.dummy** %4, align 8
  %9 = call i32 @is_active(%struct.dummy* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dummy_ep* null, %struct.dummy_ep** %3, align 8
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.dummy*, %struct.dummy** %4, align 8
  %20 = getelementptr inbounds %struct.dummy, %struct.dummy* %19, i32 0, i32 0
  %21 = load %struct.dummy_ep*, %struct.dummy_ep** %20, align 8
  %22 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %21, i64 0
  store %struct.dummy_ep* %22, %struct.dummy_ep** %3, align 8
  br label %55

23:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DUMMY_ENDPOINTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load %struct.dummy*, %struct.dummy** %4, align 8
  %30 = getelementptr inbounds %struct.dummy, %struct.dummy* %29, i32 0, i32 0
  %31 = load %struct.dummy_ep*, %struct.dummy_ep** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %31, i64 %33
  store %struct.dummy_ep* %34, %struct.dummy_ep** %7, align 8
  %35 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %36 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %42 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  store %struct.dummy_ep* %49, %struct.dummy_ep** %3, align 8
  br label %55

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %24

54:                                               ; preds = %24
  store %struct.dummy_ep* null, %struct.dummy_ep** %3, align 8
  br label %55

55:                                               ; preds = %54, %48, %18, %11
  %56 = load %struct.dummy_ep*, %struct.dummy_ep** %3, align 8
  ret %struct.dummy_ep* %56
}

declare dso_local i32 @is_active(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
