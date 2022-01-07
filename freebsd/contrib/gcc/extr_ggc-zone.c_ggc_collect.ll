; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.alloc_zone* }
%struct.alloc_zone = type { i32, i8*, %struct.alloc_zone*, i64, i64, i64 }

@TV_GC = common dso_local global i32 0, align 4
@ggc_force_collect = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GGC_MIN_HEAPSIZE = common dso_local global i32 0, align 4
@GGC_MIN_EXPAND = common dso_local global i32 0, align 4
@main_zone = common dso_local global %struct.alloc_zone zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"Zone `%s' is dead and will be freed.\0A\00", align 1
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_collect() #0 {
  %1 = alloca %struct.alloc_zone*, align 8
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.alloc_zone*, align 8
  %7 = alloca %struct.alloc_zone*, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @TV_GC, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = load i32, i32* @ggc_force_collect, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %0
  store float 0.000000e+00, float* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  %13 = load %struct.alloc_zone*, %struct.alloc_zone** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  store %struct.alloc_zone* %13, %struct.alloc_zone** %1, align 8
  br label %14

14:                                               ; preds = %30, %12
  %15 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %16 = icmp ne %struct.alloc_zone* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %19 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to float
  %22 = load float, float* %3, align 4
  %23 = fadd float %22, %21
  store float %23, float* %3, align 4
  %24 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %25 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to float
  %28 = load float, float* %4, align 4
  %29 = fadd float %28, %27
  store float %29, float* %4, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %32 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %31, i32 0, i32 2
  %33 = load %struct.alloc_zone*, %struct.alloc_zone** %32, align 8
  store %struct.alloc_zone* %33, %struct.alloc_zone** %1, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load float, float* %3, align 4
  %36 = load i32, i32* @GGC_MIN_HEAPSIZE, align 4
  %37 = call float @PARAM_VALUE(i32 %36)
  %38 = fptoui float %37 to i64
  %39 = mul i64 %38, 1024
  %40 = call float @MAX(float %35, i64 %39)
  store float %40, float* %3, align 4
  %41 = load float, float* %3, align 4
  %42 = load i32, i32* @GGC_MIN_EXPAND, align 4
  %43 = call float @PARAM_VALUE(i32 %42)
  %44 = fmul float %41, %43
  %45 = fdiv float %44, 1.000000e+02
  store float %45, float* %5, align 4
  %46 = load float, float* %4, align 4
  %47 = load float, float* %3, align 4
  %48 = load float, float* %5, align 4
  %49 = fadd float %47, %48
  %50 = fcmp olt float %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @TV_GC, align 4
  %53 = call i32 @timevar_pop(i32 %52)
  br label %140

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %0
  store i32 0, i32* getelementptr inbounds (%struct.alloc_zone, %struct.alloc_zone* @main_zone, i32 0, i32 0), align 8
  %56 = call i32 @ggc_collect_1(%struct.alloc_zone* @main_zone, i32 1)
  %57 = load i32, i32* %2, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.alloc_zone, %struct.alloc_zone* @main_zone, i32 0, i32 0), align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.alloc_zone*, %struct.alloc_zone** getelementptr inbounds (%struct.alloc_zone, %struct.alloc_zone* @main_zone, i32 0, i32 2), align 8
  store %struct.alloc_zone* %62, %struct.alloc_zone** %6, align 8
  br label %63

63:                                               ; preds = %77, %61
  %64 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %65 = icmp ne %struct.alloc_zone* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %68 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @ggc_collect_1(%struct.alloc_zone* %69, i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load %struct.alloc_zone*, %struct.alloc_zone** %6, align 8
  %79 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %78, i32 0, i32 2
  %80 = load %struct.alloc_zone*, %struct.alloc_zone** %79, align 8
  store %struct.alloc_zone* %80, %struct.alloc_zone** %6, align 8
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 (...) @zone_free_marks()
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.alloc_zone*, %struct.alloc_zone** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  store %struct.alloc_zone* %88, %struct.alloc_zone** %1, align 8
  br label %89

89:                                               ; preds = %133, %87
  %90 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %91 = icmp ne %struct.alloc_zone* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %94 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %93, i32 0, i32 2
  %95 = load %struct.alloc_zone*, %struct.alloc_zone** %94, align 8
  %96 = icmp ne %struct.alloc_zone* %95, null
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi i1 [ false, %89 ], [ %96, %92 ]
  br i1 %98, label %99, label %137

99:                                               ; preds = %97
  %100 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %101 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %100, i32 0, i32 2
  %102 = load %struct.alloc_zone*, %struct.alloc_zone** %101, align 8
  %103 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %99
  %107 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %108 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %107, i32 0, i32 2
  %109 = load %struct.alloc_zone*, %struct.alloc_zone** %108, align 8
  store %struct.alloc_zone* %109, %struct.alloc_zone** %7, align 8
  %110 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %111 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %112)
  %114 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %115 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @gcc_assert(i32 %119)
  %121 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %122 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %121, i32 0, i32 2
  %123 = load %struct.alloc_zone*, %struct.alloc_zone** %122, align 8
  %124 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %123, i32 0, i32 2
  %125 = load %struct.alloc_zone*, %struct.alloc_zone** %124, align 8
  %126 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %127 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %126, i32 0, i32 2
  store %struct.alloc_zone* %125, %struct.alloc_zone** %127, align 8
  %128 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %129 = call i32 @release_pages(%struct.alloc_zone* %128)
  %130 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %131 = call i32 @free(%struct.alloc_zone* %130)
  br label %132

132:                                              ; preds = %106, %99
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %135 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %134, i32 0, i32 2
  %136 = load %struct.alloc_zone*, %struct.alloc_zone** %135, align 8
  store %struct.alloc_zone* %136, %struct.alloc_zone** %1, align 8
  br label %89

137:                                              ; preds = %97
  %138 = load i32, i32* @TV_GC, align 4
  %139 = call i32 @timevar_pop(i32 %138)
  br label %140

140:                                              ; preds = %137, %51
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local float @MAX(float, i64) #1

declare dso_local float @PARAM_VALUE(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @ggc_collect_1(%struct.alloc_zone*, i32) #1

declare dso_local i32 @zone_free_marks(...) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @release_pages(%struct.alloc_zone*) #1

declare dso_local i32 @free(%struct.alloc_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
