; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_successful_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_successful_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.c67x00_td = type { i32, i32, %struct.urb* }
%struct.urb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_handle_successful_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_handle_successful_td(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.c67x00_td*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %4, align 8
  %6 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %7 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %6, i32 0, i32 2
  %8 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %8, %struct.urb** %5, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = icmp ne %struct.urb* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %14 = call i64 @td_actual_bytes(%struct.c67x00_td* %13)
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %22 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_pipetype(i32 %23)
  switch i32 %24, label %71 [
    i32 131, label %25
    i32 130, label %58
    i32 132, label %58
  ]

25:                                               ; preds = %12
  %26 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %27 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %57 [
    i32 129, label %29
    i32 133, label %40
    i32 128, label %51
  ]

29:                                               ; preds = %25
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 133, i32 128
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %57

40:                                               ; preds = %25
  %41 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %42 = call i32 @c67x00_end_of_data(%struct.c67x00_td* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  store i32 128, i32* %46, align 4
  %47 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %48 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %49 = call i32 @c67x00_clear_pipe(%struct.c67x00_hcd* %47, %struct.c67x00_td* %48)
  br label %50

50:                                               ; preds = %44, %40
  br label %57

51:                                               ; preds = %25
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = call i32 @c67x00_giveback_urb(%struct.c67x00_hcd* %54, %struct.urb* %55, i32 0)
  br label %57

57:                                               ; preds = %25, %51, %50, %29
  br label %71

58:                                               ; preds = %12, %12
  %59 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %60 = call i32 @c67x00_end_of_data(%struct.c67x00_td* %59)
  %61 = call i32 @unlikely(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %65 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %66 = call i32 @c67x00_clear_pipe(%struct.c67x00_hcd* %64, %struct.c67x00_td* %65)
  %67 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = call i32 @c67x00_giveback_urb(%struct.c67x00_hcd* %67, %struct.urb* %68, i32 0)
  br label %70

70:                                               ; preds = %63, %58
  br label %71

71:                                               ; preds = %11, %12, %70, %57
  ret void
}

declare dso_local i64 @td_actual_bytes(%struct.c67x00_td*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @c67x00_end_of_data(%struct.c67x00_td*) #1

declare dso_local i32 @c67x00_clear_pipe(%struct.c67x00_hcd*, %struct.c67x00_td*) #1

declare dso_local i32 @c67x00_giveback_urb(%struct.c67x00_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
