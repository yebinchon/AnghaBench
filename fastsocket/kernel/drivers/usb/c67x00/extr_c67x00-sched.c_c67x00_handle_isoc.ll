; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.c67x00_td = type { i32, i32, %struct.urb* }
%struct.urb = type { i32, %struct.TYPE_2__*, i32, %struct.c67x00_urb_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.c67x00_urb_priv = type { i32 }

@TD_ERROR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_handle_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_handle_isoc(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.c67x00_td*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.c67x00_urb_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %4, align 8
  %8 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %9 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %8, i32 0, i32 2
  %10 = load %struct.urb*, %struct.urb** %9, align 8
  store %struct.urb* %10, %struct.urb** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = icmp ne %struct.urb* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %16, align 8
  store %struct.c67x00_urb_priv* %17, %struct.c67x00_urb_priv** %6, align 8
  %18 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %19 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %22 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TD_ERROR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %14
  %33 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %34 = call i32 @td_actual_bytes(%struct.c67x00_td* %33)
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %34, i32* %41, align 4
  %42 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %43 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %44 = call i32 @c67x00_td_to_error(%struct.c67x00_hcd* %42, %struct.c67x00_td* %43)
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.urb*, %struct.urb** %5, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %32
  %59 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = call i32 @c67x00_giveback_urb(%struct.c67x00_hcd* %59, %struct.urb* %60, i32 0)
  br label %62

62:                                               ; preds = %13, %58, %32
  ret void
}

declare dso_local i32 @td_actual_bytes(%struct.c67x00_td*) #1

declare dso_local i32 @c67x00_td_to_error(%struct.c67x00_hcd*, %struct.c67x00_td*) #1

declare dso_local i32 @c67x00_giveback_urb(%struct.c67x00_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
