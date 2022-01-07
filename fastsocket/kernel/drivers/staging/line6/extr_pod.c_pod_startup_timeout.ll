; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_startup_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_startup_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_pod = type { %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pod_startup_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pod_startup_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6_pod*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.usb_line6_pod*
  store %struct.usb_line6_pod* %6, %struct.usb_line6_pod** %4, align 8
  %7 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %8 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %14 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 2, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %12
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %21 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %27 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = and i32 %28, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %25
  store i32 2, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %47 [
    i32 1, label %38
    i32 2, label %44
  ]

38:                                               ; preds = %36
  %39 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %40 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %39, i32 0, i32 0
  %41 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %42 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %41, i32 0, i32 1
  %43 = call i32 @line6_dump_request_async(%struct.TYPE_3__* %40, i32* %42, i32 0)
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %46 = call i32 @pod_version_request_async(%struct.usb_line6_pod* %45)
  br label %48

47:                                               ; preds = %36
  br label %53

48:                                               ; preds = %44, %38
  %49 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %50 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %49, i32 0, i32 0
  %51 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %52 = call i32 @line6_startup_delayed(%struct.TYPE_3__* %50, i32 1, void (i64)* @pod_startup_timeout, %struct.usb_line6_pod* %51)
  br label %53

53:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @line6_dump_request_async(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @pod_version_request_async(%struct.usb_line6_pod*) #1

declare dso_local i32 @line6_startup_delayed(%struct.TYPE_3__*, i32, void (i64)*, %struct.usb_line6_pod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
