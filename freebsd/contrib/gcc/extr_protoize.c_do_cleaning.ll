; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_do_cleaning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_do_cleaning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @do_cleaning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cleaning(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %218, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %221

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %215 [
    i32 47, label %16
    i32 35, label %63
    i32 39, label %101
    i32 34, label %149
    i32 92, label %204
    i32 10, label %213
    i32 32, label %214
    i32 11, label %214
    i32 9, label %214
    i32 13, label %214
    i32 12, label %214
    i32 8, label %214
  ]

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 42
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %216

23:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 32, i8* %25, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 32, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %51, %23
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 42
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  br i1 %43, label %44, label %59

44:                                               ; preds = %42
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ISSPACE(i8 zeroext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  store i8 32, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ult i8* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @gcc_assert(i32 %57)
  br label %30

59:                                               ; preds = %42
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 32, i8* %60, align 1
  %62 = load i8*, i8** %5, align 8
  store i8 32, i8* %62, align 1
  br label %217

63:                                               ; preds = %12
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %216

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  store i8 32, i8* %68, align 1
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br label %81

81:                                               ; preds = %75, %69
  %82 = phi i1 [ true, %69 ], [ %80, %75 ]
  br i1 %82, label %83, label %98

83:                                               ; preds = %81
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @ISSPACE(i8 zeroext %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  store i8 32, i8* %89, align 1
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ult i8* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @gcc_assert(i32 %96)
  br label %69

98:                                               ; preds = %81
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  store i8 32, i8* %99, align 1
  br label %217

101:                                              ; preds = %12
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %138, %101
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 39
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 92
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i1 [ true, %102 ], [ %113, %108 ]
  br i1 %115, label %116, label %146

116:                                              ; preds = %114
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 92
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = call i32 @ISSPACE(i8 zeroext %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 32, i8* %130, align 1
  br label %131

131:                                              ; preds = %128, %122, %116
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @ISSPACE(i8 zeroext %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %5, align 8
  store i8 32, i8* %137, align 1
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = icmp ult i8* %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @gcc_assert(i32 %144)
  br label %102

146:                                              ; preds = %114
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %5, align 8
  store i8 32, i8* %147, align 1
  br label %217

149:                                              ; preds = %12
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %186, %149
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 34
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 92
  br label %162

162:                                              ; preds = %156, %150
  %163 = phi i1 [ true, %150 ], [ %161, %156 ]
  br i1 %163, label %164, label %194

164:                                              ; preds = %162
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 92
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = call i32 @ISSPACE(i8 zeroext %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 32, i8* %178, align 1
  br label %179

179:                                              ; preds = %176, %170, %164
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = call i32 @ISSPACE(i8 zeroext %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = load i8*, i8** %5, align 8
  store i8 32, i8* %185, align 1
  br label %186

186:                                              ; preds = %184, %179
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %5, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = icmp ult i8* %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @gcc_assert(i32 %192)
  br label %150

194:                                              ; preds = %162
  %195 = load i8*, i8** %5, align 8
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @ISSPACE(i8 zeroext %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %5, align 8
  store i8 32, i8* %200, align 1
  br label %201

201:                                              ; preds = %199, %194
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %5, align 8
  br label %217

204:                                              ; preds = %12
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 10
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %216

211:                                              ; preds = %204
  %212 = load i8*, i8** %5, align 8
  store i8 32, i8* %212, align 1
  br label %217

213:                                              ; preds = %12
  store i32 0, i32* %6, align 4
  br label %217

214:                                              ; preds = %12, %12, %12, %12, %12, %12
  br label %217

215:                                              ; preds = %12
  br label %216

216:                                              ; preds = %215, %210, %66, %22
  store i32 1, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %214, %213, %211, %201, %146, %98, %59
  br label %218

218:                                              ; preds = %217
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %5, align 8
  br label %8

221:                                              ; preds = %8
  ret void
}

declare dso_local i32 @ISSPACE(i8 zeroext) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
