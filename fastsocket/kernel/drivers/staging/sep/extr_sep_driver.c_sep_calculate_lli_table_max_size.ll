; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_calculate_lli_table_max_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_calculate_lli_table_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_lli_entry_t = type { i64 }

@SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sep_lli_entry_t*, i64)* @sep_calculate_lli_table_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_lli_entry_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sep_lli_entry_t* %0, %struct.sep_lli_entry_t** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i32, i32* @SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i1 [ false, %7 ], [ %16, %13 ]
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %20, i64 %21
  %23 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %7

30:                                               ; preds = %17
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
