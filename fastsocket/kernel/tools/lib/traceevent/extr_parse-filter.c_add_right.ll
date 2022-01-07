; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_add_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_add_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, %struct.filter_arg*, %struct.filter_arg* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32*, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.filter_arg* }
%struct.TYPE_9__ = type { %struct.filter_arg* }

@.str = private unnamed_addr constant [15 x i8] c"Illegal rvalue\00", align 1
@FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@FILTER_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Illegal lvalue for string comparison\00", align 1
@FILTER_CMP_MATCH = common dso_local global i32 0, align 4
@FILTER_CMP_NOT_MATCH = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"RegEx '%s' did not compute\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal comparison for string\00", align 1
@FILTER_ARG_STR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"malloc string\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Op not allowed with integers\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_arg*, %struct.filter_arg*, i8**)* @add_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_right(%struct.filter_arg* %0, %struct.filter_arg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter_arg*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.filter_arg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.filter_arg* %0, %struct.filter_arg** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %13 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %220 [
    i32 139, label %15
    i32 136, label %27
    i32 137, label %39
  ]

15:                                               ; preds = %3
  %16 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %17 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.filter_arg*, %struct.filter_arg** %18, align 8
  %20 = icmp ne %struct.filter_arg* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %222

22:                                               ; preds = %15
  %23 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %24 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %25 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store %struct.filter_arg* %23, %struct.filter_arg** %26, align 8
  br label %221

27:                                               ; preds = %3
  %28 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %29 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.filter_arg*, %struct.filter_arg** %30, align 8
  %32 = icmp ne %struct.filter_arg* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %222

34:                                               ; preds = %27
  %35 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %36 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %37 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.filter_arg* %35, %struct.filter_arg** %38, align 8
  br label %221

39:                                               ; preds = %3
  %40 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %41 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.filter_arg*, %struct.filter_arg** %42, align 8
  %44 = icmp ne %struct.filter_arg* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %222

46:                                               ; preds = %39
  %47 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %48 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %51 [
    i32 135, label %50
    i32 138, label %50
  ]

50:                                               ; preds = %46, %46
  br label %54

51:                                               ; preds = %46
  %52 = load i8**, i8*** %7, align 8
  %53 = call i32 (i8**, i8*, ...) @show_error(i8** %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

54:                                               ; preds = %50
  %55 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %56 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %218 [
    i32 134, label %59
    i32 128, label %83
    i32 129, label %203
  ]

59:                                               ; preds = %54
  %60 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %61 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %68 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 130
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %74 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 131
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %80 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 129, i32* %81, align 8
  br label %204

82:                                               ; preds = %72, %66, %59
  br label %83

83:                                               ; preds = %54, %82
  %84 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %85 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %10, align 4
  %88 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %89 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load %struct.filter_arg*, %struct.filter_arg** %90, align 8
  store %struct.filter_arg* %91, %struct.filter_arg** %8, align 8
  %92 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %93 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %9, align 8
  %96 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %97 = call i32 @memset(%struct.filter_arg* %96, i32 0, i32 112)
  %98 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  %99 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FILTER_ARG_BOOLEAN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %83
  %104 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  %105 = call i32 @free_arg(%struct.filter_arg* %104)
  %106 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %107 = call i32 @free_arg(%struct.filter_arg* %106)
  %108 = load i32, i32* @FILTER_ARG_BOOLEAN, align 4
  %109 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %110 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @FILTER_FALSE, align 4
  %112 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %113 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %219

115:                                              ; preds = %83
  %116 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  %117 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 138
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8**, i8*** %7, align 8
  %122 = call i32 (i8**, i8*, ...) @show_error(i8** %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  switch i32 %124, label %145 [
    i32 133, label %125
    i32 132, label %127
    i32 130, label %129
    i32 131, label %129
  ]

125:                                              ; preds = %123
  %126 = load i32, i32* @FILTER_CMP_MATCH, align 4
  store i32 %126, i32* %10, align 4
  br label %148

127:                                              ; preds = %123
  %128 = load i32, i32* @FILTER_CMP_NOT_MATCH, align 4
  store i32 %128, i32* %10, align 4
  br label %148

129:                                              ; preds = %123, %123
  %130 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %131 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* @REG_ICASE, align 4
  %135 = load i32, i32* @REG_NOSUB, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @regcomp(i32* %132, i8* %133, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load i8**, i8*** %7, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 (i8**, i8*, ...) @show_error(i8** %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  store i32 -1, i32* %4, align 4
  br label %225

144:                                              ; preds = %129
  br label %148

145:                                              ; preds = %123
  %146 = load i8**, i8*** %7, align 8
  %147 = call i32 (i8**, i8*, ...) @show_error(i8** %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

148:                                              ; preds = %144, %127, %125
  %149 = load i32, i32* @FILTER_ARG_STR, align 4
  %150 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %151 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %154 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  %157 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %161 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %162, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @strdup(i8* %163)
  %165 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %166 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 8
  %168 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %169 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %148
  %174 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %148
  %176 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %177 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, 1
  %183 = trunc i64 %182 to i32
  %184 = call i32* @malloc_or_die(i32 %183)
  %185 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %186 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  store i32* %184, i32** %187, align 8
  %188 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %189 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %193 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %191, i64 %197
  store i32 0, i32* %198, align 4
  %199 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %200 = call i32 @free_arg(%struct.filter_arg* %199)
  %201 = load %struct.filter_arg*, %struct.filter_arg** %8, align 8
  %202 = call i32 @free_arg(%struct.filter_arg* %201)
  br label %219

203:                                              ; preds = %54
  br label %204

204:                                              ; preds = %203, %78
  %205 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %206 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %212 [
    i32 130, label %209
    i32 131, label %209
  ]

209:                                              ; preds = %204, %204
  %210 = load i8**, i8*** %7, align 8
  %211 = call i32 (i8**, i8*, ...) @show_error(i8** %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %215 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %216 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  store %struct.filter_arg* %214, %struct.filter_arg** %217, align 8
  br label %219

218:                                              ; preds = %54
  br label %222

219:                                              ; preds = %213, %175, %103
  br label %221

220:                                              ; preds = %3
  br label %222

221:                                              ; preds = %219, %34, %22
  store i32 0, i32* %4, align 4
  br label %225

222:                                              ; preds = %220, %218, %45, %33, %21
  %223 = load i8**, i8*** %7, align 8
  %224 = call i32 (i8**, i8*, ...) @show_error(i8** %223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %225

225:                                              ; preds = %222, %221, %209, %145, %140, %120, %51
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @show_error(i8**, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.filter_arg*, i32, i32) #1

declare dso_local i32 @free_arg(%struct.filter_arg*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32* @malloc_or_die(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
