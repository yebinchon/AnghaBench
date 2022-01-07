; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_get_xtal_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_get_xtal_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_entries = type { i32, %struct.w100_pll_info* }
%struct.w100_pll_info = type { i32 }

@w100_pll_tables = common dso_local global %struct.pll_entries* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.w100_pll_info* @w100_get_xtal_table(i32 %0) #0 {
  %2 = alloca %struct.w100_pll_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pll_entries*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.pll_entries*, %struct.pll_entries** @w100_pll_tables, align 8
  store %struct.pll_entries* %5, %struct.pll_entries** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pll_entries*, %struct.pll_entries** %4, align 8
  %9 = getelementptr inbounds %struct.pll_entries, %struct.pll_entries* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load %struct.pll_entries*, %struct.pll_entries** %4, align 8
  %14 = getelementptr inbounds %struct.pll_entries, %struct.pll_entries* %13, i32 0, i32 1
  %15 = load %struct.w100_pll_info*, %struct.w100_pll_info** %14, align 8
  store %struct.w100_pll_info* %15, %struct.w100_pll_info** %2, align 8
  br label %25

16:                                               ; preds = %6
  %17 = load %struct.pll_entries*, %struct.pll_entries** %4, align 8
  %18 = getelementptr inbounds %struct.pll_entries, %struct.pll_entries* %17, i32 1
  store %struct.pll_entries* %18, %struct.pll_entries** %4, align 8
  br label %19

19:                                               ; preds = %16
  %20 = load %struct.pll_entries*, %struct.pll_entries** %4, align 8
  %21 = getelementptr inbounds %struct.pll_entries, %struct.pll_entries* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %6, label %24

24:                                               ; preds = %19
  store %struct.w100_pll_info* null, %struct.w100_pll_info** %2, align 8
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.w100_pll_info*, %struct.w100_pll_info** %2, align 8
  ret %struct.w100_pll_info* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
