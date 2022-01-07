; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_stupid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_stupid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.niter_desc = type { i32, i64 }

@UAP_UNROLL_ALL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A;; Considering unrolling loop stupidly\0A\00", align 1
@PARAM_MAX_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_AVERAGE_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_UNROLL_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c";; The loop is simple\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c";; Not unrolling, contains branches\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c";; Not unrolling loop, doesn't roll\0A\00", align 1
@LPT_UNROLL_STUPID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c";; Decided to unroll the loop stupidly, %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32)* @decide_unroll_stupid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_unroll_stupid(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.niter_desc*, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UAP_UNROLL_ALL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %135

14:                                               ; preds = %2
  %15 = load i64, i64* @dump_file, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* @dump_file, align 8
  %19 = call i32 (i64, i8*, ...) @fprintf(i64 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @PARAM_MAX_UNROLLED_INSNS, align 4
  %22 = call i32 @PARAM_VALUE(i32 %21)
  %23 = load %struct.loop*, %struct.loop** %3, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @PARAM_MAX_AVERAGE_UNROLLED_INSNS, align 4
  %28 = call i32 @PARAM_VALUE(i32 %27)
  %29 = load %struct.loop*, %struct.loop** %3, align 8
  %30 = getelementptr inbounds %struct.loop, %struct.loop* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PARAM_MAX_UNROLL_TIMES, align 4
  %41 = call i32 @PARAM_VALUE(i32 %40)
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @PARAM_MAX_UNROLL_TIMES, align 4
  %45 = call i32 @PARAM_VALUE(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %5, align 4
  %48 = icmp ule i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64, i64* @dump_file, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @dump_file, align 8
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  br label %135

56:                                               ; preds = %46
  %57 = load %struct.loop*, %struct.loop** %3, align 8
  %58 = call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %57)
  store %struct.niter_desc* %58, %struct.niter_desc** %8, align 8
  %59 = load %struct.niter_desc*, %struct.niter_desc** %8, align 8
  %60 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.niter_desc*, %struct.niter_desc** %8, align 8
  %65 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* @dump_file, align 8
  %73 = call i32 (i64, i8*, ...) @fprintf(i64 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %135

75:                                               ; preds = %63, %56
  %76 = load %struct.loop*, %struct.loop** %3, align 8
  %77 = call i32 @num_loop_branches(%struct.loop* %76)
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i64, i64* @dump_file, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* @dump_file, align 8
  %84 = call i32 (i64, i8*, ...) @fprintf(i64 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  br label %135

86:                                               ; preds = %75
  %87 = load %struct.loop*, %struct.loop** %3, align 8
  %88 = getelementptr inbounds %struct.loop, %struct.loop* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load %struct.loop*, %struct.loop** %3, align 8
  %95 = call i32 @expected_loop_iterations(%struct.loop* %94)
  %96 = load i32, i32* %5, align 4
  %97 = mul i32 2, %96
  %98 = icmp ult i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i64, i64* @dump_file, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* @dump_file, align 8
  %104 = call i32 (i64, i8*, ...) @fprintf(i64 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  br label %135

106:                                              ; preds = %93, %86
  store i32 1, i32* %7, align 4
  br label %107

107:                                              ; preds = %113, %106
  %108 = load i32, i32* %7, align 4
  %109 = mul i32 2, %108
  %110 = load i32, i32* %5, align 4
  %111 = icmp ule i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = mul i32 %114, 2
  store i32 %115, i32* %7, align 4
  br label %107

116:                                              ; preds = %107
  %117 = load i32, i32* @LPT_UNROLL_STUPID, align 4
  %118 = load %struct.loop*, %struct.loop** %3, align 8
  %119 = getelementptr inbounds %struct.loop, %struct.loop* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub i32 %121, 1
  %123 = load %struct.loop*, %struct.loop** %3, align 8
  %124 = getelementptr inbounds %struct.loop, %struct.loop* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i64, i64* @dump_file, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %116
  %129 = load i64, i64* @dump_file, align 8
  %130 = load %struct.loop*, %struct.loop** %3, align 8
  %131 = getelementptr inbounds %struct.loop, %struct.loop* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i64, i8*, ...) @fprintf(i64 %129, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %13, %55, %74, %85, %105, %128, %116
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
