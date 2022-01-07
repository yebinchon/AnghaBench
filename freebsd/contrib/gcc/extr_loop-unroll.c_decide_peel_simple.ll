; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_peel_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_peel_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.niter_desc = type { i64, i32, i64 }

@UAP_PEEL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0A;; Considering simply peeling loop\0A\00", align 1
@PARAM_MAX_PEELED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_PEEL_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c";; Loop iterates constant times\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c";; Not peeling, contains branches\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c";; Not peeling loop, rolls too much (\00", align 1
@HOST_WIDEST_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c" iterations > %d [maximum peelings])\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c";; Not peeling loop, no evidence it will be profitable\0A\00", align 1
@LPT_PEEL_SIMPLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c";; Decided to simply peel the loop, %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32)* @decide_peel_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_peel_simple(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.niter_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @UAP_PEEL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %135

13:                                               ; preds = %2
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @dump_file, align 8
  %18 = call i32 (i64, i8*, ...) @fprintf(i64 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @PARAM_MAX_PEELED_INSNS, align 4
  %21 = call i32 @PARAM_VALUE(i32 %20)
  %22 = load %struct.loop*, %struct.loop** %3, align 8
  %23 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = udiv i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PARAM_MAX_PEEL_TIMES, align 4
  %28 = call i32 @PARAM_VALUE(i32 %27)
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @PARAM_MAX_PEEL_TIMES, align 4
  %32 = call i32 @PARAM_VALUE(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @dump_file, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @dump_file, align 8
  %41 = call i32 (i64, i8*, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  br label %135

43:                                               ; preds = %33
  %44 = load %struct.loop*, %struct.loop** %3, align 8
  %45 = call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %44)
  store %struct.niter_desc* %45, %struct.niter_desc** %6, align 8
  %46 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %47 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %52 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %57 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i64, i64* @dump_file, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* @dump_file, align 8
  %65 = call i32 (i64, i8*, ...) @fprintf(i64 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  br label %135

67:                                               ; preds = %55, %50, %43
  %68 = load %struct.loop*, %struct.loop** %3, align 8
  %69 = call i32 @num_loop_branches(%struct.loop* %68)
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i64, i64* @dump_file, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @dump_file, align 8
  %76 = call i32 (i64, i8*, ...) @fprintf(i64 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  br label %135

78:                                               ; preds = %67
  %79 = load %struct.loop*, %struct.loop** %3, align 8
  %80 = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.loop*, %struct.loop** %3, align 8
  %87 = call i32 @expected_loop_iterations(%struct.loop* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  %90 = load i32, i32* %5, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load i64, i64* @dump_file, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* @dump_file, align 8
  %97 = call i32 (i64, i8*, ...) @fprintf(i64 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i64, i64* @dump_file, align 8
  %99 = load i8*, i8** @HOST_WIDEST_INT_PRINT_DEC, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  %102 = call i32 (i64, i8*, ...) @fprintf(i64 %98, i8* %99, i32 %101)
  %103 = load i64, i64* @dump_file, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i64, i8*, ...) @fprintf(i64 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %95, %92
  br label %135

107:                                              ; preds = %85
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %117

110:                                              ; preds = %78
  %111 = load i64, i64* @dump_file, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* @dump_file, align 8
  %115 = call i32 (i64, i8*, ...) @fprintf(i64 %114, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  br label %135

117:                                              ; preds = %107
  %118 = load i32, i32* @LPT_PEEL_SIMPLE, align 4
  %119 = load %struct.loop*, %struct.loop** %3, align 8
  %120 = getelementptr inbounds %struct.loop, %struct.loop* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.loop*, %struct.loop** %3, align 8
  %124 = getelementptr inbounds %struct.loop, %struct.loop* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load i64, i64* @dump_file, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load i64, i64* @dump_file, align 8
  %130 = load %struct.loop*, %struct.loop** %3, align 8
  %131 = getelementptr inbounds %struct.loop, %struct.loop* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i64, i8*, ...) @fprintf(i64 %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %12, %42, %66, %77, %106, %116, %128, %117
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) #1

declare dso_local i32 @num_loop_branches(%struct.loop*) #1

declare dso_local i32 @expected_loop_iterations(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
