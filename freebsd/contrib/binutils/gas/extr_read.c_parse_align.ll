; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_parse_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_parse_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"expected alignment after size\00", align 1
@O_absent = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"alignment negative; 0 assumed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"alignment not a power of 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_align(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @SKIP_WHITESPACE()
  %8 = load i8*, i8** @input_line_pointer, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 44
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %26, %12
  %14 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @as_bad(i32 %14)
  %16 = call i32 (...) @ignore_rest_of_line()
  store i32 -1, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load i8*, i8** @input_line_pointer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** @input_line_pointer, align 8
  %20 = call i32 (...) @SKIP_WHITESPACE()
  %21 = call i32 @get_absolute_expr(%struct.TYPE_3__* %4)
  store i32 %21, i32* %5, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @O_absent, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %13

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @as_warn(i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %41

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @as_bad(i32 %54)
  %56 = call i32 (...) @ignore_rest_of_line()
  store i32 -1, i32* %2, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %37, %34
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %53, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @get_absolute_expr(%struct.TYPE_3__*) #1

declare dso_local i32 @as_warn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
