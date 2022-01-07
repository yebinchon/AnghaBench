; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_choose_mult_variant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_choose_mult_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algorithm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mult_cost = type { i32, i32 }

@add_cost = common dso_local global i32* null, align 8
@basic_variant = common dso_local global i32 0, align 4
@HOST_BITS_PER_INT = common dso_local global i32 0, align 4
@neg_cost = common dso_local global i32* null, align 8
@negate_variant = common dso_local global i32 0, align 4
@add_variant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.algorithm*, i32*, i32)* @choose_mult_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_mult_variant(i32 %0, i32 %1, %struct.algorithm* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.algorithm*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.algorithm, align 4
  %13 = alloca %struct.mult_cost, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.algorithm* %2, %struct.algorithm** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %176

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @GET_MODE_BITSIZE(i32 %19)
  %21 = mul nsw i32 2, %20
  %22 = load i32*, i32** @add_cost, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %21, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i32, i32* @basic_variant, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @synth_mult(%struct.algorithm* %40, i32 %41, %struct.mult_cost* %13, i32 %42)
  %44 = load i32, i32* @HOST_BITS_PER_INT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @GET_MODE_BITSIZE(i32 %45)
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %33
  %49 = load i32*, i32** @neg_cost, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %55 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %54, i32 0, i32 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @MULT_COST_LESS(%struct.TYPE_4__* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  %60 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %61 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %68 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  br label %83

74:                                               ; preds = %48
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %59
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @synth_mult(%struct.algorithm* %12, i32 %85, %struct.mult_cost* %13, i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %14, align 4
  %94 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %99 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %100 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %99, i32 0, i32 0
  %101 = call i64 @CHEAPER_MULT_COST(%struct.TYPE_4__* %98, %struct.TYPE_4__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %83
  %104 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %105 = bitcast %struct.algorithm* %104 to i8*
  %106 = bitcast %struct.algorithm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 8, i1 false)
  %107 = load i32, i32* @negate_variant, align 4
  %108 = load i32*, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %83
  br label %110

110:                                              ; preds = %109, %33
  %111 = load i32*, i32** @add_cost, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %117 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @MULT_COST_LESS(%struct.TYPE_4__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %110
  %122 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %123 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  %128 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %130 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %132, %133
  %135 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  br label %145

136:                                              ; preds = %110
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  %140 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %141, %142
  %144 = getelementptr inbounds %struct.mult_cost, %struct.mult_cost* %13, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %136, %121
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @synth_mult(%struct.algorithm* %12, i32 %147, %struct.mult_cost* %13, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %14, align 4
  %156 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  %161 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %162 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %161, i32 0, i32 0
  %163 = call i64 @CHEAPER_MULT_COST(%struct.TYPE_4__* %160, %struct.TYPE_4__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %145
  %166 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %167 = bitcast %struct.algorithm* %166 to i8*
  %168 = bitcast %struct.algorithm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 8, i1 false)
  %169 = load i32, i32* @add_variant, align 4
  %170 = load i32*, i32** %10, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %145
  %172 = load %struct.algorithm*, %struct.algorithm** %9, align 8
  %173 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %172, i32 0, i32 0
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @MULT_COST_LESS(%struct.TYPE_4__* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %171, %17
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @synth_mult(%struct.algorithm*, i32, %struct.mult_cost*, i32) #1

declare dso_local i32 @MULT_COST_LESS(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @CHEAPER_MULT_COST(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
