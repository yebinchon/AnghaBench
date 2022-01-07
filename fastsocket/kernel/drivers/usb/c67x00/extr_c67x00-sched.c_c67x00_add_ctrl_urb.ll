; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_ctrl_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_ctrl_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.urb = type { i32, i32, i32, i32, i32* }

@USB_PID_SETUP = common dso_local global i32 0, align 4
@USB_PID_OUT = common dso_local global i32 0, align 4
@USB_PID_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*)* @c67x00_add_ctrl_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_add_ctrl_urb(%struct.c67x00_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.urb*, %struct.urb** %5, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %11 [
    i32 129, label %12
    i32 130, label %39
    i32 128, label %54
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %2, %11
  %13 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @USB_PID_SETUP, align 4
  %19 = call i32 @c67x00_create_td(%struct.c67x00_hcd* %13, %struct.urb* %14, i32* %17, i32 8, i32 %18, i32 0, i32 129)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %12
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  store i32 129, i32* %26, align 8
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_pipeendpoint(i32 %32)
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_pipeout(i32 %36)
  %38 = call i32 @usb_settoggle(i32 %29, i32 %33, i32 %37, i32 1)
  br label %75

39:                                               ; preds = %2
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = call i32 @c67x00_add_data_urb(%struct.c67x00_hcd* %45, %struct.urb* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %76

52:                                               ; preds = %44
  br label %75

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %2, %53
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_pipeout(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @USB_PID_OUT, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @USB_PID_IN, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %7, align 4
  %66 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @c67x00_create_td(%struct.c67x00_hcd* %66, %struct.urb* %67, i32* null, i32 0, i32 %68, i32 1, i32 128)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %52, %24
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72, %50, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @c67x00_create_td(%struct.c67x00_hcd*, %struct.urb*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @c67x00_add_data_urb(%struct.c67x00_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
