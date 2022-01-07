; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_apr_gcvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_apr_gcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32, i8*, i32)* @apr_gcvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apr_gcvt(double %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @NDIG, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  %20 = load double, double* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @apr_ecvt(double %20, i32 %21, i32* %10, i32* %9, i8* %19)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %12, align 8
  store i8 45, i8* %27, align 1
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %48, %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 48
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi i1 [ false, %32 ], [ %42, %35 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %13, align 4
  br label %32

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %65, label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %131

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, -3
  br i1 %64, label %65, label %131

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = load i8, i8* %68, align 1
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  store i8 46, i8* %73, align 1
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %85, %65
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %11, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %12, align 8
  store i8 %82, i8* %83, align 1
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %12, align 8
  store i8 101, i8* %89, align 1
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %12, align 8
  store i8 45, i8* %96, align 1
  br label %101

98:                                               ; preds = %88
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  store i8 43, i8* %99, align 1
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %102, 100
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = sdiv i32 %106, 100
  %108 = add nsw i32 %107, 48
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %12, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %105, %101
  %113 = load i32, i32* %10, align 4
  %114 = sdiv i32 %113, 10
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = srem i32 %117, 100
  %119 = sdiv i32 %118, 10
  %120 = add nsw i32 %119, 48
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %12, align 8
  store i8 %121, i8* %122, align 1
  br label %124

124:                                              ; preds = %116, %112
  %125 = load i32, i32* %10, align 4
  %126 = srem i32 %125, 10
  %127 = add nsw i32 %126, 48
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %12, align 8
  store i8 %128, i8* %129, align 1
  br label %190

131:                                              ; preds = %62, %59
  %132 = load i32, i32* %10, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 48
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %12, align 8
  store i8 46, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %146, %142
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %12, align 8
  store i8 48, i8* %149, align 1
  br label %143

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %131
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %170, %152
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %11, align 8
  %160 = load i8, i8* %158, align 1
  %161 = load i8*, i8** %12, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %12, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %12, align 8
  store i8 46, i8* %167, align 1
  br label %169

169:                                              ; preds = %166, %157
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %153

173:                                              ; preds = %153
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %183, %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %12, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %12, align 8
  store i8 48, i8* %184, align 1
  br label %178

186:                                              ; preds = %178
  %187 = load i8*, i8** %12, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %12, align 8
  store i8 46, i8* %187, align 1
  br label %189

189:                                              ; preds = %186, %173
  br label %190

190:                                              ; preds = %189, %124
  %191 = load i8*, i8** %12, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 -1
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 46
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %12, align 8
  br label %202

202:                                              ; preds = %199, %196, %190
  %203 = load i8*, i8** %12, align 8
  store i8 0, i8* %203, align 1
  %204 = load i8*, i8** %7, align 8
  %205 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %205)
  ret i8* %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @apr_ecvt(double, i32, i32*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
