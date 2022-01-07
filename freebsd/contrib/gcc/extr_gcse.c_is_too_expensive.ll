; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_is_too_expensive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_is_too_expensive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_edges = common dso_local global i32 0, align 4
@n_basic_blocks = common dso_local global i32 0, align 4
@OPT_Wdisabled_optimization = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: %d basic blocks and %d edges/basic block\00", align 1
@MAX_GCSE_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: %d basic blocks and %d registers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_too_expensive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_too_expensive(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @n_edges, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %6 = mul nsw i32 %5, 4
  %7 = add nsw i32 20000, %6
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @OPT_Wdisabled_optimization, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @n_basic_blocks, align 4
  %13 = load i32, i32* @n_edges, align 4
  %14 = load i32, i32* @n_basic_blocks, align 4
  %15 = sdiv i32 %13, %14
  %16 = call i32 @warning(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12, i32 %15)
  store i32 1, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @n_basic_blocks, align 4
  %19 = call i32 (...) @max_reg_num()
  %20 = call i32 @SBITMAP_SET_SIZE(i32 %19)
  %21 = mul nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = load i32, i32* @MAX_GCSE_MEMORY, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i32, i32* @OPT_Wdisabled_optimization, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @n_basic_blocks, align 4
  %31 = call i32 (...) @max_reg_num()
  %32 = call i32 @warning(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30, i32 %31)
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %27, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @warning(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @SBITMAP_SET_SIZE(i32) #1

declare dso_local i32 @max_reg_num(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
