; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_one_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_one_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@VAR_DECL = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @expand_one_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_one_var(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @VAR_DECL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 %10(i32 %11)
  br label %76

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @DECL_EXTERNAL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %75

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @DECL_HAS_VALUE_EXPR_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %74

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TREE_STATIC(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @expand_one_static_var(i32 %28)
  br label %73

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @DECL_RTL_SET_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %72

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @TREE_TYPE(i32 %36)
  %38 = load i64, i64* @error_mark_node, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @expand_one_error_var(i32 %41)
  br label %71

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @DECL_HARD_REGISTER(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @expand_one_hard_reg_var(i32 %48)
  br label %70

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @use_register_for_decl(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @expand_one_register_var(i32 %55)
  br label %69

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @defer_stack_allocation(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @add_stack_var(i32 %63)
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @expand_one_stack_var(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %34
  br label %73

73:                                               ; preds = %72, %27
  br label %74

74:                                               ; preds = %73, %22
  br label %75

75:                                               ; preds = %74, %17
  br label %76

76:                                               ; preds = %75, %9
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i32 @expand_one_static_var(i32) #1

declare dso_local i64 @DECL_RTL_SET_P(i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @expand_one_error_var(i32) #1

declare dso_local i64 @DECL_HARD_REGISTER(i32) #1

declare dso_local i32 @expand_one_hard_reg_var(i32) #1

declare dso_local i64 @use_register_for_decl(i32) #1

declare dso_local i32 @expand_one_register_var(i32) #1

declare dso_local i64 @defer_stack_allocation(i32, i32) #1

declare dso_local i32 @add_stack_var(i32) #1

declare dso_local i32 @expand_one_stack_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
