; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_default_pch_valid_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_default_pch_valid_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.cl_option_state = type { i64, i32 }

@flag_pic = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpic\00", align 1
@flag_pie = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpie\00", align 1
@targetm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cl_options_count = common dso_local global i64 0, align 8
@cl_options = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @default_pch_valid_p(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cl_option_state, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @flag_pic, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %89

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @flag_pie, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %89

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %7, align 8
  %34 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %35 = icmp ne i8* (i32)* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @memcpy(i32* %9, i8* %37, i32 4)
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %41, 4
  store i64 %42, i64* %5, align 8
  %43 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i8* %43(i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %3, align 8
  br label %89

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %31
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %85, %51
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @cl_options_count, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @option_affects_pch_p(i64 %57, %struct.cl_option_state* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @memcmp(i8* %61, i32 %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_options, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @pch_option_mismatch(i32 %73)
  store i8* %74, i8** %3, align 8
  br label %89

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %6, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %7, align 8
  %80 = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %75, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %52

88:                                               ; preds = %52
  store i8* null, i8** %3, align 8
  br label %89

89:                                               ; preds = %88, %68, %48, %29, %19
  %90 = load i8*, i8** %3, align 8
  ret i8* %90
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @option_affects_pch_p(i64, %struct.cl_option_state*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i8* @pch_option_mismatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
