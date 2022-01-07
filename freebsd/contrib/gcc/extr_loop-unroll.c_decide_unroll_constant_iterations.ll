; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_constant_iterations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_decide_unroll_constant_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.niter_desc = type { i32, i64, i64, i32, i32 }

@UAP_UNROLL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"\0A;; Considering unrolling loop with constant number of iterations\0A\00", align 1
@PARAM_MAX_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_AVERAGE_UNROLLED_INSNS = common dso_local global i32 0, align 4
@PARAM_MAX_UNROLL_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c";; Unable to prove that the loop iterates constant times\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c";; Not unrolling loop, doesn't roll\0A\00", align 1
@NULL_RTX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c";; max_unroll %d (%d copies, initial %d).\0A\00", align 1
@LPT_UNROLL_CONSTANT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c";; Decided to unroll the constant times rolling loop, %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32)* @decide_unroll_constant_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decide_unroll_constant_iterations(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.niter_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @UAP_UNROLL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %195

18:                                               ; preds = %2
  %19 = load i64, i64* @dump_file, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 (i64, i8*, ...) @fprintf(i64 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @PARAM_MAX_UNROLLED_INSNS, align 4
  %26 = call i32 @PARAM_VALUE(i32 %25)
  %27 = load %struct.loop*, %struct.loop** %3, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = udiv i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @PARAM_MAX_AVERAGE_UNROLLED_INSNS, align 4
  %32 = call i32 @PARAM_VALUE(i32 %31)
  %33 = load %struct.loop*, %struct.loop** %3, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = udiv i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %24
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PARAM_MAX_UNROLL_TIMES, align 4
  %45 = call i32 @PARAM_VALUE(i32 %44)
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @PARAM_MAX_UNROLL_TIMES, align 4
  %49 = call i32 @PARAM_VALUE(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp ule i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* @dump_file, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* @dump_file, align 8
  %58 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %195

60:                                               ; preds = %50
  %61 = load %struct.loop*, %struct.loop** %3, align 8
  %62 = call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %61)
  store %struct.niter_desc* %62, %struct.niter_desc** %11, align 8
  %63 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %64 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %69 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %74 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72, %67, %60
  %78 = load i64, i64* @dump_file, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* @dump_file, align 8
  %82 = call i32 (i64, i8*, ...) @fprintf(i64 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  br label %195

84:                                               ; preds = %72
  %85 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %86 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = mul i32 2, %88
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i64, i64* @dump_file, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* @dump_file, align 8
  %96 = call i32 (i64, i8*, ...) @fprintf(i64 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  br label %195

98:                                               ; preds = %84
  %99 = load i32, i32* %5, align 4
  %100 = mul i32 2, %99
  %101 = add i32 %100, 10
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul i32 2, %102
  %104 = add i32 %103, 2
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub i32 %105, 1
  %107 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %108 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp uge i32 %106, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %113 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 2
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %111, %98
  br label %117

117:                                              ; preds = %164, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sub i32 %119, 1
  %121 = icmp uge i32 %118, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %117
  %123 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %124 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  %128 = urem i32 %125, %127
  store i32 %128, i32* %12, align 4
  %129 = load %struct.loop*, %struct.loop** %3, align 8
  %130 = call i32 @loop_exit_at_end_p(%struct.loop* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %133, %134
  %136 = add i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %156

137:                                              ; preds = %122
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load %struct.niter_desc*, %struct.niter_desc** %11, align 8
  %143 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @NULL_RTX, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141, %137
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %148, %149
  %151 = add i32 %150, 2
  store i32 %151, i32* %9, align 4
  br label %155

152:                                              ; preds = %141
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %152, %147
  br label %156

156:                                              ; preds = %155, %132
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %160, %156
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, -1
  store i32 %166, i32* %10, align 4
  br label %117

167:                                              ; preds = %117
  %168 = load i64, i64* @dump_file, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i64, i64* @dump_file, align 8
  %172 = load i32, i32* %8, align 4
  %173 = add i32 %172, 1
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 (i64, i8*, ...) @fprintf(i64 %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %170, %167
  %178 = load i32, i32* @LPT_UNROLL_CONSTANT, align 4
  %179 = load %struct.loop*, %struct.loop** %3, align 8
  %180 = getelementptr inbounds %struct.loop, %struct.loop* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.loop*, %struct.loop** %3, align 8
  %184 = getelementptr inbounds %struct.loop, %struct.loop* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 4
  %186 = load i64, i64* @dump_file, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %177
  %189 = load i64, i64* @dump_file, align 8
  %190 = load %struct.loop*, %struct.loop** %3, align 8
  %191 = getelementptr inbounds %struct.loop, %struct.loop* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i64, i8*, ...) @fprintf(i64 %189, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %17, %59, %83, %97, %188, %177
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) #1

declare dso_local i32 @loop_exit_at_end_p(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
