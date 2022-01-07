; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@flag_mri = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"bad format for ifc or ifnc\00", align 1
@cond_obstack = common dso_local global i32 0, align 4
@current_cframe = common dso_local global %struct.conditional_frame* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_ifc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.conditional_frame, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %11 = load i64, i64* @flag_mri, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i8* @mri_comment_field(i8* %4)
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i8* @get_mri_string(i8 signext 44, i32* %7)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** @input_line_pointer, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 44
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @as_bad(i32 %22)
  br label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** @input_line_pointer, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** @input_line_pointer, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i8* @get_mri_string(i8 signext 59, i32* %8)
  store i8* %28, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @strncmp(i8* %33, i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = call i32 @initialize_cframe(%struct.conditional_frame* %10)
  %42 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %10, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %2, align 4
  %48 = xor i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i1 [ true, %38 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = call i64 @obstack_copy(i32* @cond_obstack, %struct.conditional_frame* %10, i32 24)
  %56 = inttoptr i64 %55 to %struct.conditional_frame*
  store %struct.conditional_frame* %56, %struct.conditional_frame** @current_cframe, align 8
  %57 = call i64 (...) @LISTING_SKIP_COND()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %10, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp eq %struct.TYPE_2__* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %10, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67, %63
  %74 = call i32 @listing_list(i32 2)
  br label %75

75:                                               ; preds = %73, %67, %59, %51
  %76 = load i64, i64* @flag_mri, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8*, i8** %3, align 8
  %80 = load i8, i8* %4, align 1
  %81 = call i32 @mri_comment_end(i8* %79, i8 signext %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i8* @mri_comment_field(i8*) #1

declare dso_local i8* @get_mri_string(i8 signext, i32*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @initialize_cframe(%struct.conditional_frame*) #1

declare dso_local i64 @obstack_copy(i32*, %struct.conditional_frame*, i32) #1

declare dso_local i64 @LISTING_SKIP_COND(...) #1

declare dso_local i32 @listing_list(i32) #1

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
