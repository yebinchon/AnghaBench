; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Block_layout = type { i32, %struct.Block_descriptor*, i64, i32* }
%struct.Block_descriptor = type { i8*, i8*, i64, i64 }

@_Block_dump.buffer = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [28 x i8] c"NULL passed to _Block_dump\0A\00", align 1
@BLOCK_HAS_DESCRIPTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Block compiled by obsolete compiler, please recompile source for this Block\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"^%p (new layout) =\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"isa: NULL\0A\00", align 1
@_NSConcreteStackBlock = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"isa: stack Block\0A\00", align 1
@_NSConcreteMallocBlock = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"isa: malloc heap Block\0A\00", align 1
@_NSConcreteAutoBlock = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"isa: GC heap Block\0A\00", align 1
@_NSConcreteGlobalBlock = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"isa: global Block\0A\00", align 1
@_NSConcreteFinalizingBlock = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"isa: finalizing Block\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"isa?: %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"flags:\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" HASDESCRIPTOR\00", align 1
@BLOCK_NEEDS_FREE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" FREEME\00", align 1
@BLOCK_IS_GC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c" ISGC\00", align 1
@BLOCK_HAS_COPY_DISPOSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c" HASHELP\00", align 1
@BLOCK_HAS_CTOR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" HASCTOR\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"\0Arefcount: %u\0A\00", align 1
@BLOCK_REFCOUNT_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"invoke: %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"descriptor: %p\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"descriptor->reserved: %lu\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"descriptor->size: %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"descriptor->copy helper: %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"descriptor->dispose helper: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_Block_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Block_layout*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Block_descriptor*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.Block_layout*
  store %struct.Block_layout* %8, %struct.Block_layout** %4, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @_Block_dump.buffer, i64 0, i64 0), i8** %5, align 8
  %9 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %10 = icmp eq %struct.Block_layout* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @_Block_dump.buffer, i64 0, i64 0), i8** %2, align 8
  br label %259

14:                                               ; preds = %1
  %15 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %16 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BLOCK_HAS_DESCRIPTOR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %27 = bitcast %struct.Block_layout* %26 to i8*
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  %32 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %33 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i8*, i8** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  br label %117

42:                                               ; preds = %24
  %43 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %44 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** @_NSConcreteStackBlock, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i8*, i8** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  br label %116

54:                                               ; preds = %42
  %55 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %56 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** @_NSConcreteMallocBlock, align 8
  %59 = icmp eq i32* %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %5, align 8
  br label %115

66:                                               ; preds = %54
  %67 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %68 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** @_NSConcreteAutoBlock, align 8
  %71 = icmp eq i32* %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i8*, i8** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %5, align 8
  br label %114

78:                                               ; preds = %66
  %79 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %80 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** @_NSConcreteGlobalBlock, align 8
  %83 = icmp eq i32* %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i8*, i8** %5, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %5, align 8
  br label %113

90:                                               ; preds = %78
  %91 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %92 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** @_NSConcreteFinalizingBlock, align 8
  %95 = icmp eq i32* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i8*, i8** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %5, align 8
  br label %112

102:                                              ; preds = %90
  %103 = load i8*, i8** %5, align 8
  %104 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %105 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %5, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %5, align 8
  br label %112

112:                                              ; preds = %102, %96
  br label %113

113:                                              ; preds = %112, %84
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %60
  br label %116

116:                                              ; preds = %115, %48
  br label %117

117:                                              ; preds = %116, %36
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %120 = load i8*, i8** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %5, align 8
  %123 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %124 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @BLOCK_HAS_DESCRIPTOR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %117
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %132 = load i8*, i8** %5, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %5, align 8
  br label %135

135:                                              ; preds = %129, %117
  %136 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %137 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BLOCK_NEEDS_FREE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %145 = load i8*, i8** %5, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %5, align 8
  br label %148

148:                                              ; preds = %142, %135
  %149 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %150 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BLOCK_IS_GC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 (i8*, i8*, ...) @sprintf(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %158 = load i8*, i8** %5, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %5, align 8
  br label %161

161:                                              ; preds = %155, %148
  %162 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %163 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %171 = load i8*, i8** %5, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %5, align 8
  br label %174

174:                                              ; preds = %168, %161
  %175 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %176 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @BLOCK_HAS_CTOR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %184 = load i8*, i8** %5, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %5, align 8
  br label %187

187:                                              ; preds = %181, %174
  %188 = load i8*, i8** %5, align 8
  %189 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %190 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %193 = and i32 %191, %192
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %193)
  %195 = load i8*, i8** %5, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %5, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %200 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %202)
  %204 = load i8*, i8** %5, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %5, align 8
  %207 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %208 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %207, i32 0, i32 1
  %209 = load %struct.Block_descriptor*, %struct.Block_descriptor** %208, align 8
  store %struct.Block_descriptor* %209, %struct.Block_descriptor** %6, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = load %struct.Block_descriptor*, %struct.Block_descriptor** %6, align 8
  %212 = bitcast %struct.Block_descriptor* %211 to i8*
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %212)
  %214 = load i8*, i8** %5, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %5, align 8
  %217 = load i8*, i8** %5, align 8
  %218 = load %struct.Block_descriptor*, %struct.Block_descriptor** %6, align 8
  %219 = getelementptr inbounds %struct.Block_descriptor, %struct.Block_descriptor* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %220)
  %222 = load i8*, i8** %5, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %5, align 8
  %225 = load i8*, i8** %5, align 8
  %226 = load %struct.Block_descriptor*, %struct.Block_descriptor** %6, align 8
  %227 = getelementptr inbounds %struct.Block_descriptor, %struct.Block_descriptor* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %228)
  %230 = load i8*, i8** %5, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %5, align 8
  %233 = load %struct.Block_layout*, %struct.Block_layout** %4, align 8
  %234 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %187
  %240 = load i8*, i8** %5, align 8
  %241 = load %struct.Block_descriptor*, %struct.Block_descriptor** %6, align 8
  %242 = getelementptr inbounds %struct.Block_descriptor, %struct.Block_descriptor* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %240, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %244)
  %246 = load i8*, i8** %5, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %5, align 8
  %249 = load i8*, i8** %5, align 8
  %250 = load %struct.Block_descriptor*, %struct.Block_descriptor** %6, align 8
  %251 = getelementptr inbounds %struct.Block_descriptor, %struct.Block_descriptor* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 (i8*, i8*, ...) @sprintf(i8* %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i8* %253)
  %255 = load i8*, i8** %5, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %5, align 8
  br label %258

258:                                              ; preds = %239, %187
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @_Block_dump.buffer, i64 0, i64 0), i8** %2, align 8
  br label %259

259:                                              ; preds = %258, %11
  %260 = load i8*, i8** %2, align 8
  ret i8* %260
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
