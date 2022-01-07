; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EXPONENT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, double, i64, i32, i32*, i8*, i32*)* @conv_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_fp(i8 signext %0, double %1, i64 %2, i32 %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8 %0, i8* %9, align 1
  store double %1, double* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load i8*, i8** %14, align 8
  store i8* %26, i8** %16, align 8
  %27 = load i32, i32* @NDIG, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 102
  br i1 %33, label %34, label %39

34:                                               ; preds = %7
  %35 = load double, double* %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i8* @apr_fcvt(double %35, i32 %36, i32* %18, i32* %37, i8* %30)
  store i8* %38, i8** %17, align 8
  br label %45

39:                                               ; preds = %7
  %40 = load double, double* %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32*, i32** %13, align 8
  %44 = call i8* @apr_ecvt(double %40, i32 %42, i32* %18, i32* %43, i8* %30)
  store i8* %44, i8** %17, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i8*, i8** %17, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @apr_isalpha(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @memcpy(i8* %54, i8* %55, i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i8*, i8** %14, align 8
  store i8* %62, i8** %8, align 8
  store i32 1, i32* %21, align 4
  br label %207

63:                                               ; preds = %45
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 102
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %16, align 8
  store i8 48, i8* %71, align 1
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %16, align 8
  store i8 46, i8* %76, align 1
  br label %78

78:                                               ; preds = %82, %75
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = icmp slt i32 %79, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  store i8 48, i8* %83, align 1
  br label %78

85:                                               ; preds = %78
  br label %93

86:                                               ; preds = %70
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %16, align 8
  store i8 46, i8* %90, align 1
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %85
  br label %115

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %99, %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %18, align 4
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %17, align 8
  %102 = load i8, i8* %100, align 1
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %16, align 8
  store i8 %102, i8* %103, align 1
  br label %95

105:                                              ; preds = %95
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %16, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %16, align 8
  store i8 46, i8* %112, align 1
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %93
  br label %131

116:                                              ; preds = %63
  %117 = load i8*, i8** %17, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %17, align 8
  %119 = load i8, i8* %117, align 1
  %120 = load i8*, i8** %16, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %16, align 8
  store i8 %119, i8* %120, align 1
  %122 = load i32, i32* %12, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %116
  %125 = load i64, i64* %11, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124, %116
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %16, align 8
  store i8 46, i8* %128, align 1
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %115
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i8*, i8** %17, align 8
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i8*, i8** %17, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %17, align 8
  %139 = load i8, i8* %137, align 1
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %16, align 8
  store i8 %139, i8* %140, align 1
  br label %132

142:                                              ; preds = %132
  %143 = load i8, i8* %9, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 102
  br i1 %145, label %146, label %198

146:                                              ; preds = %142
  %147 = load i32, i32* @EXPONENT_LENGTH, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %22, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %23, align 8
  %151 = load i8, i8* %9, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %16, align 8
  store i8 %151, i8* %152, align 1
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %146
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @FALSE, align 4
  %161 = load i32, i32* @EXPONENT_LENGTH, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %150, i64 %162
  %164 = call i8* @conv_10(i32 %159, i32 %160, i32* %25, i8* %163, i32* %24)
  store i8* %164, i8** %17, align 8
  %165 = load i32, i32* %25, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 45, i32 43
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %16, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %16, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i32, i32* %24, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %158
  %175 = load i8*, i8** %16, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %16, align 8
  store i8 48, i8* %175, align 1
  br label %177

177:                                              ; preds = %174, %158
  br label %178

178:                                              ; preds = %182, %177
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %24, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i8*, i8** %17, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %17, align 8
  %185 = load i8, i8* %183, align 1
  %186 = load i8*, i8** %16, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %16, align 8
  store i8 %185, i8* %186, align 1
  br label %178

188:                                              ; preds = %178
  br label %196

189:                                              ; preds = %146
  %190 = load i8*, i8** %16, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %16, align 8
  store i8 43, i8* %190, align 1
  %192 = load i8*, i8** %16, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %16, align 8
  store i8 48, i8* %192, align 1
  %194 = load i8*, i8** %16, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %16, align 8
  store i8 48, i8* %194, align 1
  br label %196

196:                                              ; preds = %189, %188
  %197 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %197)
  br label %198

198:                                              ; preds = %196, %142
  %199 = load i8*, i8** %16, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = load i32*, i32** %15, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i8*, i8** %14, align 8
  store i8* %206, i8** %8, align 8
  store i32 1, i32* %21, align 4
  br label %207

207:                                              ; preds = %198, %50
  %208 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i8*, i8** %8, align 8
  ret i8* %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @apr_fcvt(double, i32, i32*, i32*, i8*) #2

declare dso_local i8* @apr_ecvt(double, i32, i32*, i32*, i8*) #2

declare dso_local i64 @apr_isalpha(i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @conv_10(i32, i32, i32*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
