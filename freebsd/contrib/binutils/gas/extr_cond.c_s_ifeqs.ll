; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifeqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifeqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c".ifeqs syntax error\00", align 1
@cond_obstack = common dso_local global i32 0, align 4
@current_cframe = common dso_local global %struct.conditional_frame* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_ifeqs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.conditional_frame, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i8* @demand_copy_C_string(i32* %5)
  store i8* %9, i8** %3, align 8
  %10 = call i32 (...) @SKIP_WHITESPACE()
  %11 = load i8*, i8** @input_line_pointer, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 44
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  %18 = call i32 (...) @ignore_rest_of_line()
  br label %71

19:                                               ; preds = %1
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** @input_line_pointer, align 8
  %22 = call i8* @demand_copy_C_string(i32* %6)
  store i8* %22, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @strncmp(i8* %27, i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %26, %19
  %33 = phi i1 [ false, %19 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = call i32 @initialize_cframe(%struct.conditional_frame* %8)
  %36 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %2, align 4
  %42 = xor i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i1 [ true, %32 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = call i64 @obstack_copy(i32* @cond_obstack, %struct.conditional_frame* %8, i32 24)
  %50 = inttoptr i64 %49 to %struct.conditional_frame*
  store %struct.conditional_frame* %50, %struct.conditional_frame** @current_cframe, align 8
  %51 = call i64 (...) @LISTING_SKIP_COND()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp eq %struct.TYPE_2__* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61, %57
  %68 = call i32 @listing_list(i32 2)
  br label %69

69:                                               ; preds = %67, %61, %53, %45
  %70 = call i32 (...) @demand_empty_rest_of_line()
  br label %71

71:                                               ; preds = %69, %15
  ret void
}

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @initialize_cframe(%struct.conditional_frame*) #1

declare dso_local i64 @obstack_copy(i32*, %struct.conditional_frame*, i32) #1

declare dso_local i64 @LISTING_SKIP_COND(...) #1

declare dso_local i32 @listing_list(i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
