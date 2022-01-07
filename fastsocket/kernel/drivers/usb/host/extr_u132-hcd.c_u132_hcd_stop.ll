; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"u132 device %p(hcd=%p) has been removed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"device hcd=%p is being removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @u132_hcd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.u132*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %4)
  store %struct.u132* %5, %struct.u132** %3, align 8
  %6 = load %struct.u132*, %struct.u132** %3, align 8
  %7 = getelementptr inbounds %struct.u132, %struct.u132* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.u132*, %struct.u132** %3, align 8
  %12 = getelementptr inbounds %struct.u132, %struct.u132* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.u132*, %struct.u132** %3, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = load %struct.u132*, %struct.u132** %3, align 8
  %18 = getelementptr inbounds %struct.u132, %struct.u132* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32*, i8*, %struct.u132*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.u132* %15, %struct.usb_hcd* %16, i32 %19)
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.u132*, %struct.u132** %3, align 8
  %23 = getelementptr inbounds %struct.u132, %struct.u132* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.u132*, %struct.u132** %3, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %32 = bitcast %struct.usb_hcd* %31 to %struct.u132*
  %33 = call i32 (i32*, i8*, %struct.u132*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.u132* %32)
  br label %44

34:                                               ; preds = %21
  %35 = load %struct.u132*, %struct.u132** %3, align 8
  %36 = getelementptr inbounds %struct.u132, %struct.u132* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = call i32 @msleep(i32 100)
  %39 = load %struct.u132*, %struct.u132** %3, align 8
  %40 = call i32 @u132_power(%struct.u132* %39, i32 0)
  %41 = load %struct.u132*, %struct.u132** %3, align 8
  %42 = getelementptr inbounds %struct.u132, %struct.u132* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %34, %26
  br label %45

45:                                               ; preds = %44, %10
  ret void
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.u132*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @u132_power(%struct.u132*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
