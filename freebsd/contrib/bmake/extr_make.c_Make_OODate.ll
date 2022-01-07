; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_OODate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_OODate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8*, i8* }

@OP_JOIN = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@OP_EXEC = common dso_local global i32 0, align 4
@MAKE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"modified %s...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"non-existent...\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c".USE node...\00", align 1
@FALSE = common dso_local global i32 0, align 4
@OP_LIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"library...\00", align 1
@OP_DOUBLEDEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c".JOIN node...\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"source %smade...\00", align 1
@CHILDMADE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@TRUE = common dso_local global i32 0, align 4
@OP_FORCE = common dso_local global i32 0, align 4
@OP_PHONY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"! operator...\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c".PHONY node...\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c".EXEC node...\00", align 1
@OP_OPTIONAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"modified before source %s...\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"non-existent and no sources...\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c":: operator and no sources...\00", align 1
@FORCE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"non existing child...\00", align 1
@MakeTimeStamp = common dso_local global i32 0, align 4
@useMeta = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Make_OODate(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @OP_JOIN, align 4
  %8 = load i32, i32* @OP_USE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @OP_USEBEFORE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OP_EXEC, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %6, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 @Dir_MTime(%struct.TYPE_10__* %17, i32 1)
  %19 = load i32, i32* @MAKE, align 4
  %20 = call i64 @DEBUG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @debug_file, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @Targ_FmtTime(i64 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @debug_file, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OP_USE, align 4
  %44 = load i32, i32* @OP_USEBEFORE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i32, i32* @MAKE, align 4
  %50 = call i64 @DEBUG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @debug_file, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %318

57:                                               ; preds = %39
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @OP_LIB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = call i64 @Arch_IsLib(%struct.TYPE_10__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @MAKE, align 4
  %75 = call i64 @DEBUG(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @debug_file, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = call i64 @Arch_LibOODate(%struct.TYPE_10__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = icmp eq %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @OP_DOUBLEDEP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %94, %89
  %102 = phi i1 [ false, %89 ], [ %100, %94 ]
  br label %103

103:                                              ; preds = %101, %85, %80
  %104 = phi i1 [ true, %85 ], [ true, %80 ], [ %102, %101 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %317

106:                                              ; preds = %69, %57
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @OP_JOIN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %106
  %114 = load i32, i32* @MAKE, align 4
  %115 = call i64 @DEBUG(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @debug_file, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* @MAKE, align 4
  %122 = call i64 @DEBUG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* @debug_file, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CHILDMADE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %124, %120
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CHILDMADE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @TRUE, align 4
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @FALSE, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %3, align 4
  br label %316

148:                                              ; preds = %106
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @OP_FORCE, align 4
  %153 = load i32, i32* @OP_EXEC, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @OP_PHONY, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %151, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %148
  %160 = load i32, i32* @MAKE, align 4
  %161 = call i64 @DEBUG(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @OP_FORCE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* @debug_file, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %187

173:                                              ; preds = %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @OP_PHONY, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32, i32* @debug_file, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %186

183:                                              ; preds = %173
  %184 = load i32, i32* @debug_file, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %159
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %3, align 4
  br label %315

190:                                              ; preds = %148
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = icmp ne %struct.TYPE_9__* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp slt i64 %198, %203
  br i1 %204, label %229, label %205

205:                                              ; preds = %195, %190
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = icmp eq %struct.TYPE_9__* %208, null
  br i1 %209, label %210, label %286

210:                                              ; preds = %205
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @OP_OPTIONAL, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %215, %210
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @OP_DOUBLEDEP, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %286

229:                                              ; preds = %222, %215, %195
  %230 = load i32, i32* @MAKE, align 4
  %231 = call i64 @DEBUG(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %284

233:                                              ; preds = %229
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = icmp ne %struct.TYPE_9__* %236, null
  br i1 %237, label %238, label %271

238:                                              ; preds = %233
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp slt i64 %241, %246
  br i1 %247, label %248, label %271

248:                                              ; preds = %238
  %249 = load i32, i32* @debug_file, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %248
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  br label %268

262:                                              ; preds = %248
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  br label %268

268:                                              ; preds = %262, %256
  %269 = phi i8* [ %261, %256 ], [ %267, %262 ]
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %249, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %269)
  br label %283

271:                                              ; preds = %238, %233
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32, i32* @debug_file, align 4
  %278 = call i32 (i32, i8*, ...) @fprintf(i32 %277, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %282

279:                                              ; preds = %271
  %280 = load i32, i32* @debug_file, align 4
  %281 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %276
  br label %283

283:                                              ; preds = %282, %268
  br label %284

284:                                              ; preds = %283, %229
  %285 = load i32, i32* @TRUE, align 4
  store i32 %285, i32* %3, align 4
  br label %314

286:                                              ; preds = %222, %205
  %287 = load i32, i32* @MAKE, align 4
  %288 = call i64 @DEBUG(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @FORCE, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %290
  %298 = load i32, i32* @debug_file, align 4
  %299 = call i32 (i32, i8*, ...) @fprintf(i32 %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %300

300:                                              ; preds = %297, %290
  br label %301

301:                                              ; preds = %300, %286
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @FORCE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @TRUE, align 4
  br label %312

310:                                              ; preds = %301
  %311 = load i32, i32* @FALSE, align 4
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi i32 [ %309, %308 ], [ %311, %310 ]
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %312, %284
  br label %315

315:                                              ; preds = %314, %188
  br label %316

316:                                              ; preds = %315, %146
  br label %317

317:                                              ; preds = %316, %103
  br label %318

318:                                              ; preds = %317, %55
  %319 = load i32, i32* %3, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %318
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @MakeTimeStamp, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %327 = call i32 @Lst_ForEach(i32 %324, i32 %325, %struct.TYPE_10__* %326)
  br label %328

328:                                              ; preds = %321, %318
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @Dir_MTime(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @Targ_FmtTime(i64) #1

declare dso_local i64 @Arch_IsLib(%struct.TYPE_10__*) #1

declare dso_local i64 @Arch_LibOODate(%struct.TYPE_10__*) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
