; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_get_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_event_text = type { i32, i64 }
%struct.urb = type { i32* }
%struct.mon_bus = type { i32 }

@DATA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mon_event_text*, %struct.urb*, i32, i8, %struct.mon_bus*)* @mon_text_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mon_text_get_data(%struct.mon_event_text* %0, %struct.urb* %1, i32 %2, i8 signext %3, %struct.mon_bus* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.mon_event_text*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.mon_bus*, align 8
  store %struct.mon_event_text* %0, %struct.mon_event_text** %7, align 8
  store %struct.urb* %1, %struct.urb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store %struct.mon_bus* %4, %struct.mon_bus** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i8 76, i8* %6, align 1
  br label %53

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @DATA_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DATA_MAX, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.mon_event_text*, %struct.mon_event_text** %7, align 8
  %23 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 67
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 60, i8* %6, align 1
  br label %53

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %21
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 83
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8 62, i8* %6, align 1
  br label %53

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.urb*, %struct.urb** %8, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8 90, i8* %6, align 1
  br label %53

44:                                               ; preds = %38
  %45 = load %struct.mon_event_text*, %struct.mon_event_text** %7, align 8
  %46 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.urb*, %struct.urb** %8, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memcpy(i32 %47, i32* %50, i32 %51)
  store i8 0, i8* %6, align 1
  br label %53

53:                                               ; preds = %44, %43, %36, %30, %14
  %54 = load i8, i8* %6, align 1
  ret i8 %54
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
