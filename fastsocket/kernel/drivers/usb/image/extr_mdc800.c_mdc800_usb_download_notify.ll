; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_download_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_download_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.mdc800_data* }
%struct.mdc800_data = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request bytes fails (status:%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mdc800_usb_download_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc800_usb_download_notify(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.mdc800_data*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 2
  %7 = load %struct.mdc800_data*, %struct.mdc800_data** %6, align 8
  store %struct.mdc800_data* %7, %struct.mdc800_data** %3, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %15 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 64)
  %21 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %22 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %21, i32 0, i32 0
  store i32 64, i32* %22, align 8
  %23 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %24 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %26 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 64
  store i64 %28, i64* %26, align 8
  %29 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %30 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %13
  %34 = load i32, i32* @READY, align 4
  %35 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %36 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %13
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %40 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %37
  %46 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %47 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %49 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %48, i32 0, i32 3
  %50 = call i32 @wake_up(i32* %49)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
