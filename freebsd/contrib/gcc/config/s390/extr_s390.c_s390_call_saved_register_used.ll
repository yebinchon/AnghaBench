; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_call_saved_register_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_call_saved_register_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s390_call_saved_register_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_call_saved_register_used(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @INIT_CUMULATIVE_ARGS(i32 %10, i32* null, i32* null, i32 0, i32 0)
  br label %12

12:                                               ; preds = %82, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_VALUE(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_CHAIN(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @ERROR_MARK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %84

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TYPE_MODE(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @pass_by_reference(i32* %4, i32 %36, i32 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @Pmode, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @build_pointer_type(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %27
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @s390_function_arg(i32* %4, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @s390_function_arg_advance(i32* %4, i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @REG_P(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @REGNO(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @GET_MODE(i32 %62)
  %64 = call i32 @HARD_REGNO_NREGS(i32 %61, i32 %63)
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i32*, i32** @call_used_regs, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @REGNO(i32 %69)
  %71 = add nsw i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %84

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %53, %44
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %76, %26
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @INIT_CUMULATIVE_ARGS(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @pass_by_reference(i32*, i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @s390_function_arg(i32*, i32, i32, i32) #1

declare dso_local i32 @s390_function_arg_advance(i32*, i32, i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @HARD_REGNO_NREGS(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
