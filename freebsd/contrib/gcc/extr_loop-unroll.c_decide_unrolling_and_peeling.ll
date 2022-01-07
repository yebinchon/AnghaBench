; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unrolling_and_peeling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unrolling_and_peeling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { %struct.loop* }
%struct.loop = type { i32, %struct.TYPE_2__, i32, i32, %struct.loop*, i32, %struct.loop*, %struct.loop* }
%struct.TYPE_2__ = type { i64 }

@LPT_NONE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0A;; *** Considering loop %d ***\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c";; Not considering loop, cold area\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c";; Not considering loop, cannot duplicate\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c";; Not considering loop, is not innermost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, i32)* @decide_unrolling_and_peeling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_unrolling_and_peeling(%struct.loops* %0, i32 %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.loops*, %struct.loops** %3, align 8
  %8 = getelementptr inbounds %struct.loops, %struct.loops* %7, i32 0, i32 0
  %9 = load %struct.loop*, %struct.loop** %8, align 8
  store %struct.loop* %9, %struct.loop** %5, align 8
  br label %10

10:                                               ; preds = %15, %2
  %11 = load %struct.loop*, %struct.loop** %5, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 4
  %13 = load %struct.loop*, %struct.loop** %12, align 8
  %14 = icmp ne %struct.loop* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.loop*, %struct.loop** %5, align 8
  %17 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 4
  %18 = load %struct.loop*, %struct.loop** %17, align 8
  store %struct.loop* %18, %struct.loop** %5, align 8
  br label %10

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %145, %99, %86, %74, %19
  %21 = load %struct.loop*, %struct.loop** %5, align 8
  %22 = load %struct.loops*, %struct.loops** %3, align 8
  %23 = getelementptr inbounds %struct.loops, %struct.loops* %22, i32 0, i32 0
  %24 = load %struct.loop*, %struct.loop** %23, align 8
  %25 = icmp ne %struct.loop* %21, %24
  br i1 %25, label %26, label %147

26:                                               ; preds = %20
  %27 = load %struct.loop*, %struct.loop** %5, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 7
  %29 = load %struct.loop*, %struct.loop** %28, align 8
  %30 = icmp ne %struct.loop* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.loop*, %struct.loop** %5, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 7
  %34 = load %struct.loop*, %struct.loop** %33, align 8
  store %struct.loop* %34, %struct.loop** %6, align 8
  br label %35

35:                                               ; preds = %40, %31
  %36 = load %struct.loop*, %struct.loop** %6, align 8
  %37 = getelementptr inbounds %struct.loop, %struct.loop* %36, i32 0, i32 4
  %38 = load %struct.loop*, %struct.loop** %37, align 8
  %39 = icmp ne %struct.loop* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.loop*, %struct.loop** %6, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 4
  %43 = load %struct.loop*, %struct.loop** %42, align 8
  store %struct.loop* %43, %struct.loop** %6, align 8
  br label %35

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.loop*, %struct.loop** %5, align 8
  %47 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 6
  %48 = load %struct.loop*, %struct.loop** %47, align 8
  store %struct.loop* %48, %struct.loop** %6, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i64, i64* @LPT_NONE, align 8
  %51 = load %struct.loop*, %struct.loop** %5, align 8
  %52 = getelementptr inbounds %struct.loop, %struct.loop* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* @dump_file, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i64, i64* @dump_file, align 8
  %58 = load %struct.loop*, %struct.loop** %5, align 8
  %59 = getelementptr inbounds %struct.loop, %struct.loop* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.loop*, %struct.loop** %5, align 8
  %64 = getelementptr inbounds %struct.loop, %struct.loop* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @maybe_hot_bb_p(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* @dump_file, align 8
  %73 = call i32 (i64, i8*, ...) @fprintf(i64 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %75, %struct.loop** %5, align 8
  br label %20

76:                                               ; preds = %62
  %77 = load %struct.loop*, %struct.loop** %5, align 8
  %78 = call i32 @can_duplicate_loop_p(%struct.loop* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* @dump_file, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* @dump_file, align 8
  %85 = call i32 (i64, i8*, ...) @fprintf(i64 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %87, %struct.loop** %5, align 8
  br label %20

88:                                               ; preds = %76
  %89 = load %struct.loop*, %struct.loop** %5, align 8
  %90 = getelementptr inbounds %struct.loop, %struct.loop* %89, i32 0, i32 4
  %91 = load %struct.loop*, %struct.loop** %90, align 8
  %92 = icmp ne %struct.loop* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i64, i64* @dump_file, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* @dump_file, align 8
  %98 = call i32 (i64, i8*, ...) @fprintf(i64 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %100, %struct.loop** %5, align 8
  br label %20

101:                                              ; preds = %88
  %102 = load %struct.loop*, %struct.loop** %5, align 8
  %103 = call i32 @num_loop_insns(%struct.loop* %102)
  %104 = load %struct.loop*, %struct.loop** %5, align 8
  %105 = getelementptr inbounds %struct.loop, %struct.loop* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.loop*, %struct.loop** %5, align 8
  %107 = call i32 @average_num_loop_insns(%struct.loop* %106)
  %108 = load %struct.loop*, %struct.loop** %5, align 8
  %109 = getelementptr inbounds %struct.loop, %struct.loop* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.loop*, %struct.loop** %5, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @decide_unroll_constant_iterations(%struct.loop* %110, i32 %111)
  %113 = load %struct.loop*, %struct.loop** %5, align 8
  %114 = getelementptr inbounds %struct.loop, %struct.loop* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LPT_NONE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %101
  %120 = load %struct.loop*, %struct.loop** %5, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @decide_unroll_runtime_iterations(%struct.loop* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %101
  %124 = load %struct.loop*, %struct.loop** %5, align 8
  %125 = getelementptr inbounds %struct.loop, %struct.loop* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LPT_NONE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.loop*, %struct.loop** %5, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @decide_unroll_stupid(%struct.loop* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %123
  %135 = load %struct.loop*, %struct.loop** %5, align 8
  %136 = getelementptr inbounds %struct.loop, %struct.loop* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LPT_NONE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.loop*, %struct.loop** %5, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @decide_peel_simple(%struct.loop* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %146, %struct.loop** %5, align 8
  br label %20

147:                                              ; preds = %20
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @maybe_hot_bb_p(i32) #1

declare dso_local i32 @can_duplicate_loop_p(%struct.loop*) #1

declare dso_local i32 @num_loop_insns(%struct.loop*) #1

declare dso_local i32 @average_num_loop_insns(%struct.loop*) #1

declare dso_local i32 @decide_unroll_constant_iterations(%struct.loop*, i32) #1

declare dso_local i32 @decide_unroll_runtime_iterations(%struct.loop*, i32) #1

declare dso_local i32 @decide_unroll_stupid(%struct.loop*, i32) #1

declare dso_local i32 @decide_peel_simple(%struct.loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
