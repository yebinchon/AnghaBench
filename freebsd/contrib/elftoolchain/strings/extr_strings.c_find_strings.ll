; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_find_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_find_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_len = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate memory: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@encoding_size = common dso_local global i64 0, align 8
@encoding = common dso_local global i64 0, align 8
@ENCODING_8BIT = common dso_local global i64 0, align 8
@show_filename = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@show_loc = common dso_local global i64 0, align 8
@radix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%7ju \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%7jx \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%7jo \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_strings(i8* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @min_len, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i64 @calloc(i32 1, i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i8* @strerror(i32 %22)
  %24 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 1, i32* %5, align 4
  br label %198

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @fseeko(i32* %26, i64 %27, i32 %28)
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %193, %25
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %194

43:                                               ; preds = %36, %31
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* @min_len, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @memset(i8* %45, i32 0, i32 %47)
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %105, %43
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @min_len, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @getcharacter(i32* %54, i64* %13)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %195

58:                                               ; preds = %53
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @PRINTABLE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i64, i64* %13, align 8
  %64 = trunc i64 %63 to i8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %64, i8* %68, align 1
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i64, i64* @encoding_size, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %104

77:                                               ; preds = %58
  %78 = load i64, i64* @encoding, align 8
  %79 = load i64, i64* @ENCODING_8BIT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i64, i64* %13, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp sgt i32 %83, 127
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i64, i64* %13, align 8
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 %87, i8* %91, align 1
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i64, i64* @encoding_size, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %105

100:                                              ; preds = %81, %77
  %101 = load i64, i64* @encoding_size, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %10, align 8
  br label %108

104:                                              ; preds = %62
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %49

108:                                              ; preds = %100, %49
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @min_len, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %193

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp sle i64 %113, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %193, label %123

123:                                              ; preds = %118, %112
  %124 = load i64, i64* @show_filename, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64, i64* @show_loc, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i32, i32* @radix, align 4
  switch i32 %133, label %146 [
    i32 130, label %134
    i32 129, label %138
    i32 128, label %142
  ]

134:                                              ; preds = %132
  %135 = load i64, i64* %11, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  br label %146

138:                                              ; preds = %132
  %139 = load i64, i64* %11, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %146

142:                                              ; preds = %132
  %143 = load i64, i64* %11, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %132, %142, %138, %134
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %187, %178, %147
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = add nsw i64 %151, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = add nsw i64 %157, %158
  %160 = icmp sge i64 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %191

162:                                              ; preds = %155, %150
  %163 = load i32*, i32** %7, align 8
  %164 = call i64 @getcharacter(i32* %163, i64* %13)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %191

167:                                              ; preds = %162
  %168 = load i64, i64* @encoding_size, align 8
  %169 = load i64, i64* %10, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* @encoding, align 8
  %172 = load i64, i64* @ENCODING_8BIT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load i64, i64* %13, align 8
  %176 = trunc i64 %175 to i32
  %177 = icmp sgt i32 %176, 127
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i64, i64* %13, align 8
  %180 = trunc i64 %179 to i8
  %181 = call i32 @putchar(i8 signext %180)
  br label %150

182:                                              ; preds = %174, %167
  %183 = load i64, i64* %13, align 8
  %184 = call i64 @PRINTABLE(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  br label %191

187:                                              ; preds = %182
  %188 = load i64, i64* %13, align 8
  %189 = trunc i64 %188 to i8
  %190 = call i32 @putchar(i8 signext %189)
  br label %150

191:                                              ; preds = %186, %166, %161
  %192 = call i32 @putchar(i8 signext 10)
  br label %193

193:                                              ; preds = %191, %118, %108
  br label %31

194:                                              ; preds = %42
  br label %195

195:                                              ; preds = %194, %57
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 @free(i8* %196)
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %195, %20
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @getcharacter(i32*, i64*) #1

declare dso_local i64 @PRINTABLE(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
