; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"invalid identifier for \22.ifdef\22\00", align 1
@cond_obstack = common dso_local global i32 0, align 4
@reg_section = common dso_local global i64 0, align 8
@current_cframe = common dso_local global %struct.conditional_frame* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_ifdef(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.conditional_frame, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @SKIP_WHITESPACE()
  %9 = load i8*, i8** @input_line_pointer, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @is_name_beginner(i8 signext %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @as_bad(i32 %15)
  %17 = call i32 @obstack_1grow(i32* @cond_obstack, i32 0)
  %18 = call i32 (...) @ignore_rest_of_line()
  br label %80

19:                                               ; preds = %1
  %20 = call signext i8 (...) @get_symbol_end()
  store i8 %20, i8* %6, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32* @symbol_find(i8* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i8, i8* %6, align 1
  %24 = load i8*, i8** @input_line_pointer, align 8
  store i8 %23, i8* %24, align 1
  %25 = call i32 @initialize_cframe(%struct.conditional_frame* %5)
  %26 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %57

31:                                               ; preds = %19
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @S_IS_DEFINED(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @symbol_equated_p(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @S_GET_SEGMENT(i32* %43)
  %45 = load i64, i64* @reg_section, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %42, %38, %31
  %48 = phi i1 [ false, %38 ], [ false, %31 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %29
  %58 = call i64 @obstack_copy(i32* @cond_obstack, %struct.conditional_frame* %5, i32 24)
  %59 = inttoptr i64 %58 to %struct.conditional_frame*
  store %struct.conditional_frame* %59, %struct.conditional_frame** @current_cframe, align 8
  %60 = call i64 (...) @LISTING_SKIP_COND()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp eq %struct.TYPE_2__* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70, %66
  %77 = call i32 @listing_list(i32 2)
  br label %78

78:                                               ; preds = %76, %70, %62, %57
  %79 = call i32 (...) @demand_empty_rest_of_line()
  br label %80

80:                                               ; preds = %78, %14
  ret void
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @obstack_1grow(i32*, i32) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i32 @initialize_cframe(%struct.conditional_frame*) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @symbol_equated_p(i32*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

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
