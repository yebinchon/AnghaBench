; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_enter_output_section_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_enter_output_section_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i8*, i8*, i32, i32, i32* }

@current_section = common dso_local global %struct.TYPE_5__* null, align 8
@noload_section = common dso_local global i32 0, align 4
@SEC_NO_FLAGS = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@stat_ptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"subsection alignment\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"section alignment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @lang_enter_output_section_statement(i8* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %14, align 4
  %18 = call %struct.TYPE_5__* @lang_output_section_statement_lookup_1(i8* %16, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %15, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @current_section, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 7
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %24, %7
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @noload_section, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @SEC_NO_FLAGS, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  store i32* %47, i32** @stat_ptr, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @exp_get_value_int(i32* %48, i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = call i8* @topower(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @exp_get_value_int(i32* %53, i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i8* @topower(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local %struct.TYPE_5__* @lang_output_section_statement_lookup_1(i8*, i32) #1

declare dso_local i8* @topower(i32) #1

declare dso_local i32 @exp_get_value_int(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
