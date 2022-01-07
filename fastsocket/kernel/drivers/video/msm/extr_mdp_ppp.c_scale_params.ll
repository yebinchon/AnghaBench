; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_scale_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_scale_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"crap bad scale\0A\00", align 1
@ONE = common dso_local global i32 0, align 4
@ONE_HALF = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @scale_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale_params(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sdiv i32 %32, 3
  %34 = srem i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %24, align 4
  br label %38

38:                                               ; preds = %30, %5
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 34
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %197

45:                                               ; preds = %38
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @do_div(i32 %46, i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %54, 134217728
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  %58 = ashr i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %59, 2147483648
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %45
  %62 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %197

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 34
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %197

70:                                               ; preds = %63
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @do_div(i32 %71, i32 %72)
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ONE, align 4
  %79 = sub nsw i32 %77, %78
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = ashr i32 %81, 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @ONE, align 4
  %86 = sub nsw i32 %84, %85
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %70
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 33
  %93 = load i32, i32* @ONE_HALF, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %19, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @ONE_HALF, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  store i32 -1, i32* %6, align 4
  br label %197

103:                                              ; preds = %90
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @do_div(i32 %104, i32 %105)
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @ONE_HALF, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %21, align 4
  br label %120

110:                                              ; preds = %70
  %111 = load i32, i32* %9, align 4
  %112 = shl i32 %111, 1
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %19, align 4
  %116 = mul nsw i32 %114, %115
  %117 = ashr i32 %116, 1
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %21, align 4
  br label %120

120:                                              ; preds = %110, %103
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* @INT_MASK, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* @ONE, align 4
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %22, align 4
  br label %131

131:                                              ; preds = %127, %120
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %22, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* @ONE_HALF, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  store i32 -1, i32* %6, align 4
  br label %197

143:                                              ; preds = %134
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @do_div(i32 %144, i32 %145)
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @ONE_HALF, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %20, align 4
  br label %157

150:                                              ; preds = %131
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %22, align 4
  %153 = ashr i32 %152, 33
  %154 = mul nsw i32 %151, %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %20, align 4
  br label %157

157:                                              ; preds = %150, %143
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @INT_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @ONE, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %23, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %9, align 4
  %167 = shl i32 %166, 33
  %168 = load i32, i32* %23, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %25, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %25, align 4
  %174 = sext i32 %173 to i64
  %175 = and i64 %174, -9223372036854775808
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 4, i32 -4
  store i32 %178, i32* %26, align 4
  %179 = load i32, i32* %26, align 4
  %180 = shl i32 %179, 33
  store i32 %180, i32* %26, align 4
  br label %181

181:                                              ; preds = %186, %157
  %182 = load i32, i32* %25, align 4
  %183 = ashr i32 %182, 33
  %184 = call i32 @abs(i32 %183) #3
  %185 = icmp sgt i32 %184, 4
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %25, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %25, align 4
  br label %181

190:                                              ; preds = %181
  %191 = load i32, i32* %25, align 4
  %192 = ashr i32 %191, 4
  %193 = load i32*, i32** %10, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %12, align 4
  %195 = ashr i32 %194, 4
  %196 = load i32*, i32** %11, align 8
  store i32 %195, i32* %196, align 4
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %190, %142, %102, %69, %61, %44
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DLOG(i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
