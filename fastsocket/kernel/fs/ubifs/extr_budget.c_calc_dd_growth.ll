; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_calc_dd_growth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_calc_dd_growth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64 }
%struct.ubifs_budget_req = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_budget_req*)* @calc_dd_growth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_dd_growth(%struct.ubifs_info* %0, %struct.ubifs_budget_req* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_budget_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_budget_req* %1, %struct.ubifs_budget_req** %4, align 8
  %6 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %7 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 %24, %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %21, %15
  %33 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
