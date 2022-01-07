; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_argv.c_buildargv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_argv.c_buildargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INITIAL_MAXARGC = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @buildargv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8** null, i8*** %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %210

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 1
  %18 = call i64 @alloca(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %202, %14
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @ISBLANK(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %32, %29
  %38 = load i8**, i8*** %10, align 8
  %39 = icmp eq i8** %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @INITIAL_MAXARGC, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8**
  store i8** %47, i8*** %11, align 8
  br label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %9, align 4
  %51 = load i8**, i8*** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @realloc(i8** %51, i32 %55)
  %57 = inttoptr i64 %56 to i8**
  store i8** %57, i8*** %11, align 8
  br label %58

58:                                               ; preds = %48, %40
  %59 = load i8**, i8*** %11, align 8
  %60 = icmp eq i8** %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8**, i8*** %10, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8**, i8*** %10, align 8
  %66 = call i32 @freeargv(i8** %65)
  store i8** null, i8*** %10, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %209

68:                                               ; preds = %58
  %69 = load i8**, i8*** %11, align 8
  store i8** %69, i8*** %10, align 8
  %70 = load i8**, i8*** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* null, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %32
  %75 = load i8*, i8** %4, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %167, %74
  %77 = load i8*, i8** %2, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @EOS, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %168

83:                                               ; preds = %76
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @ISSPACE(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %168

98:                                               ; preds = %94, %91, %88, %83
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  %102 = load i8*, i8** %2, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  store i8 %103, i8* %104, align 1
  br label %164

106:                                              ; preds = %98
  %107 = load i8*, i8** %2, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 92
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %163

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i8*, i8** %2, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 39
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %126

121:                                              ; preds = %115
  %122 = load i8*, i8** %2, align 8
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %3, align 8
  store i8 %123, i8* %124, align 1
  br label %126

126:                                              ; preds = %121, %120
  br label %162

127:                                              ; preds = %112
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i8*, i8** %2, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %141

136:                                              ; preds = %130
  %137 = load i8*, i8** %2, align 8
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %3, align 8
  store i8 %138, i8* %139, align 1
  br label %141

141:                                              ; preds = %136, %135
  br label %161

142:                                              ; preds = %127
  %143 = load i8*, i8** %2, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 39
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %5, align 4
  br label %160

148:                                              ; preds = %142
  %149 = load i8*, i8** %2, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 34
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 1, i32* %6, align 4
  br label %159

154:                                              ; preds = %148
  %155 = load i8*, i8** %2, align 8
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %3, align 8
  store i8 %156, i8* %157, align 1
  br label %159

159:                                              ; preds = %154, %153
  br label %160

160:                                              ; preds = %159, %147
  br label %161

161:                                              ; preds = %160, %141
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %111
  br label %164

164:                                              ; preds = %163, %101
  %165 = load i8*, i8** %2, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %2, align 8
  br label %167

167:                                              ; preds = %164
  br label %76

168:                                              ; preds = %97, %76
  %169 = load i8, i8* @EOS, align 1
  %170 = load i8*, i8** %3, align 8
  store i8 %169, i8* %170, align 1
  %171 = load i8*, i8** %4, align 8
  %172 = call i8* @strdup(i8* %171)
  %173 = load i8**, i8*** %10, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %172, i8** %176, align 8
  %177 = load i8**, i8*** %10, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %168
  %184 = load i8**, i8*** %10, align 8
  %185 = call i32 @freeargv(i8** %184)
  store i8** null, i8*** %10, align 8
  br label %209

186:                                              ; preds = %168
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  %189 = load i8**, i8*** %10, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  store i8* null, i8** %192, align 8
  br label %193

193:                                              ; preds = %198, %186
  %194 = load i8*, i8** %2, align 8
  %195 = load i8, i8* %194, align 1
  %196 = call i64 @ISSPACE(i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i8*, i8** %2, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %2, align 8
  br label %193

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201
  %203 = load i8*, i8** %2, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8, i8* @EOS, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %205, %207
  br i1 %208, label %20, label %209

209:                                              ; preds = %202, %183, %67
  br label %210

210:                                              ; preds = %209, %1
  %211 = load i8**, i8*** %10, align 8
  ret i8** %211
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @freeargv(i8**) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
