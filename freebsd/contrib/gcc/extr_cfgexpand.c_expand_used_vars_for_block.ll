; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_used_vars_for_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_used_vars_for_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_vars_num = common dso_local global i64 0, align 8
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @expand_used_vars_for_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_used_vars_for_block(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @stack_vars_num, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i64 [ 0, %13 ], [ %15, %14 ]
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @BLOCK_VARS(i64 %18)
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %43, %16
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @TREE_USED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @flag_unit_at_a_time, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @TREE_STATIC(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @DECL_PRESERVE_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %23
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @expand_one_var(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34, %30, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %10, align 8
  br label %20

46:                                               ; preds = %20
  %47 = load i64, i64* @stack_vars_num, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @BLOCK_SUBBLOCKS(i64 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %55, %46
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  call void @expand_used_vars_for_block(i64 %54, i32 0)
  br label %55

55:                                               ; preds = %53
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @BLOCK_CHAIN(i64 %56)
  store i64 %57, i64* %10, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i64, i64* @stack_vars_num, align 8
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @resize_stack_vars_conflict(i64 %64)
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %92, %62
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  br label %80

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i64 [ %77, %75 ], [ %79, %78 ]
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %87, %80
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @add_stack_var_conflict(i64 %88, i64 %89)
  br label %82

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %67

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %95, %58
  ret void
}

declare dso_local i64 @BLOCK_VARS(i64) #1

declare dso_local i64 @TREE_USED(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i64 @DECL_PRESERVE_P(i64) #1

declare dso_local i32 @expand_one_var(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BLOCK_SUBBLOCKS(i64) #1

declare dso_local i64 @BLOCK_CHAIN(i64) #1

declare dso_local i32 @resize_stack_vars_conflict(i64) #1

declare dso_local i32 @add_stack_var_conflict(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
