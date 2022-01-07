; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_def_builtin_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_def_builtin_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*, i64, i32, i32, i8*, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@flag_no_builtin = common dso_local global i32 0, align 4
@flag_no_nonansi_builtin = common dso_local global i64 0, align 8
@built_in_decls = common dso_local global i64* null, align 8
@implicit_built_in_decls = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i64, i64, i32, i32, i32, i64, i32)* @def_builtin_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @def_builtin_1(i32 %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @error_mark_node, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %98

27:                                               ; preds = %10
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ true, %30 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %22, align 8
  %47 = load i64 (i8*, i64, i32, i32, i8*, i64)*, i64 (i8*, i64, i32, i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i8*, i8** %22, align 8
  br label %57

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ null, %56 ]
  %59 = load i64, i64* %19, align 8
  %60 = call i64 %47(i8* %48, i64 %49, i32 %50, i32 %51, i8* %58, i64 %59)
  store i64 %60, i64* %21, align 8
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = load i32, i32* @flag_no_builtin, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %22, align 8
  %68 = call i32 @builtin_function_disabled_p(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* @flag_no_nonansi_builtin, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73, %70
  %77 = load i64 (i8*, i64, i32, i32, i8*, i64)*, i64 (i8*, i64, i32, i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %78 = load i8*, i8** %22, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i64, i64* %19, align 8
  %83 = call i64 %77(i8* %78, i64 %79, i32 %80, i32 %81, i8* null, i64 %82)
  br label %84

84:                                               ; preds = %76, %73, %66, %63, %57
  %85 = load i64, i64* %21, align 8
  %86 = load i64*, i64** @built_in_decls, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i64, i64* %21, align 8
  %94 = load i64*, i64** @implicit_built_in_decls, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %26, %92, %84
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @builtin_function_disabled_p(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
