; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_runtime_iterations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_runtime_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.niter_desc = type { i64, i64, i32 }

@UAP_UNROLL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"\0A;; Considering unrolling loop with runtime computable number of iterations\0A\00", align 1
@PARAM_MAX_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_AVERAGE_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_UNROLL_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c";; Unable to prove that the number of iterations can be counted in runtime\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c";; Loop iterates constant times\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c";; Not unrolling loop, doesn't roll\0A\00", align 1
@LPT_UNROLL_RUNTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c";; Decided to unroll the runtime computable times rolling loop, %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32)* @decide_unroll_runtime_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_unroll_runtime_iterations(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.niter_desc*, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UAP_UNROLL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %136

14:                                               ; preds = %2
  %15 = load i64, i64* @dump_file, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* @dump_file, align 8
  %19 = call i32 (i64, i8*, ...) @fprintf(i64 %18, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
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
  br label %136

56:                                               ; preds = %46
  %57 = load %struct.loop*, %struct.loop** %3, align 8
  %58 = call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %57)
  store %struct.niter_desc* %58, %struct.niter_desc** %8, align 8
  %59 = load %struct.niter_desc*, %struct.niter_desc** %8, align 8
  %60 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.niter_desc*, %struct.niter_desc** %8, align 8
  %65 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %56
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* @dump_file, align 8
  %73 = call i32 (i64, i8*, ...) @fprintf(i64 %72, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %136

75:                                               ; preds = %63
  %76 = load %struct.niter_desc*, %struct.niter_desc** %8, align 8
  %77 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* @dump_file, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* @dump_file, align 8
  %85 = call i32 (i64, i8*, ...) @fprintf(i64 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %136

87:                                               ; preds = %75
  %88 = load %struct.loop*, %struct.loop** %3, align 8
  %89 = getelementptr inbounds %struct.loop, %struct.loop* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.loop*, %struct.loop** %3, align 8
  %96 = call i32 @expected_loop_iterations(%struct.loop* %95)
  %97 = load i32, i32* %5, align 4
  %98 = mul i32 2, %97
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i64, i64* @dump_file, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* @dump_file, align 8
  %105 = call i32 (i64, i8*, ...) @fprintf(i64 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  br label %136

107:                                              ; preds = %94, %87
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %114, %107
  %109 = load i32, i32* %7, align 4
  %110 = mul i32 2, %109
  %111 = load i32, i32* %5, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = mul i32 %115, 2
  store i32 %116, i32* %7, align 4
  br label %108

117:                                              ; preds = %108
  %118 = load i32, i32* @LPT_UNROLL_RUNTIME, align 4
  %119 = load %struct.loop*, %struct.loop** %3, align 8
  %120 = getelementptr inbounds %struct.loop, %struct.loop* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub i32 %122, 1
  %124 = load %struct.loop*, %struct.loop** %3, align 8
  %125 = getelementptr inbounds %struct.loop, %struct.loop* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load i64, i64* @dump_file, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %117
  %130 = load i64, i64* @dump_file, align 8
  %131 = load %struct.loop*, %struct.loop** %3, align 8
  %132 = getelementptr inbounds %struct.loop, %struct.loop* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i64, i8*, ...) @fprintf(i64 %130, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %13, %55, %74, %86, %106, %129, %117
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) #1

declare dso_local i32 @expected_loop_iterations(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
