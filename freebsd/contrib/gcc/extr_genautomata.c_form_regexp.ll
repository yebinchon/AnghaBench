; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_form_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_form_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }

@irp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@NOTHING_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @form_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @form_regexp(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %262 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %30
    i32 134, label %56
    i32 132, label %136
    i32 131, label %190
    i32 133, label %257
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = call %struct.TYPE_18__* @REGEXP_UNIT(%struct.TYPE_17__* %15)
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %24

19:                                               ; preds = %9
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = call %struct.TYPE_20__* @REGEXP_RESERV(%struct.TYPE_17__* %20)
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i8* [ %18, %14 ], [ %23, %19 ]
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @obstack_grow(i32* @irp, i8* %26, i32 %28)
  br label %264

30:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call %struct.TYPE_19__* @REGEXP_SEQUENCE(%struct.TYPE_17__* %33)
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @obstack_1grow(i32* @irp, i8 signext 44)
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = call %struct.TYPE_19__* @REGEXP_SEQUENCE(%struct.TYPE_17__* %44)
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %47, i64 %49
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  call void @form_regexp(%struct.TYPE_17__* %51)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %31

55:                                               ; preds = %31
  br label %264

56:                                               ; preds = %1
  %57 = call i32 @obstack_1grow(i32* @irp, i8 signext 40)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %131, %56
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %60)
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @obstack_1grow(i32* @irp, i8 signext 43)
  br label %70

70:                                               ; preds = %68, %65
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %71)
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %74, i64 %76
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 129
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %83)
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %86, i64 %88
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 132
  br i1 %93, label %94, label %96

94:                                               ; preds = %82, %70
  %95 = call i32 @obstack_1grow(i32* @irp, i8 signext 40)
  br label %96

96:                                               ; preds = %94, %82
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %97)
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %100, i64 %102
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  call void @form_regexp(%struct.TYPE_17__* %104)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %105)
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %108, i64 %110
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %128, label %116

116:                                              ; preds = %96
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %118 = call %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__* %117)
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %120, i64 %122
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 132
  br i1 %127, label %128, label %130

128:                                              ; preds = %116, %96
  %129 = call i32 @obstack_1grow(i32* @irp, i8 signext 41)
  br label %130

130:                                              ; preds = %128, %116
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %58

134:                                              ; preds = %58
  %135 = call i32 @obstack_1grow(i32* @irp, i8 signext 41)
  br label %264

136:                                              ; preds = %1
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %186, %136
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %140 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_17__* %139)
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %189

144:                                              ; preds = %137
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @obstack_1grow(i32* @irp, i8 signext 124)
  br label %149

149:                                              ; preds = %147, %144
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %151 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_17__* %150)
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %153, i64 %155
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 129
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = call i32 @obstack_1grow(i32* @irp, i8 signext 40)
  br label %163

163:                                              ; preds = %161, %149
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %165 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_17__* %164)
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %167, i64 %169
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  call void @form_regexp(%struct.TYPE_17__* %171)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %173 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_17__* %172)
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %175, i64 %177
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 129
  br i1 %182, label %183, label %185

183:                                              ; preds = %163
  %184 = call i32 @obstack_1grow(i32* @irp, i8 signext 41)
  br label %185

185:                                              ; preds = %183, %163
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %137

189:                                              ; preds = %137
  br label %264

190:                                              ; preds = %1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %192 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %191)
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 129
  br i1 %197, label %214, label %198

198:                                              ; preds = %190
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %200 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %199)
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 134
  br i1 %205, label %214, label %206

206:                                              ; preds = %198
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %208 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %207)
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 132
  br i1 %213, label %214, label %216

214:                                              ; preds = %206, %198, %190
  %215 = call i32 @obstack_1grow(i32* @irp, i8 signext 40)
  br label %216

216:                                              ; preds = %214, %206
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %218 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %217)
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  call void @form_regexp(%struct.TYPE_17__* %220)
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %222 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %221)
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 129
  br i1 %227, label %244, label %228

228:                                              ; preds = %216
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %230 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %229)
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 134
  br i1 %235, label %244, label %236

236:                                              ; preds = %228
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %238 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %237)
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 132
  br i1 %243, label %244, label %246

244:                                              ; preds = %236, %228, %216
  %245 = call i32 @obstack_1grow(i32* @irp, i8 signext 41)
  br label %246

246:                                              ; preds = %244, %236
  %247 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %249 = call %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__* %248)
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @sprintf(i8* %247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %251)
  %253 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %254 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %255 = call i32 @strlen(i8* %254)
  %256 = call i32 @obstack_grow(i32* @irp, i8* %253, i32 %255)
  br label %264

257:                                              ; preds = %1
  %258 = load i8*, i8** @NOTHING_NAME, align 8
  %259 = load i8*, i8** @NOTHING_NAME, align 8
  %260 = call i32 @strlen(i8* %259)
  %261 = call i32 @obstack_grow(i32* @irp, i8* %258, i32 %260)
  br label %264

262:                                              ; preds = %1
  %263 = call i32 (...) @gcc_unreachable()
  br label %264

264:                                              ; preds = %262, %257, %246, %189, %134, %55, %24
  ret void
}

declare dso_local %struct.TYPE_18__* @REGEXP_UNIT(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_20__* @REGEXP_RESERV(%struct.TYPE_17__*) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_19__* @REGEXP_SEQUENCE(%struct.TYPE_17__*) #1

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local %struct.TYPE_16__* @REGEXP_ALLOF(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_21__* @REGEXP_REPEAT(%struct.TYPE_17__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
