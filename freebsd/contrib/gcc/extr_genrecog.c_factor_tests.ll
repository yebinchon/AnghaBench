; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_factor_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_factor_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision*, %struct.decision* }
%struct.decision = type { %struct.decision_head, %struct.decision*, %struct.decision*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }

@DT_mode = common dso_local global i32 0, align 4
@DT_code = common dso_local global i32 0, align 4
@DT_veclen = common dso_local global i32 0, align 4
@DT_elt_zero_int = common dso_local global i32 0, align 4
@DT_elt_one_int = common dso_local global i32 0, align 4
@DT_elt_zero_wide_safe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*)* @factor_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @factor_tests(%struct.decision_head* %0) #0 {
  %2 = alloca %struct.decision_head*, align 8
  %3 = alloca %struct.decision*, align 8
  %4 = alloca %struct.decision*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.decision*, align 8
  %7 = alloca %struct.decision*, align 8
  %8 = alloca %struct.decision_head, align 8
  store %struct.decision_head* %0, %struct.decision_head** %2, align 8
  %9 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %10 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %9, i32 0, i32 0
  %11 = load %struct.decision*, %struct.decision** %10, align 8
  store %struct.decision* %11, %struct.decision** %3, align 8
  br label %12

12:                                               ; preds = %166, %1
  %13 = load %struct.decision*, %struct.decision** %3, align 8
  %14 = icmp ne %struct.decision* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.decision*, %struct.decision** %3, align 8
  %17 = getelementptr inbounds %struct.decision, %struct.decision* %16, i32 0, i32 1
  %18 = load %struct.decision*, %struct.decision** %17, align 8
  %19 = icmp ne %struct.decision* %18, null
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %168

22:                                               ; preds = %20
  %23 = load %struct.decision*, %struct.decision** %3, align 8
  %24 = getelementptr inbounds %struct.decision, %struct.decision* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.decision*, %struct.decision** %3, align 8
  %29 = getelementptr inbounds %struct.decision, %struct.decision* %28, i32 0, i32 1
  %30 = load %struct.decision*, %struct.decision** %29, align 8
  store %struct.decision* %30, %struct.decision** %4, align 8
  %31 = load %struct.decision*, %struct.decision** %4, align 8
  %32 = getelementptr inbounds %struct.decision, %struct.decision* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %166

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @DT_mode, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DT_code, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DT_veclen, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DT_elt_zero_int, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DT_elt_one_int, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DT_elt_zero_wide_safe, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %166

64:                                               ; preds = %59, %55, %51, %47, %43, %39
  %65 = load %struct.decision*, %struct.decision** %3, align 8
  %66 = getelementptr inbounds %struct.decision, %struct.decision* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %64
  %72 = load %struct.decision*, %struct.decision** %3, align 8
  %73 = getelementptr inbounds %struct.decision, %struct.decision* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.decision*, %struct.decision** %3, align 8
  %76 = getelementptr inbounds %struct.decision, %struct.decision* %75, i32 0, i32 0
  %77 = call %struct.decision* @new_decision(i32 %74, %struct.decision_head* %76)
  store %struct.decision* %77, %struct.decision** %6, align 8
  %78 = load %struct.decision*, %struct.decision** %3, align 8
  %79 = getelementptr inbounds %struct.decision, %struct.decision* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.decision*, %struct.decision** %6, align 8
  %84 = getelementptr inbounds %struct.decision, %struct.decision* %83, i32 0, i32 3
  store %struct.TYPE_2__* %82, %struct.TYPE_2__** %84, align 8
  %85 = load %struct.decision*, %struct.decision** %3, align 8
  %86 = getelementptr inbounds %struct.decision, %struct.decision* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %88, align 8
  br label %89

89:                                               ; preds = %71, %64
  %90 = load %struct.decision*, %struct.decision** %3, align 8
  %91 = getelementptr inbounds %struct.decision, %struct.decision* %90, i32 0, i32 1
  store %struct.decision* null, %struct.decision** %91, align 8
  %92 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %93 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %92, i32 0, i32 1
  %94 = load %struct.decision*, %struct.decision** %93, align 8
  store %struct.decision* %94, %struct.decision** %7, align 8
  %95 = load %struct.decision*, %struct.decision** %3, align 8
  %96 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %97 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %96, i32 0, i32 1
  store %struct.decision* %95, %struct.decision** %97, align 8
  br label %98

98:                                               ; preds = %146, %89
  %99 = load %struct.decision*, %struct.decision** %4, align 8
  %100 = getelementptr inbounds %struct.decision, %struct.decision* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp ne %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.decision*, %struct.decision** %4, align 8
  %107 = getelementptr inbounds %struct.decision, %struct.decision* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.decision*, %struct.decision** %4, align 8
  %110 = getelementptr inbounds %struct.decision, %struct.decision* %109, i32 0, i32 0
  %111 = call %struct.decision* @new_decision(i32 %108, %struct.decision_head* %110)
  store %struct.decision* %111, %struct.decision** %6, align 8
  %112 = load %struct.decision*, %struct.decision** %4, align 8
  %113 = getelementptr inbounds %struct.decision, %struct.decision* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load %struct.decision*, %struct.decision** %6, align 8
  %118 = getelementptr inbounds %struct.decision, %struct.decision* %117, i32 0, i32 3
  store %struct.TYPE_2__* %116, %struct.TYPE_2__** %118, align 8
  %119 = load %struct.decision*, %struct.decision** %4, align 8
  %120 = getelementptr inbounds %struct.decision, %struct.decision* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %122, align 8
  br label %123

123:                                              ; preds = %105, %98
  %124 = load %struct.decision*, %struct.decision** %4, align 8
  store %struct.decision* %124, %struct.decision** %6, align 8
  %125 = load %struct.decision*, %struct.decision** %4, align 8
  %126 = getelementptr inbounds %struct.decision, %struct.decision* %125, i32 0, i32 1
  %127 = load %struct.decision*, %struct.decision** %126, align 8
  store %struct.decision* %127, %struct.decision** %4, align 8
  %128 = load %struct.decision*, %struct.decision** %6, align 8
  %129 = getelementptr inbounds %struct.decision, %struct.decision* %128, i32 0, i32 1
  store %struct.decision* null, %struct.decision** %129, align 8
  %130 = load %struct.decision*, %struct.decision** %6, align 8
  %131 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %8, i32 0, i32 1
  store %struct.decision* %130, %struct.decision** %131, align 8
  %132 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %8, i32 0, i32 0
  store %struct.decision* %130, %struct.decision** %132, align 8
  %133 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %134 = call i32 @merge_trees(%struct.decision_head* %133, %struct.decision_head* %8)
  br label %135

135:                                              ; preds = %123
  %136 = load %struct.decision*, %struct.decision** %4, align 8
  %137 = icmp ne %struct.decision* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.decision*, %struct.decision** %4, align 8
  %140 = getelementptr inbounds %struct.decision, %struct.decision* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %143, %144
  br label %146

146:                                              ; preds = %138, %135
  %147 = phi i1 [ false, %135 ], [ %145, %138 ]
  br i1 %147, label %98, label %148

148:                                              ; preds = %146
  %149 = load %struct.decision*, %struct.decision** %4, align 8
  %150 = icmp ne %struct.decision* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %153 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %152, i32 0, i32 1
  %154 = load %struct.decision*, %struct.decision** %153, align 8
  %155 = load %struct.decision*, %struct.decision** %4, align 8
  %156 = getelementptr inbounds %struct.decision, %struct.decision* %155, i32 0, i32 2
  store %struct.decision* %154, %struct.decision** %156, align 8
  %157 = load %struct.decision*, %struct.decision** %4, align 8
  %158 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %159 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %158, i32 0, i32 1
  %160 = load %struct.decision*, %struct.decision** %159, align 8
  %161 = getelementptr inbounds %struct.decision, %struct.decision* %160, i32 0, i32 1
  store %struct.decision* %157, %struct.decision** %161, align 8
  %162 = load %struct.decision*, %struct.decision** %7, align 8
  %163 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %164 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %163, i32 0, i32 1
  store %struct.decision* %162, %struct.decision** %164, align 8
  br label %165

165:                                              ; preds = %151, %148
  br label %166

166:                                              ; preds = %165, %63, %38
  %167 = load %struct.decision*, %struct.decision** %4, align 8
  store %struct.decision* %167, %struct.decision** %3, align 8
  br label %12

168:                                              ; preds = %20
  %169 = load %struct.decision_head*, %struct.decision_head** %2, align 8
  %170 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %169, i32 0, i32 0
  %171 = load %struct.decision*, %struct.decision** %170, align 8
  store %struct.decision* %171, %struct.decision** %3, align 8
  br label %172

172:                                              ; preds = %178, %168
  %173 = load %struct.decision*, %struct.decision** %3, align 8
  %174 = icmp ne %struct.decision* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.decision*, %struct.decision** %3, align 8
  %177 = getelementptr inbounds %struct.decision, %struct.decision* %176, i32 0, i32 0
  call void @factor_tests(%struct.decision_head* %177)
  br label %178

178:                                              ; preds = %175
  %179 = load %struct.decision*, %struct.decision** %3, align 8
  %180 = getelementptr inbounds %struct.decision, %struct.decision* %179, i32 0, i32 1
  %181 = load %struct.decision*, %struct.decision** %180, align 8
  store %struct.decision* %181, %struct.decision** %3, align 8
  br label %172

182:                                              ; preds = %172
  ret void
}

declare dso_local %struct.decision* @new_decision(i32, %struct.decision_head*) #1

declare dso_local i32 @merge_trees(%struct.decision_head*, %struct.decision_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
