; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@flag_mri = common dso_local global i64 0, align 8
@current_cframe = common dso_local global %struct.conditional_frame* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8
@input_line_pointer = common dso_local global i64* null, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"non-constant expression in \22.if\22 statement\00", align 1
@cond_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_if(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.conditional_frame, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %6, align 8
  %8 = load i64, i64* @flag_mri, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i8* @mri_comment_field(i8* %7)
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 (...) @SKIP_WHITESPACE()
  %14 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  %15 = icmp ne %struct.conditional_frame* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  %18 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %33, %21
  %24 = load i32*, i32** @is_end_of_line, align 8
  %25 = load i64*, i64** @input_line_pointer, align 8
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64*, i64** @input_line_pointer, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** @input_line_pointer, align 8
  br label %23

36:                                               ; preds = %23
  br label %47

37:                                               ; preds = %16, %12
  %38 = call i32 @expression_and_evaluate(%struct.TYPE_5__* %3)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @O_constant, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @as_bad(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %2, align 4
  switch i32 %48, label %79 [
    i32 133, label %49
    i32 128, label %54
    i32 129, label %59
    i32 130, label %64
    i32 132, label %69
    i32 131, label %74
  ]

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %81

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %81

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %81

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %81

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %47
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %47
  %80 = call i32 (...) @abort() #3
  unreachable

81:                                               ; preds = %74, %69, %64, %59, %54, %49
  %82 = call i32 @initialize_cframe(%struct.conditional_frame* %4)
  %83 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %4, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %81
  %91 = phi i1 [ true, %81 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %4, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = call i64 @obstack_copy(i32* @cond_obstack, %struct.conditional_frame* %4, i32 24)
  %95 = inttoptr i64 %94 to %struct.conditional_frame*
  store %struct.conditional_frame* %95, %struct.conditional_frame** @current_cframe, align 8
  %96 = call i64 (...) @LISTING_SKIP_COND()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %4, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = icmp eq %struct.TYPE_4__* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %4, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106, %102
  %113 = call i32 @listing_list(i32 2)
  br label %114

114:                                              ; preds = %112, %106, %98, %90
  %115 = load i64, i64* @flag_mri, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %7, align 1
  %120 = call i32 @mri_comment_end(i8* %118, i8 signext %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i8* @mri_comment_field(i8*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @expression_and_evaluate(%struct.TYPE_5__*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @initialize_cframe(%struct.conditional_frame*) #1

declare dso_local i64 @obstack_copy(i32*, %struct.conditional_frame*, i32) #1

declare dso_local i64 @LISTING_SKIP_COND(...) #1

declare dso_local i32 @listing_list(i32) #1

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
