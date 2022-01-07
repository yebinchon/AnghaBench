; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_stringer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_stringer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i32* null, align 8
@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"strings must be placed into a section\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"expected <nn>\00", align 1
@dwarf_file_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stringer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @is_it_end_of_statement()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %8 = load i32*, i32** @input_line_pointer, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** @input_line_pointer, align 8
  br label %11

10:                                               ; preds = %1
  store i32 44, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i64, i64* @now_seg, align 8
  %13 = load i64, i64* @absolute_section, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  store i32 0, i32* %3, align 4
  %18 = call i32 (...) @ignore_rest_of_line()
  br label %19

19:                                               ; preds = %15, %11
  br label %20

20:                                               ; preds = %77, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 44
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 60
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 34
  br label %29

29:                                               ; preds = %26, %23, %20
  %30 = phi i1 [ true, %23 ], [ true, %20 ], [ %28, %26 ]
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  %32 = call i32 (...) @SKIP_WHITESPACE()
  %33 = load i32*, i32** @input_line_pointer, align 8
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %77 [
    i32 34, label %35
    i32 60, label %59
    i32 44, label %74
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** @input_line_pointer, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** @input_line_pointer, align 8
  %38 = load i32*, i32** @input_line_pointer, align 8
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %44, %35
  %41 = call i32 (...) @next_char_of_string()
  store i32 %41, i32* %3, align 4
  %42 = call i32 @is_a_char(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @FRAG_APPEND_1_CHAR(i32 %45)
  br label %40

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @FRAG_APPEND_1_CHAR(i32 0)
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32*, i32** @input_line_pointer, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 34
  %57 = zext i1 %56 to i32
  %58 = call i32 @know(i32 %57)
  br label %77

59:                                               ; preds = %31
  %60 = load i32*, i32** @input_line_pointer, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** @input_line_pointer, align 8
  %62 = call i32 (...) @get_single_number()
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @FRAG_APPEND_1_CHAR(i32 %63)
  %65 = load i32*, i32** @input_line_pointer, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 62
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @as_bad(i32 %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load i32*, i32** @input_line_pointer, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** @input_line_pointer, align 8
  br label %77

74:                                               ; preds = %31
  %75 = load i32*, i32** @input_line_pointer, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** @input_line_pointer, align 8
  br label %77

77:                                               ; preds = %31, %74, %71, %52
  %78 = call i32 (...) @SKIP_WHITESPACE()
  %79 = load i32*, i32** @input_line_pointer, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %20

81:                                               ; preds = %29
  %82 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i64 @is_it_end_of_statement(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @is_a_char(i32) #1

declare dso_local i32 @next_char_of_string(...) #1

declare dso_local i32 @FRAG_APPEND_1_CHAR(i32) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @get_single_number(...) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
