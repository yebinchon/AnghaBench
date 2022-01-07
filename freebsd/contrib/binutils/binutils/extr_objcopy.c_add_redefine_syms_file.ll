; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_redefine_syms_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_redefine_syms_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"couldn't open symbol redefinition file %s (error: %s)\00", align 1
@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s:%d: garbage found at end of line\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s:%d: missing new symbol name\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s:%d: premature end of file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_redefine_syms_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_redefine_syms_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @fatal(i32 %15, i8* %16, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  store i64 100, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i8* @xmalloc(i64 %21)
  store i8* %22, i8** %4, align 8
  store i32 1, i32* %9, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %8, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %203, %20
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %245

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @IS_WHITESPACE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @IS_LINE_TERMINATOR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EOF, align 4
  %41 = icmp ne i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34, %30
  %43 = phi i1 [ false, %34 ], [ false, %30 ], [ %41, %38 ]
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %212

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %50, i8* %54, align 1
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i64, i64* %5, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %5, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i8* @xrealloc(i8* %61, i64 %62)
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %58, %48
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @getc(i32* %65)
  store i32 %66, i32* %8, align 4
  br label %30

67:                                               ; preds = %42
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %245

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @IS_WHITESPACE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @getc(i32* %82)
  store i32 %83, i32* %8, align 4
  br label %77

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 35
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @IS_LINE_TERMINATOR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %84
  br label %212

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @EOF, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %245

97:                                               ; preds = %92
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %133, %97
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @IS_WHITESPACE(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @IS_LINE_TERMINATOR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @EOF, align 4
  %110 = icmp ne i32 %108, %109
  br label %111

111:                                              ; preds = %107, %103, %99
  %112 = phi i1 [ false, %103 ], [ false, %99 ], [ %110, %107 ]
  br i1 %112, label %113, label %136

113:                                              ; preds = %111
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 35
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %212

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %4, align 8
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %6, align 8
  %123 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 %119, i8* %123, align 1
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp uge i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load i64, i64* %5, align 8
  %129 = mul i64 %128, 2
  store i64 %129, i64* %5, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i8* @xrealloc(i8* %130, i64 %131)
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %127, %117
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @getc(i32* %134)
  store i32 %135, i32* %8, align 4
  br label %99

136:                                              ; preds = %111
  %137 = load i8*, i8** %4, align 8
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %6, align 8
  %140 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8 0, i8* %140, align 1
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @EOF, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %245

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %8, align 4
  %148 = call i64 @IS_LINE_TERMINATOR(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @EOF, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @IS_WHITESPACE(i32 %155)
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %154, %150, %146
  %159 = phi i1 [ false, %150 ], [ false, %146 ], [ %157, %154 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @getc(i32* %161)
  store i32 %162, i32* %8, align 4
  br label %146

163:                                              ; preds = %158
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, 35
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %212

167:                                              ; preds = %163
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 13
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @getc(i32* %171)
  store i32 %172, i32* %8, align 4
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %181, label %174

174:                                              ; preds = %170, %167
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %175, 10
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @EOF, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %177, %174, %170
  br label %182

182:                                              ; preds = %244, %181
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load i8*, i8** %2, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8*, i8** %4, align 8
  %193 = load i64, i64* %7, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = call i32 @redefine_list_append(i8* %189, i8* %191, i8* %194)
  br label %196

196:                                              ; preds = %188, %182
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @EOF, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %245

203:                                              ; preds = %196
  %204 = load i32*, i32** %3, align 8
  %205 = call i32 @getc(i32* %204)
  store i32 %205, i32* %8, align 4
  br label %25

206:                                              ; preds = %177
  %207 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i8*, i8** %2, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @fatal(i32 %207, i8* %208, i32 %209)
  br label %211

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %166, %116, %91, %47
  %213 = load i64, i64* %6, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i64, i64* %7, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* %6, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218, %215
  %223 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i8*, i8** %2, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @fatal(i32 %223, i8* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %218, %212
  %228 = load i8*, i8** %4, align 8
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %6, align 8
  %231 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8 0, i8* %231, align 1
  br label %232

232:                                              ; preds = %241, %227
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 10
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @EOF, align 4
  %238 = icmp ne i32 %236, %237
  br label %239

239:                                              ; preds = %235, %232
  %240 = phi i1 [ false, %232 ], [ %238, %235 ]
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @getc(i32* %242)
  store i32 %243, i32* %8, align 4
  br label %232

244:                                              ; preds = %239
  br label %182

245:                                              ; preds = %202, %144, %96, %75, %25
  %246 = load i64, i64* %6, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %250 = load i8*, i8** %2, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @fatal(i32 %249, i8* %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %245
  %254 = load i8*, i8** %4, align 8
  %255 = call i32 @free(i8* %254)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @IS_WHITESPACE(i32) #1

declare dso_local i64 @IS_LINE_TERMINATOR(i32) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @redefine_list_append(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
