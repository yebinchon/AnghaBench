; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yylex.c_yylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yylex.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@arith_buf = common dso_local global i8* null, align 8
@ARITH_BAD = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARITH_NUM = common dso_local global i32 0, align 4
@ARITH_VAR = common dso_local global i32 0, align 4
@ARITH_ASS = common dso_local global i32 0, align 4
@ARITH_GE = common dso_local global i32 0, align 4
@ARITH_RSHIFT = common dso_local global i32 0, align 4
@ARITH_GT = common dso_local global i32 0, align 4
@ARITH_LE = common dso_local global i32 0, align 4
@ARITH_LSHIFT = common dso_local global i32 0, align 4
@ARITH_LT = common dso_local global i32 0, align 4
@ARITH_BOR = common dso_local global i32 0, align 4
@ARITH_OR = common dso_local global i32 0, align 4
@ARITH_BAND = common dso_local global i32 0, align 4
@ARITH_AND = common dso_local global i32 0, align 4
@ARITH_NOT = common dso_local global i32 0, align 4
@ARITH_NE = common dso_local global i32 0, align 4
@ARITH_LPAREN = common dso_local global i32 0, align 4
@ARITH_RPAREN = common dso_local global i32 0, align 4
@ARITH_MUL = common dso_local global i32 0, align 4
@ARITH_DIV = common dso_local global i32 0, align 4
@ARITH_REM = common dso_local global i32 0, align 4
@ARITH_ADD = common dso_local global i32 0, align 4
@ARITH_SUB = common dso_local global i32 0, align 4
@ARITH_BNOT = common dso_local global i32 0, align 4
@ARITH_BXOR = common dso_local global i32 0, align 4
@ARITH_QMARK = common dso_local global i32 0, align 4
@ARITH_COLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i8*, i8** @arith_buf, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %12, %0
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %15 [
    i32 32, label %12
    i32 9, label %12
    i32 10, label %12
    i32 48, label %17
    i32 49, label %17
    i32 50, label %17
    i32 51, label %17
    i32 52, label %17
    i32 53, label %17
    i32 54, label %17
    i32 55, label %17
    i32 56, label %17
    i32 57, label %17
    i32 65, label %22
    i32 66, label %22
    i32 67, label %22
    i32 68, label %22
    i32 69, label %22
    i32 70, label %22
    i32 71, label %22
    i32 72, label %22
    i32 73, label %22
    i32 74, label %22
    i32 75, label %22
    i32 76, label %22
    i32 77, label %22
    i32 78, label %22
    i32 79, label %22
    i32 80, label %22
    i32 81, label %22
    i32 82, label %22
    i32 83, label %22
    i32 84, label %22
    i32 85, label %22
    i32 86, label %22
    i32 87, label %22
    i32 88, label %22
    i32 89, label %22
    i32 90, label %22
    i32 95, label %22
    i32 97, label %22
    i32 98, label %22
    i32 99, label %22
    i32 100, label %22
    i32 101, label %22
    i32 102, label %22
    i32 103, label %22
    i32 104, label %22
    i32 105, label %22
    i32 106, label %22
    i32 107, label %22
    i32 108, label %22
    i32 109, label %22
    i32 110, label %22
    i32 111, label %22
    i32 112, label %22
    i32 113, label %22
    i32 114, label %22
    i32 115, label %22
    i32 116, label %22
    i32 117, label %22
    i32 118, label %22
    i32 119, label %22
    i32 120, label %22
    i32 121, label %22
    i32 122, label %22
    i32 61, label %58
    i32 62, label %75
    i32 60, label %96
    i32 124, label %117
    i32 38, label %133
    i32 33, label %149
    i32 0, label %165
    i32 40, label %166
    i32 41, label %171
    i32 42, label %176
    i32 47, label %181
    i32 37, label %186
    i32 43, label %191
    i32 45, label %204
    i32 126, label %217
    i32 94, label %222
    i32 63, label %227
    i32 58, label %232
  ]

12:                                               ; preds = %7, %7, %7
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* @ARITH_BAD, align 4
  store i32 %16, i32* %1, align 4
  br label %244

17:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strtoarith_t(i8* %18, i8** %4)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** @arith_buf, align 8
  %21 = load i32, i32* @ARITH_NUM, align 4
  store i32 %21, i32* %1, align 4
  br label %244

22:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %31, %22
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @is_in_name(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %24

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = add nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i8* @stalloc(i32 %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i8* %41, i8* %42, i32 %48)
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i32, i32* @ARITH_VAR, align 4
  store i32 %57, i32* %2, align 4
  br label %241

58:                                               ; preds = %7
  %59 = load i32, i32* @ARITH_ASS, align 4
  %60 = sub nsw i32 %59, 61
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %222, %212, %199, %186, %181, %176, %106, %85, %58
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %139, %123, %63
  %67 = load i8*, i8** %3, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 61
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %241

72:                                               ; preds = %66
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 11
  store i32 %74, i32* %2, align 4
  br label %237

75:                                               ; preds = %7
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %90 [
    i32 61, label %80
    i32 62, label %85
  ]

80:                                               ; preds = %75
  %81 = load i32, i32* @ARITH_GE, align 4
  %82 = sub nsw i32 %81, 62
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %2, align 4
  br label %95

85:                                               ; preds = %75
  %86 = load i32, i32* @ARITH_RSHIFT, align 4
  %87 = sub nsw i32 %86, 62
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %2, align 4
  br label %63

90:                                               ; preds = %75
  %91 = load i32, i32* @ARITH_GT, align 4
  %92 = sub nsw i32 %91, 62
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %2, align 4
  br label %241

95:                                               ; preds = %80
  br label %237

96:                                               ; preds = %7
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  switch i32 %100, label %111 [
    i32 61, label %101
    i32 60, label %106
  ]

101:                                              ; preds = %96
  %102 = load i32, i32* @ARITH_LE, align 4
  %103 = sub nsw i32 %102, 60
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %2, align 4
  br label %116

106:                                              ; preds = %96
  %107 = load i32, i32* @ARITH_LSHIFT, align 4
  %108 = sub nsw i32 %107, 60
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %2, align 4
  br label %63

111:                                              ; preds = %96
  %112 = load i32, i32* @ARITH_LT, align 4
  %113 = sub nsw i32 %112, 60
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %2, align 4
  br label %241

116:                                              ; preds = %101
  br label %237

117:                                              ; preds = %7
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 124
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* @ARITH_BOR, align 4
  %125 = sub nsw i32 %124, 124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %2, align 4
  br label %66

128:                                              ; preds = %117
  %129 = load i32, i32* @ARITH_OR, align 4
  %130 = sub nsw i32 %129, 124
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %2, align 4
  br label %237

133:                                              ; preds = %7
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 38
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @ARITH_BAND, align 4
  %141 = sub nsw i32 %140, 38
  %142 = load i32, i32* %2, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %2, align 4
  br label %66

144:                                              ; preds = %133
  %145 = load i32, i32* @ARITH_AND, align 4
  %146 = sub nsw i32 %145, 38
  %147 = load i32, i32* %2, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %2, align 4
  br label %237

149:                                              ; preds = %7
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 61
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i32, i32* @ARITH_NOT, align 4
  %157 = sub nsw i32 %156, 33
  %158 = load i32, i32* %2, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %2, align 4
  br label %241

160:                                              ; preds = %149
  %161 = load i32, i32* @ARITH_NE, align 4
  %162 = sub nsw i32 %161, 33
  %163 = load i32, i32* %2, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %2, align 4
  br label %237

165:                                              ; preds = %7
  br label %241

166:                                              ; preds = %7
  %167 = load i32, i32* @ARITH_LPAREN, align 4
  %168 = sub nsw i32 %167, 40
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %2, align 4
  br label %237

171:                                              ; preds = %7
  %172 = load i32, i32* @ARITH_RPAREN, align 4
  %173 = sub nsw i32 %172, 41
  %174 = load i32, i32* %2, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %2, align 4
  br label %237

176:                                              ; preds = %7
  %177 = load i32, i32* @ARITH_MUL, align 4
  %178 = sub nsw i32 %177, 42
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %2, align 4
  br label %63

181:                                              ; preds = %7
  %182 = load i32, i32* @ARITH_DIV, align 4
  %183 = sub nsw i32 %182, 47
  %184 = load i32, i32* %2, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %2, align 4
  br label %63

186:                                              ; preds = %7
  %187 = load i32, i32* @ARITH_REM, align 4
  %188 = sub nsw i32 %187, 37
  %189 = load i32, i32* %2, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %2, align 4
  br label %63

191:                                              ; preds = %7
  %192 = load i8*, i8** %3, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 43
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @ARITH_BAD, align 4
  store i32 %198, i32* %1, align 4
  br label %244

199:                                              ; preds = %191
  %200 = load i32, i32* @ARITH_ADD, align 4
  %201 = sub nsw i32 %200, 43
  %202 = load i32, i32* %2, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %2, align 4
  br label %63

204:                                              ; preds = %7
  %205 = load i8*, i8** %3, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 45
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = load i32, i32* @ARITH_BAD, align 4
  store i32 %211, i32* %1, align 4
  br label %244

212:                                              ; preds = %204
  %213 = load i32, i32* @ARITH_SUB, align 4
  %214 = sub nsw i32 %213, 45
  %215 = load i32, i32* %2, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %2, align 4
  br label %63

217:                                              ; preds = %7
  %218 = load i32, i32* @ARITH_BNOT, align 4
  %219 = sub nsw i32 %218, 126
  %220 = load i32, i32* %2, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %2, align 4
  br label %237

222:                                              ; preds = %7
  %223 = load i32, i32* @ARITH_BXOR, align 4
  %224 = sub nsw i32 %223, 94
  %225 = load i32, i32* %2, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %2, align 4
  br label %63

227:                                              ; preds = %7
  %228 = load i32, i32* @ARITH_QMARK, align 4
  %229 = sub nsw i32 %228, 63
  %230 = load i32, i32* %2, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %2, align 4
  br label %237

232:                                              ; preds = %7
  %233 = load i32, i32* @ARITH_COLON, align 4
  %234 = sub nsw i32 %233, 58
  %235 = load i32, i32* %2, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %232, %227, %217, %171, %166, %160, %144, %128, %116, %95, %72
  br label %238

238:                                              ; preds = %237
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %3, align 8
  br label %241

241:                                              ; preds = %238, %165, %155, %111, %90, %71, %32
  %242 = load i8*, i8** %3, align 8
  store i8* %242, i8** @arith_buf, align 8
  %243 = load i32, i32* %2, align 4
  store i32 %243, i32* %1, align 4
  br label %244

244:                                              ; preds = %241, %210, %197, %17, %15
  %245 = load i32, i32* %1, align 4
  ret i32 %245
}

declare dso_local i32 @strtoarith_t(i8*, i8**) #1

declare dso_local i32 @is_in_name(i8 signext) #1

declare dso_local i8* @stalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
