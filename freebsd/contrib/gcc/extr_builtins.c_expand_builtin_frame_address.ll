; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_frame_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_frame_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const0_rtx = common dso_local global i32* null, align 8
@BUILT_IN_FRAME_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"invalid argument to %<__builtin_frame_address%>\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"invalid argument to %<__builtin_return_address%>\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"unsupported argument to %<__builtin_frame_address%>\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"unsupported argument to %<__builtin_return_address%>\00", align 1
@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64)* @expand_builtin_frame_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expand_builtin_frame_address(i64 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** @const0_rtx, align 8
  store i32* %10, i32** %3, align 8
  br label %68

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @TREE_VALUE(i64 %12)
  %14 = call i32 @host_integerp(i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @DECL_FUNCTION_CODE(i64 %17)
  %19 = load i64, i64* @BUILT_IN_FRAME_ADDRESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %16
  %24 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32*, i32** @const0_rtx, align 8
  store i32* %26, i32** %3, align 8
  br label %68

27:                                               ; preds = %11
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @DECL_FUNCTION_CODE(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @TREE_VALUE(i64 %30)
  %32 = call i32 @tree_low_cst(i32 %31, i32 1)
  %33 = call i32* @expand_builtin_return_addr(i64 %29, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @DECL_FUNCTION_CODE(i64 %37)
  %39 = load i64, i64* @BUILT_IN_FRAME_ADDRESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @warning(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %45

43:                                               ; preds = %36
  %44 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32*, i32** @const0_rtx, align 8
  store i32* %46, i32** %3, align 8
  br label %68

47:                                               ; preds = %27
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @DECL_FUNCTION_CODE(i64 %48)
  %50 = load i64, i64* @BUILT_IN_FRAME_ADDRESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %68

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @REG_P(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @CONSTANT_P(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @Pmode, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32* @copy_to_mode_reg(i32 %63, i32* %64)
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = load i32*, i32** %6, align 8
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %66, %52, %45, %25, %9
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @DECL_FUNCTION_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @expand_builtin_return_addr(i64, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @REG_P(i32*) #1

declare dso_local i32 @CONSTANT_P(i32*) #1

declare dso_local i32* @copy_to_mode_reg(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
