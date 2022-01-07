; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_get_output_file_with_visibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_get_output_file_with_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [9 x i8] c"system.h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".in\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"gt-%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"c-common.h\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"gt-c-common.h\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"c-common.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"c-tree.h\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gt-c-decl.h\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"c-decl.c\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"cp-tree.h\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gt-cp-tree.h\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"cp/tree.c\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"decl.h\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"gt-cp-decl.h\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"cp/decl.c\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"name-lookup.h\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"gt-cp-name-lookup.h\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"cp/name-lookup.c\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"objc\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"objc-act.h\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"gt-objc-objc-act.h\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"objc/objc-act.c\00", align 1
@NUM_BASE_FILES = common dso_local global i64 0, align 8
@lang_dir_names = common dso_local global i8** null, align 8
@base_files = common dso_local global %struct.TYPE_6__** null, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"gtype-desc.c\00", align 1
@output_files = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @get_output_file_with_visibility(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @get_file_basename(i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -2
  %26 = call i64 @memcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %21, %14
  %29 = load i64, i64* %5, align 8
  %30 = icmp ugt i64 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -2
  %36 = call i64 @memcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31, %28
  %39 = load i64, i64* %5, align 8
  %40 = icmp ugt i64 %39, 3
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -3
  %46 = call i64 @memcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %41, %31, %21
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @xasprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i8* %50, i8** %9, align 8
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 46
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @ISALNUM(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  store i8 45, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %61, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %9, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @memcpy(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %7, align 8
  br label %195

76:                                               ; preds = %41, %38
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %194

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %193

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @IS_DIR_SEPARATOR(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %192

102:                                              ; preds = %96, %90, %86
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @IS_DIR_SEPARATOR(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %7, align 8
  br label %191

118:                                              ; preds = %112, %106, %102
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @strncmp(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @IS_DIR_SEPARATOR(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %7, align 8
  br label %190

134:                                              ; preds = %128, %122, %118
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @strncmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 4)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @IS_DIR_SEPARATOR(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 5
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8** %7, align 8
  br label %189

150:                                              ; preds = %144, %138, %134
  store i64 0, i64* %10, align 8
  br label %151

151:                                              ; preds = %185, %150
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @NUM_BASE_FILES, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %151
  %156 = load i8*, i8** %6, align 8
  %157 = load i8**, i8*** @lang_dir_names, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i8**, i8*** @lang_dir_names, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = call i64 @memcmp(i8* %156, i8* %160, i64 %165)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %155
  %169 = load i8*, i8** %6, align 8
  %170 = load i8**, i8*** @lang_dir_names, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strlen(i8* %173)
  %175 = getelementptr inbounds i8, i8* %169, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 47
  br i1 %178, label %179, label %184

179:                                              ; preds = %168
  %180 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @base_files, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %180, i64 %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %2, align 8
  br label %219

184:                                              ; preds = %168, %155
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %10, align 8
  br label %151

188:                                              ; preds = %151
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %189

189:                                              ; preds = %188, %149
  br label %190

190:                                              ; preds = %189, %133
  br label %191

191:                                              ; preds = %190, %117
  br label %192

192:                                              ; preds = %191, %101
  br label %193

193:                                              ; preds = %192, %85
  br label %194

194:                                              ; preds = %193, %80
  br label %195

195:                                              ; preds = %194, %72
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @output_files, align 8
  store %struct.TYPE_6__* %196, %struct.TYPE_6__** %4, align 8
  br label %197

197:                                              ; preds = %210, %195
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = icmp ne %struct.TYPE_6__* %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = call i64 @strcmp(i8* %203, i8* %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %208, %struct.TYPE_6__** %2, align 8
  br label %219

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  store %struct.TYPE_6__* %213, %struct.TYPE_6__** %4, align 8
  br label %197

214:                                              ; preds = %197
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = call %struct.TYPE_6__* @create_file(i8* %215, i8* %216)
  store %struct.TYPE_6__* %217, %struct.TYPE_6__** %4, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %2, align 8
  br label %219

219:                                              ; preds = %214, %207, %179
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %220
}

declare dso_local i8* @get_file_basename(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @xasprintf(i8*, i8*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local %struct.TYPE_6__* @create_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
