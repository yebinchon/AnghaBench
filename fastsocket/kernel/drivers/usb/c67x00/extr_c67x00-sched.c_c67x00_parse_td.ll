; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_parse_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_parse_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.c67x00_td = type { %struct.c67x00_td*, i32, i32 }

@CY_TD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_parse_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_parse_td(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.c67x00_td*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %4, align 8
  %5 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %11 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %14 = load i64, i64* @CY_TD_SIZE, align 8
  %15 = call i32 @c67x00_ll_read_mem_le16(i32 %9, i32 %12, %struct.c67x00_td* %13, i64 %14)
  %16 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %17 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @usb_pipein(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %23 = call i64 @td_actual_bytes(%struct.c67x00_td* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %32 = call i32 @td_ly_base_addr(%struct.c67x00_td* %31)
  %33 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %34 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %33, i32 0, i32 0
  %35 = load %struct.c67x00_td*, %struct.c67x00_td** %34, align 8
  %36 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %37 = call i64 @td_actual_bytes(%struct.c67x00_td* %36)
  %38 = call i32 @c67x00_ll_read_mem_le16(i32 %30, i32 %32, %struct.c67x00_td* %35, i64 %37)
  br label %39

39:                                               ; preds = %25, %21, %2
  ret void
}

declare dso_local i32 @c67x00_ll_read_mem_le16(i32, i32, %struct.c67x00_td*, i64) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @td_actual_bytes(%struct.c67x00_td*) #1

declare dso_local i32 @td_ly_base_addr(%struct.c67x00_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
