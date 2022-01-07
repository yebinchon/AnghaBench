; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_alloc_spill_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_alloc_spill_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_reg_info = type { i64, i64 }

@UNW_WHERE_SPILL_HOME = common dso_local global i64 0, align 8
@UNW_WHERE_PSPREL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, %struct.unw_reg_info*, %struct.unw_reg_info*)* @alloc_spill_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_spill_area(i64* %0, i64 %1, %struct.unw_reg_info* %2, %struct.unw_reg_info* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.unw_reg_info*, align 8
  %8 = alloca %struct.unw_reg_info*, align 8
  %9 = alloca %struct.unw_reg_info*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.unw_reg_info* %2, %struct.unw_reg_info** %7, align 8
  store %struct.unw_reg_info* %3, %struct.unw_reg_info** %8, align 8
  %10 = load %struct.unw_reg_info*, %struct.unw_reg_info** %8, align 8
  store %struct.unw_reg_info* %10, %struct.unw_reg_info** %9, align 8
  br label %11

11:                                               ; preds = %34, %4
  %12 = load %struct.unw_reg_info*, %struct.unw_reg_info** %9, align 8
  %13 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %14 = icmp uge %struct.unw_reg_info* %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.unw_reg_info*, %struct.unw_reg_info** %9, align 8
  %17 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNW_WHERE_SPILL_HOME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i64, i64* @UNW_WHERE_PSPREL, align 8
  %23 = load %struct.unw_reg_info*, %struct.unw_reg_info** %9, align 8
  %24 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.unw_reg_info*, %struct.unw_reg_info** %9, align 8
  %32 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %21, %15
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.unw_reg_info*, %struct.unw_reg_info** %9, align 8
  %36 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %35, i32 -1
  store %struct.unw_reg_info* %36, %struct.unw_reg_info** %9, align 8
  br label %11

37:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
