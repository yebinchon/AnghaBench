; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_errwarn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_errwarn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c".error directive invoked in source file\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c".warning directive invoked in source file\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s argument must be a string\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".error\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c".warning\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_errwarn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %11

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i8* [ %8, %7 ], [ %10, %9 ]
  store i8* %12, i8** %4, align 8
  %13 = call i32 (...) @is_it_end_of_statement()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** @input_line_pointer, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %26 = call i32 @as_bad(i8* %21, i8* %25)
  %27 = call i32 (...) @ignore_rest_of_line()
  br label %45

28:                                               ; preds = %15
  %29 = call i8* @demand_copy_C_string(i32* %3)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %45

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @as_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = call i32 (...) @demand_empty_rest_of_line()
  br label %45

45:                                               ; preds = %43, %32, %20
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @is_it_end_of_statement(...) #1

declare dso_local i32 @as_bad(i8*, i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @as_warn(i8*, i8*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
