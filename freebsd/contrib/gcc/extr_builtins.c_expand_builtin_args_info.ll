; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_args_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_args_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_args_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"argument of %<__builtin_args_info%> must be constant\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"argument of %<__builtin_args_info%> out of range\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"missing argument in %<__builtin_args_info%>\00", align 1
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @expand_builtin_args_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_args_info(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* %4, align 4
  store i32* @current_function_args_info, i32** %5, align 8
  %7 = call i32 @gcc_assert(i32 1)
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @TREE_VALUE(i64 %11)
  %13 = call i32 @host_integerp(i32 %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %37

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @TREE_VALUE(i64 %18)
  %20 = call i32 @tree_low_cst(i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %36

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GEN_INT(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %15
  br label %40

38:                                               ; preds = %1
  %39 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32, i32* @const0_rtx, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
