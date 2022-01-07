; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_period.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv = type { i64 }

@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iv*)* @iv_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iv_period(%struct.iv* %0) #0 {
  %2 = alloca %struct.iv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.iv* %0, %struct.iv** %2, align 8
  %7 = load %struct.iv*, %struct.iv** %2, align 8
  %8 = getelementptr inbounds %struct.iv, %struct.iv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @INTEGER_CST, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ false, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @num_ending_zeros(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @TREE_TYPE(i64 %23)
  %25 = call i64 @unsigned_type_for(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TYPE_PRECISION(i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @tree_low_cst(i64 %29, i32 1)
  %31 = sub nsw i64 %28, %30
  %32 = call i64 @build_low_bits_mask(i64 %26, i64 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @num_ending_zeros(i64) #1

declare dso_local i64 @unsigned_type_for(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @build_low_bits_mask(i64, i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @tree_low_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
