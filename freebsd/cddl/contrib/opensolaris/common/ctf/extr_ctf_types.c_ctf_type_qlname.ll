; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_qlname.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_qlname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64*, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@CTF_PREC_POINTER = common dso_local global i64 0, align 8
@CTF_PREC_ARRAY = common dso_local global i64 0, align 8
@CTF_PREC_BASE = common dso_local global i64 0, align 8
@CTF_PREC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s`\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@ECTF_NAMELEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8*)* @ctf_type_qlname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_type_qlname(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CTF_ERR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %218

30:                                               ; preds = %25, %5
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @ctf_decl_init(%struct.TYPE_12__* %12, i8* %31, i64 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ctf_decl_push(%struct.TYPE_12__* %12, i32* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = call i32 @ctf_decl_fini(%struct.TYPE_12__* %12)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ctf_set_errno(i32* %42, i64 %44)
  store i32 %45, i32* %6, align 4
  br label %218

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @CTF_PREC_POINTER, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CTF_PREC_POINTER, align 8
  %53 = icmp ugt i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @CTF_PREC_ARRAY, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CTF_PREC_ARRAY, align 8
  %61 = icmp ugt i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = load i64, i64* @CTF_PREC_ARRAY, align 8
  br label %75

67:                                               ; preds = %46
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @CTF_PREC_POINTER, align 8
  br label %73

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i64 [ %71, %70 ], [ -1, %72 ]
  br label %75

75:                                               ; preds = %73, %65
  %76 = phi i64 [ %66, %65 ], [ %74, %73 ]
  store i64 %76, i64* %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @CTF_PREC_POINTER, align 8
  br label %89

81:                                               ; preds = %75
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @CTF_PREC_ARRAY, align 8
  br label %87

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i64 [ %85, %84 ], [ -1, %86 ]
  br label %89

89:                                               ; preds = %87, %79
  %90 = phi i64 [ %80, %79 ], [ %88, %87 ]
  store i64 %90, i64* %15, align 8
  store i32 133, i32* %19, align 4
  %91 = load i64, i64* @CTF_PREC_BASE, align 8
  store i64 %91, i64* %14, align 8
  br label %92

92:                                               ; preds = %201, %89
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @CTF_PREC_MAX, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %204

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %99
  %101 = call %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__* %100)
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %13, align 8
  br label %102

102:                                              ; preds = %191, %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = icmp ne %struct.TYPE_13__* %103, null
  br i1 %104, label %105, label %194

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  store i32* %106, i32** %20, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_11__* @ctf_lookup_by_id(i32** %20, i32 %109)
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %21, align 8
  %111 = load i32*, i32** %20, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @ctf_strptr(i32* %111, i32 %114)
  store i8* %115, i8** %22, align 8
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 133
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 140
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %118, %105
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %15, align 8
  br label %129

129:                                              ; preds = %127, %123
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %187 [
    i32 134, label %133
    i32 137, label %133
    i32 130, label %133
    i32 133, label %142
    i32 140, label %144
    i32 135, label %149
    i32 131, label %151
    i32 136, label %151
    i32 129, label %161
    i32 138, label %171
    i32 128, label %181
    i32 139, label %183
    i32 132, label %185
  ]

133:                                              ; preds = %129, %129, %129
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i8*, i8** %22, align 8
  %141 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %187

142:                                              ; preds = %129
  %143 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %187

144:                                              ; preds = %129
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %187

149:                                              ; preds = %129
  %150 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %187

151:                                              ; preds = %129, %129
  %152 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i8*, i8** %11, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i8*, i8** %22, align 8
  %160 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %159)
  br label %187

161:                                              ; preds = %129
  %162 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i8*, i8** %11, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %165, %161
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %169)
  br label %187

171:                                              ; preds = %129
  %172 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %173 = load i8*, i8** %11, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i8*, i8** %22, align 8
  %180 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %179)
  br label %187

181:                                              ; preds = %129
  %182 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %187

183:                                              ; preds = %129
  %184 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %187

185:                                              ; preds = %129
  %186 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %187

187:                                              ; preds = %129, %185, %183, %181, %178, %168, %158, %149, %144, %142, %139
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %187
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %193 = call %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__* %192)
  store %struct.TYPE_13__* %193, %struct.TYPE_13__** %13, align 8
  br label %102

194:                                              ; preds = %102
  %195 = load i64, i64* %16, align 8
  %196 = load i64, i64* %14, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 (%struct.TYPE_12__*, i8*, ...) @ctf_decl_sprintf(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %194
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %14, align 8
  br label %92

204:                                              ; preds = %92
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = icmp uge i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i32*, i32** %7, align 8
  %211 = load i64, i64* @ECTF_NAMELEN, align 8
  %212 = call i32 @ctf_set_errno(i32* %210, i64 %211)
  br label %213

213:                                              ; preds = %209, %204
  %214 = call i32 @ctf_decl_fini(%struct.TYPE_12__* %12)
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %213, %40, %29
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32 @ctf_decl_init(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @ctf_decl_push(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ctf_decl_fini(%struct.TYPE_12__*) #1

declare dso_local i32 @ctf_set_errno(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @ctf_list_next(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @ctf_lookup_by_id(i32**, i32) #1

declare dso_local i8* @ctf_strptr(i32*, i32) #1

declare dso_local i32 @ctf_decl_sprintf(%struct.TYPE_12__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
