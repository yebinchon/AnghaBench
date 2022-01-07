; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_outermost_region_in_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_outermost_region_in_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32 }

@RESX_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.function*, i32, i32)* @find_outermost_region_in_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_outermost_region_in_block(%struct.function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.function* %0, %struct.function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bsi_start(i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @bsi_end_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bsi_stmt(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @RESX_EXPR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  %27 = call i32 @TREE_INT_CST_LOW(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.function*, %struct.function** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @lookup_stmt_eh_region_fn(%struct.function* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %6, align 4
  br label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.function*, %struct.function** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @eh_region_outermost(%struct.function* %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  br label %53

53:                                               ; preds = %44, %40
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55
  %57 = call i32 @bsi_next(i32* %7)
  br label %12

58:                                               ; preds = %12
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @lookup_stmt_eh_region_fn(%struct.function*, i32) #1

declare dso_local i32 @eh_region_outermost(%struct.function*, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
