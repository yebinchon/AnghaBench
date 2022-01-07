; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_cook_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_cook_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@stdin = common dso_local global %struct.TYPE_12__* null, align 8
@EOF = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@nflag = common dso_local global i64 0, align 8
@bflag = common dso_local global i32 0, align 4
@stdout = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%6d\09\00", align 1
@eflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%6s\09\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@WEOF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@filename = common dso_local global i32 0, align 4
@rval = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @cook_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cook_cat(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdin, align 8
  %10 = icmp eq %struct.TYPE_12__* %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdin, align 8
  %13 = call i64 @feof(%struct.TYPE_12__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdin, align 8
  %17 = call i32 @clearerr(%struct.TYPE_12__* %16)
  br label %18

18:                                               ; preds = %15, %11, %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %19

19:                                               ; preds = %200, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = call i32 @getc(%struct.TYPE_12__* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %202

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = load i64, i64* @sflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %200

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i64, i64* @nflag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load i32, i32* @bflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %59

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdout, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = call i32 (%struct.TYPE_12__*, i8*, ...) @fprintf(%struct.TYPE_12__* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdout, align 8
  %55 = call i64 @ferror(%struct.TYPE_12__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %202

58:                                               ; preds = %49
  br label %71

59:                                               ; preds = %46
  %60 = load i64, i64* @eflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdout, align 8
  %64 = call i32 (%struct.TYPE_12__*, i8*, ...) @fprintf(%struct.TYPE_12__* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdout, align 8
  %66 = call i64 @ferror(%struct.TYPE_12__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %202

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i64, i64* @eflag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call i32 @putchar(i32 36)
  %81 = load i32, i32* @EOF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %202

84:                                               ; preds = %79, %76
  br label %193

85:                                               ; preds = %73
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i64, i64* @tflag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = call i32 @putchar(i32 94)
  %93 = load i32, i32* @EOF, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = call i32 @putchar(i32 73)
  %97 = load i32, i32* @EOF, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91
  br label %202

100:                                              ; preds = %95
  br label %200

101:                                              ; preds = %88
  br label %192

102:                                              ; preds = %85
  %103 = load i64, i64* @vflag, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %191

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = call i32 @ungetc(i32 %106, %struct.TYPE_12__* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = call i64 @getwc(%struct.TYPE_12__* %109)
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* @WEOF, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %105
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = call i64 @ferror(%struct.TYPE_12__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EILSEQ, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i32 @clearerr(%struct.TYPE_12__* %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = call i32 @memset(i32* %125, i32 0, i32 4)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = call i32 @getc(%struct.TYPE_12__* %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @EOF, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %202

132:                                              ; preds = %121
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %7, align 8
  br label %145

135:                                              ; preds = %117, %113
  br label %202

136:                                              ; preds = %105
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @iswascii(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @iswprint(i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %132
  %146 = call i32 @putchar(i32 77)
  %147 = load i32, i32* @EOF, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = call i32 @putchar(i32 45)
  %151 = load i32, i32* @EOF, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %145
  br label %202

154:                                              ; preds = %149
  %155 = load i64, i64* %7, align 8
  %156 = call i8* @toascii(i64 %155)
  %157 = ptrtoint i8* %156 to i64
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %154, %140, %136
  %159 = load i64, i64* %7, align 8
  %160 = call i64 @iswcntrl(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %158
  %163 = load i64, i64* %7, align 8
  %164 = call i8* @toascii(i64 %163)
  %165 = ptrtoint i8* %164 to i32
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = icmp eq i32 %166, 127
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %172

169:                                              ; preds = %162
  %170 = load i32, i32* %3, align 4
  %171 = or i32 %170, 64
  br label %172

172:                                              ; preds = %169, %168
  %173 = phi i32 [ 63, %168 ], [ %171, %169 ]
  store i32 %173, i32* %3, align 4
  %174 = call i32 @putchar(i32 94)
  %175 = load i32, i32* @EOF, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @putchar(i32 %178)
  %180 = load i32, i32* @EOF, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %172
  br label %202

183:                                              ; preds = %177
  br label %200

184:                                              ; preds = %158
  %185 = load i64, i64* %7, align 8
  %186 = call i64 @putwchar(i64 %185)
  %187 = load i64, i64* @WEOF, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %202

190:                                              ; preds = %184
  store i32 -1, i32* %3, align 4
  br label %200

191:                                              ; preds = %102
  br label %192

192:                                              ; preds = %191, %101
  br label %193

193:                                              ; preds = %192, %84
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @putchar(i32 %194)
  %196 = load i32, i32* @EOF, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %202

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %190, %183, %100, %36
  %201 = load i32, i32* %3, align 4
  store i32 %201, i32* %6, align 4
  br label %19

202:                                              ; preds = %198, %189, %182, %153, %135, %131, %99, %83, %68, %57, %19
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %204 = call i64 @ferror(%struct.TYPE_12__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* @filename, align 4
  %208 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store i32 1, i32* @rval, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = call i32 @clearerr(%struct.TYPE_12__* %209)
  br label %211

211:                                              ; preds = %206, %202
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stdout, align 8
  %213 = call i64 @ferror(%struct.TYPE_12__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %211
  ret void
}

declare dso_local i64 @feof(%struct.TYPE_12__*) #1

declare dso_local i32 @clearerr(%struct.TYPE_12__*) #1

declare dso_local i32 @getc(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @ferror(%struct.TYPE_12__*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @ungetc(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @getwc(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iswascii(i64) #1

declare dso_local i32 @iswprint(i64) #1

declare dso_local i8* @toascii(i64) #1

declare dso_local i64 @iswcntrl(i64) #1

declare dso_local i64 @putwchar(i64) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
