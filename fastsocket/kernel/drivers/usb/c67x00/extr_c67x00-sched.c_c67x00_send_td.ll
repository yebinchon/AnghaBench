; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_send_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_send_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.c67x00_td = type { i32, i32, %struct.c67x00_td* }

@TD_PIDEPMASK_PID = common dso_local global i32 0, align 4
@TD_PID_IN = common dso_local global i32 0, align 4
@CY_TD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_send_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_send_td(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.c67x00_td*, align 8
  %5 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %4, align 8
  %6 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %7 = call i32 @td_length(%struct.c67x00_td* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %12 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TD_PIDEPMASK_PID, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @TD_PID_IN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %25 = call i32 @td_ly_base_addr(%struct.c67x00_td* %24)
  %26 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %27 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %26, i32 0, i32 2
  %28 = load %struct.c67x00_td*, %struct.c67x00_td** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @c67x00_ll_write_mem_le16(i32 %23, i32 %25, %struct.c67x00_td* %28, i32 %29)
  br label %31

31:                                               ; preds = %18, %10, %2
  %32 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %38 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %41 = load i32, i32* @CY_TD_SIZE, align 4
  %42 = call i32 @c67x00_ll_write_mem_le16(i32 %36, i32 %39, %struct.c67x00_td* %40, i32 %41)
  ret void
}

declare dso_local i32 @td_length(%struct.c67x00_td*) #1

declare dso_local i32 @c67x00_ll_write_mem_le16(i32, i32, %struct.c67x00_td*, i32) #1

declare dso_local i32 @td_ly_base_addr(%struct.c67x00_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
