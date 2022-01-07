; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_cpp_init_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_cpp_init_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@traditional = common dso_local global i32 0, align 4
@stdc_0_in_system_headers = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"__STDC__ 1\00", align 1
@cplusplus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"__cplusplus 1\00", align 1
@lang = common dso_local global i32 0, align 4
@CLK_ASM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"__ASSEMBLER__ 1\00", align 1
@CLK_STDC94 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199409L\00", align 1
@c99 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199901L\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 1\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 0\00", align 1
@objc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"__OBJC__ 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_init_builtins(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @cpp_init_special_builtins(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @traditional, align 4
  %9 = call i64 @CPP_OPTION(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @stdc_0_in_system_headers, align 4
  %14 = call i64 @CPP_OPTION(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @std, align 4
  %19 = call i64 @CPP_OPTION(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @_cpp_define_builtin(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16, %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @cplusplus, align 4
  %27 = call i64 @CPP_OPTION(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @_cpp_define_builtin(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %61

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @lang, align 4
  %35 = call i64 @CPP_OPTION(i32* %33, i32 %34)
  %36 = load i64, i64* @CLK_ASM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @_cpp_define_builtin(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %60

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @lang, align 4
  %44 = call i64 @CPP_OPTION(i32* %42, i32 %43)
  %45 = load i64, i64* @CLK_STDC94, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @_cpp_define_builtin(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %59

50:                                               ; preds = %41
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @c99, align 4
  %53 = call i64 @CPP_OPTION(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @_cpp_define_builtin(i32* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @_cpp_define_builtin(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @_cpp_define_builtin(i32* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @objc, align 4
  %73 = call i64 @CPP_OPTION(i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @_cpp_define_builtin(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  ret void
}

declare dso_local i32 @cpp_init_special_builtins(i32*) #1

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i32 @_cpp_define_builtin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
