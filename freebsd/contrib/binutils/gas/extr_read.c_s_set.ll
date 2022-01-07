; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"expected symbol name\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"expected comma after \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @input_line_pointer, align 8
  store i8* %6, i8** %3, align 8
  %7 = call signext i8 (...) @get_symbol_end()
  store i8 %7, i8* %4, align 1
  %8 = load i8*, i8** @input_line_pointer, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load i8*, i8** %5, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i32, ...) @as_bad(i32 %15)
  %17 = call i32 (...) @ignore_rest_of_line()
  br label %42

18:                                               ; preds = %1
  %19 = call i32 (...) @SKIP_WHITESPACE()
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 44
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  store i8 0, i8* %25, align 1
  %26 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, ...) @as_bad(i32 %26, i8* %27)
  %29 = load i8, i8* %4, align 1
  %30 = load i8*, i8** %5, align 8
  store i8 %29, i8* %30, align 1
  %31 = call i32 (...) @ignore_rest_of_line()
  br label %42

32:                                               ; preds = %18
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** @input_line_pointer, align 8
  %35 = load i8*, i8** %5, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @assign_symbol(i8* %36, i32 %37)
  %39 = load i8, i8* %4, align 1
  %40 = load i8*, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %41 = call i32 (...) @demand_empty_rest_of_line()
  br label %42

42:                                               ; preds = %32, %24, %14
  ret void
}

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @assign_symbol(i8*, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
