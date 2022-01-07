; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_apr_cvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_apr_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32, i32*, i32*, i32, i8*)* @apr_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apr_cvt(double %0, i32 %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store double %0, double* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NDIG, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @NDIG, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %6
  store i32 0, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %17, align 8
  %30 = load double, double* %8, align 8
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** %11, align 8
  store i32 1, i32* %33, align 4
  %34 = load double, double* %8, align 8
  %35 = fneg double %34
  store double %35, double* %8, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load double, double* %8, align 8
  %38 = call double @modf(double %37, double* %15) #2
  store double %38, double* %8, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* @NDIG, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %18, align 8
  %43 = load double, double* %15, align 8
  %44 = fcmp une double %43, 0.000000e+00
  br i1 %44, label %45, label %89

45:                                               ; preds = %36
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @NDIG, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %18, align 8
  br label %50

50:                                               ; preds = %60, %45
  %51 = load i8*, i8** %18, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = icmp ugt i8* %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load double, double* %15, align 8
  %57 = fcmp une double %56, 0.000000e+00
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i1 [ false, %50 ], [ %57, %55 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load double, double* %15, align 8
  %62 = fdiv double %61, 1.000000e+01
  %63 = call double @modf(double %62, double* %15) #2
  store double %63, double* %16, align 8
  %64 = load double, double* %16, align 8
  %65 = fadd double %64, 3.000000e-02
  %66 = fmul double %65, 1.000000e+01
  %67 = fptosi double %66 to i32
  %68 = add nsw i32 %67, 48
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %18, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %18, align 8
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %50

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @NDIG, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = icmp ult i8* %76, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %18, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %17, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %17, align 8
  store i8 %85, i8* %86, align 1
  br label %75

88:                                               ; preds = %75
  br label %103

89:                                               ; preds = %36
  %90 = load double, double* %8, align 8
  %91 = fcmp ogt double %90, 0.000000e+00
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %97, %92
  %94 = load double, double* %8, align 8
  %95 = fmul double %94, 1.000000e+01
  store double %95, double* %16, align 8
  %96 = fcmp olt double %95, 1.000000e+00
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load double, double* %16, align 8
  store double %98, double* %8, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %14, align 4
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8* %107, i8** %18, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i32, i32* %14, align 4
  %112 = load i8*, i8** %18, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %18, align 8
  br label %115

115:                                              ; preds = %110, %103
  %116 = load i8*, i8** %18, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = icmp ult i8* %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 0, %121
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %13, align 8
  store i8* %126, i8** %7, align 8
  br label %211

127:                                              ; preds = %115
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %143, %127
  %131 = load i8*, i8** %17, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = icmp ule i8* %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* @NDIG, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = icmp ult i8* %135, %139
  br label %141

141:                                              ; preds = %134, %130
  %142 = phi i1 [ false, %130 ], [ %140, %134 ]
  br i1 %142, label %143, label %154

143:                                              ; preds = %141
  %144 = load double, double* %8, align 8
  %145 = fmul double %144, 1.000000e+01
  store double %145, double* %8, align 8
  %146 = load double, double* %8, align 8
  %147 = call double @modf(double %146, double* %16) #2
  store double %147, double* %8, align 8
  %148 = load double, double* %16, align 8
  %149 = fptosi double %148 to i32
  %150 = add nsw i32 %149, 48
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %17, align 8
  store i8 %151, i8* %152, align 1
  br label %130

154:                                              ; preds = %141
  %155 = load i8*, i8** %18, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* @NDIG, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = icmp uge i8* %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i8*, i8** %13, align 8
  %163 = load i32, i32* @NDIG, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 0, i8* %166, align 1
  %167 = load i8*, i8** %13, align 8
  store i8* %167, i8** %7, align 8
  br label %211

168:                                              ; preds = %154
  %169 = load i8*, i8** %18, align 8
  store i8* %169, i8** %17, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = add nsw i32 %172, 5
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %170, align 1
  br label %175

175:                                              ; preds = %207, %168
  %176 = load i8*, i8** %18, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp sgt i32 %178, 57
  br i1 %179, label %180, label %208

180:                                              ; preds = %175
  %181 = load i8*, i8** %18, align 8
  store i8 48, i8* %181, align 1
  %182 = load i8*, i8** %18, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = icmp ugt i8* %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i8*, i8** %18, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 -1
  store i8* %187, i8** %18, align 8
  %188 = load i8, i8* %187, align 1
  %189 = add i8 %188, 1
  store i8 %189, i8* %187, align 1
  br label %207

190:                                              ; preds = %180
  %191 = load i8*, i8** %18, align 8
  store i8 49, i8* %191, align 1
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load i8*, i8** %17, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = icmp ugt i8* %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i8*, i8** %17, align 8
  store i8 48, i8* %202, align 1
  br label %203

203:                                              ; preds = %201, %197
  %204 = load i8*, i8** %17, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %17, align 8
  br label %206

206:                                              ; preds = %203, %190
  br label %207

207:                                              ; preds = %206, %185
  br label %175

208:                                              ; preds = %175
  %209 = load i8*, i8** %17, align 8
  store i8 0, i8* %209, align 1
  %210 = load i8*, i8** %13, align 8
  store i8* %210, i8** %7, align 8
  br label %211

211:                                              ; preds = %208, %161, %120
  %212 = load i8*, i8** %7, align 8
  ret i8* %212
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
