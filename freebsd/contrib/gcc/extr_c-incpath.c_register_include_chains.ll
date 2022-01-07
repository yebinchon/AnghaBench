; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_register_include_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_register_include_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)* }
%struct.TYPE_4__ = type { i64, i64 }

@register_include_chains.lang_env_vars = internal constant [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [15 x i8] c"C_INCLUDE_PATH\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CPLUS_INCLUDE_PATH\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OBJC_INCLUDE_PATH\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"OBJCPLUS_INCLUDE_PATH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CPATH\00", align 1
@BRACKET = common dso_local global i64 0, align 8
@SYSTEM = common dso_local global i64 0, align 8
@target_c_incpath = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@heads = common dso_local global i32* null, align 8
@QUOTE = common dso_local global i64 0, align 8
@quote_ignores_source_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_include_chains(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_4__* @cpp_get_options(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %15, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %16, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i64, i64* %16, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %16, align 8
  br label %34

33:                                               ; preds = %7
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* @BRACKET, align 8
  %36 = call i32 @add_env_var_paths(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %16, align 8
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* @register_include_chains.lang_env_vars, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* @SYSTEM, align 8
  %41 = call i32 @add_env_var_paths(i8* %39, i64 %40)
  %42 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @target_c_incpath, i32 0, i32 1), align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 %42(i8* %43, i8* %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @add_standard_paths(i8* %50, i8* %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %34
  %56 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @target_c_incpath, i32 0, i32 0), align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 %56(i8* %57, i8* %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @merge_include_chains(i32* %61, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** @heads, align 8
  %66 = load i64, i64* @QUOTE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @heads, align 8
  %70 = load i64, i64* @BRACKET, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @quote_ignores_source_dir, align 4
  %74 = call i32 @cpp_set_include_chains(i32* %64, i32 %68, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.TYPE_4__* @cpp_get_options(i32*) #1

declare dso_local i32 @add_env_var_paths(i8*, i64) #1

declare dso_local i32 @add_standard_paths(i8*, i8*, i8*, i32) #1

declare dso_local i32 @merge_include_chains(i32*, i32) #1

declare dso_local i32 @cpp_set_include_chains(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
