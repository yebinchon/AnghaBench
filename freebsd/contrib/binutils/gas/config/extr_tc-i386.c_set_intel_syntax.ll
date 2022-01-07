; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_set_intel_syntax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_set_intel_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_end_of_line = common dso_local global i32* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"noprefix\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bad argument to syntax directive.\00", align 1
@intel_syntax = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@allow_naked_reg = common dso_local global i32 0, align 4
@identifier_chars = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@register_prefix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_intel_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_intel_syntax(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @SKIP_WHITESPACE()
  %7 = load i32*, i32** @is_end_of_line, align 8
  %8 = load i8*, i8** @input_line_pointer, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** @input_line_pointer, align 8
  store i8* %15, i8** %4, align 8
  %16 = call i32 (...) @get_symbol_end()
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %29

26:                                               ; preds = %21
  %27 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @as_bad(i32 %27)
  br label %29

29:                                               ; preds = %26, %25
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %5, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** @input_line_pointer, align 8
  store i8 %32, i8* %33, align 1
  br label %34

34:                                               ; preds = %30, %1
  %35 = call i32 (...) @demand_empty_rest_of_line()
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* @intel_syntax, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* @intel_syntax, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @stdoutput, align 4
  %44 = call signext i8 @bfd_get_symbol_leading_char(i32 %43)
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* @allow_naked_reg, align 4
  br label %54

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* @allow_naked_reg, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @intel_syntax, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @allow_naked_reg, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 37, i32 0
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** @identifier_chars, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 37
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* @intel_syntax, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 36, i32 0
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** @identifier_chars, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 36
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* @allow_naked_reg, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  store i8* %77, i8** @register_prefix, align 8
  ret void
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @get_symbol_end(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
