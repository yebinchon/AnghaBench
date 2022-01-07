; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_partial_wakeline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_svg_partial_wakeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"<line x1=\22%4.8f\22 y1=\22%4.2f\22 x2=\22%4.8f\22 y2=\22%4.2f\22 style=\22stroke:rgb(32,255,32);stroke-width:0.009\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [106 x i8] c"<g transform=\22translate(%4.8f,%4.8f)\22><text transform=\22rotate(90)\22 font-size=\220.02pt\22>%s &gt;</text></g>\0A\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"<g transform=\22translate(%4.8f,%4.8f)\22><text transform=\22rotate(90)\22 font-size=\220.02pt\22>%s &lt;</text></g>\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"<circle  cx=\22%4.8f\22 cy=\22%4.2f\22 r = \220.01\22  style=\22fill:rgb(32,255,32)\22/>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_partial_wakeline(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* @svgfile, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %199

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %98

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load i32, i32* @svgfile, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call double @time2pixels(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SLOT_MULT, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @SLOT_HEIGHT, align 4
  %30 = add nsw i32 %28, %29
  %31 = sitofp i32 %30 to double
  %32 = load i32, i32* %6, align 4
  %33 = call double @time2pixels(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SLOT_MULT, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* @SLOT_HEIGHT, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @SLOT_MULT, align 4
  %40 = sdiv i32 %39, 32
  %41 = add nsw i32 %38, %40
  %42 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %25, double %31, double %33, i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %22
  %46 = load i32, i32* @svgfile, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call double @time2pixels(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SLOT_MULT, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @SLOT_HEIGHT, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @SLOT_HEIGHT, align 4
  %55 = sdiv i32 %54, 48
  %56 = add nsw i32 %53, %55
  %57 = sitofp i32 %56 to double
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), double %48, double %57, i8* %58)
  br label %60

60:                                               ; preds = %45, %22
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = load i32, i32* @svgfile, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call double @time2pixels(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SLOT_MULT, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* @SLOT_MULT, align 4
  %72 = sdiv i32 %71, 32
  %73 = sub nsw i32 %70, %72
  %74 = sitofp i32 %73 to double
  %75 = load i32, i32* %6, align 4
  %76 = call double @time2pixels(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SLOT_MULT, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %67, double %74, double %76, i32 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %64
  %84 = load i32, i32* @svgfile, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call double @time2pixels(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SLOT_MULT, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @SLOT_MULT, align 4
  %91 = sdiv i32 %90, 32
  %92 = sub nsw i32 %89, %91
  %93 = sitofp i32 %92 to double
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), double %86, double %93, i8* %94)
  br label %96

96:                                               ; preds = %83, %64
  br label %97

97:                                               ; preds = %96, %61
  br label %177

98:                                               ; preds = %15
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %98
  %102 = load i32, i32* @svgfile, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call double @time2pixels(i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SLOT_MULT, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* @SLOT_HEIGHT, align 4
  %109 = add nsw i32 %107, %108
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* %6, align 4
  %112 = call double @time2pixels(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SLOT_MULT, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* @SLOT_HEIGHT, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @SLOT_MULT, align 4
  %119 = sdiv i32 %118, 32
  %120 = add nsw i32 %117, %119
  %121 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %104, double %110, double %112, i32 %120)
  %122 = load i8*, i8** %8, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %101
  %125 = load i32, i32* @svgfile, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call double @time2pixels(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @SLOT_MULT, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* @SLOT_HEIGHT, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* @SLOT_MULT, align 4
  %134 = sdiv i32 %133, 48
  %135 = add nsw i32 %132, %134
  %136 = sitofp i32 %135 to double
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), double %127, double %136, i8* %137)
  br label %139

139:                                              ; preds = %124, %101
  br label %140

140:                                              ; preds = %139, %98
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load i32, i32* @svgfile, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call double @time2pixels(i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SLOT_MULT, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* @SLOT_MULT, align 4
  %151 = sdiv i32 %150, 32
  %152 = sub nsw i32 %149, %151
  %153 = sitofp i32 %152 to double
  %154 = load i32, i32* %6, align 4
  %155 = call double @time2pixels(i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @SLOT_MULT, align 4
  %158 = mul nsw i32 %156, %157
  %159 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), double %146, double %153, double %155, i32 %158)
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %143
  %163 = load i32, i32* @svgfile, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call double @time2pixels(i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @SLOT_MULT, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* @SLOT_HEIGHT, align 4
  %170 = sdiv i32 %169, 32
  %171 = sub nsw i32 %168, %170
  %172 = sitofp i32 %171 to double
  %173 = load i8*, i8** %10, align 8
  %174 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), double %165, double %172, i8* %173)
  br label %175

175:                                              ; preds = %162, %143
  br label %176

176:                                              ; preds = %175, %140
  br label %177

177:                                              ; preds = %176, %97
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @SLOT_MULT, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sitofp i32 %180 to double
  store double %181, double* %11, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load i32, i32* @SLOT_HEIGHT, align 4
  %187 = sitofp i32 %186 to double
  %188 = load double, double* %11, align 8
  %189 = fadd double %188, %187
  store double %189, double* %11, align 8
  br label %190

190:                                              ; preds = %185, %177
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i32, i32* @svgfile, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call double @time2pixels(i32 %195)
  %197 = load double, double* %11, align 8
  %198 = call i32 (i32, i8*, double, double, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), double %196, double %197)
  br label %199

199:                                              ; preds = %14, %193, %190
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, double, ...) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
