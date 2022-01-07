; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_prefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (i32, i32)* }

@POINTER_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"second argument to %<__builtin_prefetch%> must be a constant\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"invalid second argument to %<__builtin_prefetch%>; using zero\00", align 1
@const0_rtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"third argument to %<__builtin_prefetch%> must be a constant\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"invalid third argument to %<__builtin_prefetch%>; using zero\00", align 1
@CODE_FOR_prefetch = common dso_local global i64 0, align 8
@HAVE_prefetch = common dso_local global i64 0, align 8
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @expand_builtin_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_builtin_prefetch(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* @POINTER_TYPE, align 4
  %11 = call i32 @validate_arglist(i64 %9, i32 %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %99

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @TREE_VALUE(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @TREE_CHAIN(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @TREE_CHAIN(i64 %21)
  %23 = call i64 @TREE_VALUE(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @TREE_CHAIN(i64 %24)
  %26 = call i64 @TREE_CHAIN(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  %31 = call i64 @TREE_CHAIN(i64 %30)
  %32 = call i64 @TREE_VALUE(i64 %31)
  store i64 %32, i64* %5, align 8
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @NULL_TREE, align 4
  %35 = call i64 @build_int_cst(i32 %34, i32 3)
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %33, %28
  br label %41

37:                                               ; preds = %14
  %38 = load i64, i64* @integer_zero_node, align 8
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* @NULL_TREE, align 4
  %40 = call i64 @build_int_cst(i32 %39, i32 3)
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* @NULL_RTX, align 4
  %44 = load i64, i64* @Pmode, align 8
  %45 = load i32, i32* @EXPAND_NORMAL, align 4
  %46 = call i32 @expand_expr(i64 %42, i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @INTEGER_CST, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %53 = load i64, i64* @integer_zero_node, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @expand_normal(i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @INTVAL(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @INTVAL(i32 %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 @warning(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @const0_rtx, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %60, %54
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @TREE_CODE(i64 %68)
  %70 = load i64, i64* @INTEGER_CST, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i64, i64* @integer_zero_node, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @expand_normal(i64 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @INTVAL(i32 %78)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @INTVAL(i32 %82)
  %84 = icmp sgt i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %75
  %86 = call i32 @warning(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @const0_rtx, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @MEM_P(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @side_effects_p(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @emit_insn(i32 %97)
  br label %99

99:                                               ; preds = %13, %96, %92, %88
  ret void
}

declare dso_local i32 @validate_arglist(i64, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @expand_expr(i64, i32, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @expand_normal(i64) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @side_effects_p(i32) #1

declare dso_local i32 @emit_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
