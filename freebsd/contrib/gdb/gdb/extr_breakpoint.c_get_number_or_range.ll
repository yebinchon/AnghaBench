; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_get_number_or_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_get_number_or_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_number_or_range.last_retval = internal global i32 0, align 4
@get_number_or_range.end_value = internal global i32 0, align 4
@get_number_or_range.end_ptr = internal global i8* null, align 8
@get_number_or_range.in_range = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"inverted range\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"negative value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_number_or_range(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 45
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load i8**, i8*** %2, align 8
  %11 = call i32 @get_number_trailer(i8** %10, i8 signext 45)
  store i32 %11, i32* @get_number_or_range.last_retval, align 4
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %48

17:                                               ; preds = %9
  store i8** @get_number_or_range.end_ptr, i8*** %3, align 8
  %18 = load i8**, i8*** %2, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** @get_number_or_range.end_ptr, align 8
  br label %21

21:                                               ; preds = %27, %17
  %22 = load i8*, i8** @get_number_or_range.end_ptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i64 @isspace(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** @get_number_or_range.end_ptr, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** @get_number_or_range.end_ptr, align 8
  br label %21

30:                                               ; preds = %21
  %31 = load i8**, i8*** %3, align 8
  %32 = call i32 @get_number(i8** %31)
  store i32 %32, i32* @get_number_or_range.end_value, align 4
  %33 = load i32, i32* @get_number_or_range.end_value, align 4
  %34 = load i32, i32* @get_number_or_range.last_retval, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %47

38:                                               ; preds = %30
  %39 = load i32, i32* @get_number_or_range.end_value, align 4
  %40 = load i32, i32* @get_number_or_range.last_retval, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** @get_number_or_range.end_ptr, align 8
  %44 = load i8**, i8*** %2, align 8
  store i8* %43, i8** %44, align 8
  br label %46

45:                                               ; preds = %38
  store i32 1, i32* @get_number_or_range.in_range, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %9
  br label %64

49:                                               ; preds = %1
  %50 = load i32, i32* @get_number_or_range.in_range, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %63

54:                                               ; preds = %49
  %55 = load i32, i32* @get_number_or_range.last_retval, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @get_number_or_range.last_retval, align 4
  %57 = load i32, i32* @get_number_or_range.end_value, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** @get_number_or_range.end_ptr, align 8
  %61 = load i8**, i8*** %2, align 8
  store i8* %60, i8** %61, align 8
  store i32 0, i32* @get_number_or_range.in_range, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* @get_number_or_range.last_retval, align 4
  ret i32 %65
}

declare dso_local i32 @get_number_trailer(i8**, i8 signext) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @get_number(i8**) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
