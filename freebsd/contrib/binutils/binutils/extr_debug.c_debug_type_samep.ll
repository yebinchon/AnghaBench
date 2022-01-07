; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_type_samep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_type_samep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.debug_type_compare_list*, i32 }
%struct.debug_type_compare_list = type { %struct.debug_type_compare_list*, %struct.debug_type*, %struct.debug_type* }
%struct.debug_type = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.debug_type*, %struct.debug_type*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.debug_type*, %struct.TYPE_19__*, %struct.debug_type*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.debug_type*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_24__ = type { %struct.debug_type**, %struct.debug_type*, %struct.debug_type*, i32 }
%struct.TYPE_23__ = type { %struct.debug_type*, %struct.debug_type* }
%struct.TYPE_22__ = type { %struct.debug_type*, i32 }
%struct.TYPE_21__ = type { %struct.debug_type*, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.debug_type*, i32, i32 }
%struct.TYPE_19__ = type { %struct.debug_type**, %struct.debug_type*, i32 }
%struct.TYPE_18__ = type { i8**, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.debug_type** }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_KIND_INDIRECT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_type*, %struct.debug_type*)* @debug_type_samep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_type_samep(%struct.debug_handle* %0, %struct.debug_type* %1, %struct.debug_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_handle*, align 8
  %6 = alloca %struct.debug_type*, align 8
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca %struct.debug_type_compare_list*, align 8
  %9 = alloca %struct.debug_type_compare_list, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.debug_type**, align 8
  %16 = alloca %struct.debug_type**, align 8
  %17 = alloca %struct.debug_type**, align 8
  %18 = alloca %struct.debug_type**, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %5, align 8
  store %struct.debug_type* %1, %struct.debug_type** %6, align 8
  store %struct.debug_type* %2, %struct.debug_type** %7, align 8
  %19 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %20 = icmp eq %struct.debug_type* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %23 = icmp eq %struct.debug_type* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %853

25:                                               ; preds = %3
  %26 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %27 = icmp eq %struct.debug_type* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %853

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %49, %30
  %32 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %33 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DEBUG_KIND_INDIRECT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %39 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 14
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.debug_type**, %struct.debug_type*** %42, align 8
  %44 = load %struct.debug_type*, %struct.debug_type** %43, align 8
  store %struct.debug_type* %44, %struct.debug_type** %6, align 8
  %45 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %46 = icmp eq %struct.debug_type* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %853

49:                                               ; preds = %37
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %69, %50
  %52 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %53 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DEBUG_KIND_INDIRECT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %59 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 14
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.debug_type**, %struct.debug_type*** %62, align 8
  %64 = load %struct.debug_type*, %struct.debug_type** %63, align 8
  store %struct.debug_type* %64, %struct.debug_type** %7, align 8
  %65 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %66 = icmp eq %struct.debug_type* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %853

69:                                               ; preds = %57
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %72 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %73 = icmp eq %struct.debug_type* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %4, align 4
  br label %853

76:                                               ; preds = %70
  %77 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %78 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 139
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %83 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 132
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %88 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %89 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.debug_type*, %struct.debug_type** %92, align 8
  %94 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %95 = call i32 @debug_type_samep(%struct.debug_handle* %87, %struct.debug_type* %93, %struct.debug_type* %94)
  store i32 %95, i32* %4, align 4
  br label %853

96:                                               ; preds = %81, %76
  %97 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %98 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 132
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %103 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 139
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %108 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %109 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %110 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.debug_type*, %struct.debug_type** %113, align 8
  %115 = call i32 @debug_type_samep(%struct.debug_handle* %107, %struct.debug_type* %108, %struct.debug_type* %114)
  store i32 %115, i32* %4, align 4
  br label %853

116:                                              ; preds = %101, %96
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %119 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %122 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %127 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %130 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %125, %117
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %4, align 4
  br label %853

135:                                              ; preds = %125
  %136 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %137 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  switch i64 %138, label %139 [
    i64 129, label %140
    i64 143, label %140
    i64 146, label %140
    i64 148, label %140
    i64 141, label %142
  ]

139:                                              ; preds = %135
  br label %153

140:                                              ; preds = %135, %135, %135, %135
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %4, align 4
  br label %853

142:                                              ; preds = %135
  %143 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %144 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %148 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 13
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %146, %150
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %4, align 4
  br label %853

153:                                              ; preds = %139
  %154 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %155 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %154, i32 0, i32 0
  %156 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %155, align 8
  store %struct.debug_type_compare_list* %156, %struct.debug_type_compare_list** %8, align 8
  br label %157

157:                                              ; preds = %175, %153
  %158 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %8, align 8
  %159 = icmp ne %struct.debug_type_compare_list* %158, null
  br i1 %159, label %160, label %179

160:                                              ; preds = %157
  %161 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %8, align 8
  %162 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %161, i32 0, i32 2
  %163 = load %struct.debug_type*, %struct.debug_type** %162, align 8
  %164 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %165 = icmp eq %struct.debug_type* %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %8, align 8
  %168 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %167, i32 0, i32 1
  %169 = load %struct.debug_type*, %struct.debug_type** %168, align 8
  %170 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %171 = icmp eq %struct.debug_type* %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %4, align 4
  br label %853

174:                                              ; preds = %166, %160
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %8, align 8
  %177 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %176, i32 0, i32 0
  %178 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %177, align 8
  store %struct.debug_type_compare_list* %178, %struct.debug_type_compare_list** %8, align 8
  br label %157

179:                                              ; preds = %157
  %180 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %181 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %9, i32 0, i32 2
  store %struct.debug_type* %180, %struct.debug_type** %181, align 8
  %182 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %183 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %9, i32 0, i32 1
  store %struct.debug_type* %182, %struct.debug_type** %183, align 8
  %184 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %185 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %184, i32 0, i32 0
  %186 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %185, align 8
  %187 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %9, i32 0, i32 0
  store %struct.debug_type_compare_list* %186, %struct.debug_type_compare_list** %187, align 8
  %188 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %189 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %188, i32 0, i32 0
  store %struct.debug_type_compare_list* %9, %struct.debug_type_compare_list** %189, align 8
  %190 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %191 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  switch i64 %192, label %193 [
    i64 133, label %195
    i64 131, label %195
    i64 147, label %195
    i64 130, label %195
    i64 144, label %251
    i64 137, label %353
    i64 142, label %364
    i64 135, label %474
    i64 136, label %485
    i64 149, label %532
    i64 134, label %593
    i64 138, label %626
    i64 140, label %661
    i64 145, label %787
    i64 128, label %798
    i64 139, label %809
    i64 132, label %809
  ]

193:                                              ; preds = %179
  %194 = call i32 (...) @abort() #3
  unreachable

195:                                              ; preds = %179, %179, %179, %179
  %196 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %197 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 12
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = icmp eq %struct.TYPE_17__* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %203 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 12
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = icmp eq %struct.TYPE_17__* %205, null
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %10, align 4
  br label %250

208:                                              ; preds = %195
  %209 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %210 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 12
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = icmp eq %struct.TYPE_17__* %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* @FALSE, align 4
  store i32 %215, i32* %10, align 4
  br label %249

216:                                              ; preds = %208
  %217 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %218 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 12
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %224 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %222, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %216
  %228 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %229 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 12
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %235 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 12
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %233, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %227
  %242 = load i32, i32* @TRUE, align 4
  store i32 %242, i32* %10, align 4
  br label %248

243:                                              ; preds = %227, %216
  %244 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %245 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %246 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %247 = call i32 @debug_class_type_samep(%struct.debug_handle* %244, %struct.debug_type* %245, %struct.debug_type* %246)
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %243, %241
  br label %249

249:                                              ; preds = %248, %214
  br label %250

250:                                              ; preds = %249, %201
  br label %847

251:                                              ; preds = %179
  %252 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %253 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 11
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = icmp eq %struct.TYPE_18__* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %251
  %258 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %259 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 11
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = icmp eq %struct.TYPE_18__* %261, null
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %10, align 4
  br label %352

264:                                              ; preds = %251
  %265 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %266 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 11
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %267, align 8
  %269 = icmp eq %struct.TYPE_18__* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i32, i32* @FALSE, align 4
  store i32 %271, i32* %10, align 4
  br label %351

272:                                              ; preds = %264
  %273 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %274 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 11
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load i8**, i8*** %277, align 8
  store i8** %278, i8*** %11, align 8
  %279 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %280 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 11
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = load i8**, i8*** %283, align 8
  store i8** %284, i8*** %12, align 8
  %285 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %286 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 11
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  store i32* %290, i32** %13, align 8
  %291 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %292 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 11
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  store i32* %296, i32** %14, align 8
  br label %297

297:                                              ; preds = %331, %272
  %298 = load i8**, i8*** %11, align 8
  %299 = load i8*, i8** %298, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load i8**, i8*** %12, align 8
  %303 = load i8*, i8** %302, align 8
  %304 = icmp ne i8* %303, null
  br label %305

305:                                              ; preds = %301, %297
  %306 = phi i1 [ false, %297 ], [ %304, %301 ]
  br i1 %306, label %307, label %340

307:                                              ; preds = %305
  %308 = load i8**, i8*** %11, align 8
  %309 = load i8*, i8** %308, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = load i8**, i8*** %12, align 8
  %313 = load i8*, i8** %312, align 8
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %311, %315
  br i1 %316, label %330, label %317

317:                                              ; preds = %307
  %318 = load i32*, i32** %13, align 8
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %14, align 8
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %319, %321
  br i1 %322, label %330, label %323

323:                                              ; preds = %317
  %324 = load i8**, i8*** %11, align 8
  %325 = load i8*, i8** %324, align 8
  %326 = load i8**, i8*** %12, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @strcmp(i8* %325, i8* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %323, %317, %307
  br label %340

331:                                              ; preds = %323
  %332 = load i8**, i8*** %11, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i32 1
  store i8** %333, i8*** %11, align 8
  %334 = load i8**, i8*** %12, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i32 1
  store i8** %335, i8*** %12, align 8
  %336 = load i32*, i32** %13, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %13, align 8
  %338 = load i32*, i32** %14, align 8
  %339 = getelementptr inbounds i32, i32* %338, i32 1
  store i32* %339, i32** %14, align 8
  br label %297

340:                                              ; preds = %330, %305
  %341 = load i8**, i8*** %11, align 8
  %342 = load i8*, i8** %341, align 8
  %343 = icmp eq i8* %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i8**, i8*** %12, align 8
  %346 = load i8*, i8** %345, align 8
  %347 = icmp eq i8* %346, null
  br label %348

348:                                              ; preds = %344, %340
  %349 = phi i1 [ false, %340 ], [ %347, %344 ]
  %350 = zext i1 %349 to i32
  store i32 %350, i32* %10, align 4
  br label %351

351:                                              ; preds = %348, %270
  br label %352

352:                                              ; preds = %351, %257
  br label %847

353:                                              ; preds = %179
  %354 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %355 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %356 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 10
  %358 = load %struct.debug_type*, %struct.debug_type** %357, align 8
  %359 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %360 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 10
  %362 = load %struct.debug_type*, %struct.debug_type** %361, align 8
  %363 = call i32 @debug_type_samep(%struct.debug_handle* %354, %struct.debug_type* %358, %struct.debug_type* %362)
  store i32 %363, i32* %10, align 4
  br label %847

364:                                              ; preds = %179
  %365 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %366 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 9
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %372 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 9
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = icmp ne i32 %370, %376
  br i1 %377, label %412, label %378

378:                                              ; preds = %364
  %379 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %380 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %381 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 9
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load %struct.debug_type*, %struct.debug_type** %384, align 8
  %386 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %387 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 9
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 1
  %391 = load %struct.debug_type*, %struct.debug_type** %390, align 8
  %392 = call i32 @debug_type_samep(%struct.debug_handle* %379, %struct.debug_type* %385, %struct.debug_type* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %412

394:                                              ; preds = %378
  %395 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %396 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 9
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 0
  %400 = load %struct.debug_type**, %struct.debug_type*** %399, align 8
  %401 = icmp eq %struct.debug_type** %400, null
  %402 = zext i1 %401 to i32
  %403 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %404 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 9
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 0
  %408 = load %struct.debug_type**, %struct.debug_type*** %407, align 8
  %409 = icmp eq %struct.debug_type** %408, null
  %410 = zext i1 %409 to i32
  %411 = icmp ne i32 %402, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %394, %378, %364
  %413 = load i32, i32* @FALSE, align 4
  store i32 %413, i32* %10, align 4
  br label %473

414:                                              ; preds = %394
  %415 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %416 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 9
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 0
  %420 = load %struct.debug_type**, %struct.debug_type*** %419, align 8
  %421 = icmp eq %struct.debug_type** %420, null
  br i1 %421, label %422, label %424

422:                                              ; preds = %414
  %423 = load i32, i32* @TRUE, align 4
  store i32 %423, i32* %10, align 4
  br label %472

424:                                              ; preds = %414
  %425 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %426 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 9
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 0
  %430 = load %struct.debug_type**, %struct.debug_type*** %429, align 8
  store %struct.debug_type** %430, %struct.debug_type*** %15, align 8
  %431 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %432 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 9
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 0
  %436 = load %struct.debug_type**, %struct.debug_type*** %435, align 8
  store %struct.debug_type** %436, %struct.debug_type*** %16, align 8
  br label %437

437:                                              ; preds = %456, %424
  %438 = load %struct.debug_type**, %struct.debug_type*** %15, align 8
  %439 = load %struct.debug_type*, %struct.debug_type** %438, align 8
  %440 = icmp ne %struct.debug_type* %439, null
  br i1 %440, label %441, label %445

441:                                              ; preds = %437
  %442 = load %struct.debug_type**, %struct.debug_type*** %16, align 8
  %443 = load %struct.debug_type*, %struct.debug_type** %442, align 8
  %444 = icmp ne %struct.debug_type* %443, null
  br label %445

445:                                              ; preds = %441, %437
  %446 = phi i1 [ false, %437 ], [ %444, %441 ]
  br i1 %446, label %447, label %461

447:                                              ; preds = %445
  %448 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %449 = load %struct.debug_type**, %struct.debug_type*** %15, align 8
  %450 = load %struct.debug_type*, %struct.debug_type** %449, align 8
  %451 = load %struct.debug_type**, %struct.debug_type*** %16, align 8
  %452 = load %struct.debug_type*, %struct.debug_type** %451, align 8
  %453 = call i32 @debug_type_samep(%struct.debug_handle* %448, %struct.debug_type* %450, %struct.debug_type* %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %447
  br label %461

456:                                              ; preds = %447
  %457 = load %struct.debug_type**, %struct.debug_type*** %15, align 8
  %458 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %457, i32 1
  store %struct.debug_type** %458, %struct.debug_type*** %15, align 8
  %459 = load %struct.debug_type**, %struct.debug_type*** %16, align 8
  %460 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %459, i32 1
  store %struct.debug_type** %460, %struct.debug_type*** %16, align 8
  br label %437

461:                                              ; preds = %455, %445
  %462 = load %struct.debug_type**, %struct.debug_type*** %15, align 8
  %463 = load %struct.debug_type*, %struct.debug_type** %462, align 8
  %464 = icmp eq %struct.debug_type* %463, null
  br i1 %464, label %465, label %469

465:                                              ; preds = %461
  %466 = load %struct.debug_type**, %struct.debug_type*** %16, align 8
  %467 = load %struct.debug_type*, %struct.debug_type** %466, align 8
  %468 = icmp eq %struct.debug_type* %467, null
  br label %469

469:                                              ; preds = %465, %461
  %470 = phi i1 [ false, %461 ], [ %468, %465 ]
  %471 = zext i1 %470 to i32
  store i32 %471, i32* %10, align 4
  br label %472

472:                                              ; preds = %469, %422
  br label %473

473:                                              ; preds = %472, %412
  br label %847

474:                                              ; preds = %179
  %475 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %476 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %477 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 8
  %479 = load %struct.debug_type*, %struct.debug_type** %478, align 8
  %480 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %481 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %480, i32 0, i32 2
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 8
  %483 = load %struct.debug_type*, %struct.debug_type** %482, align 8
  %484 = call i32 @debug_type_samep(%struct.debug_handle* %475, %struct.debug_type* %479, %struct.debug_type* %483)
  store i32 %484, i32* %10, align 4
  br label %847

485:                                              ; preds = %179
  %486 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %487 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 7
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %493 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 7
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 4
  %498 = icmp eq i32 %491, %497
  br i1 %498, label %499, label %529

499:                                              ; preds = %485
  %500 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %501 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 7
  %503 = load %struct.TYPE_20__*, %struct.TYPE_20__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %507 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %506, i32 0, i32 2
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 7
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = icmp eq i32 %505, %511
  br i1 %512, label %513, label %529

513:                                              ; preds = %499
  %514 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %515 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %516 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %516, i32 0, i32 7
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 0
  %520 = load %struct.debug_type*, %struct.debug_type** %519, align 8
  %521 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %522 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i32 0, i32 7
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 0
  %526 = load %struct.debug_type*, %struct.debug_type** %525, align 8
  %527 = call i32 @debug_type_samep(%struct.debug_handle* %514, %struct.debug_type* %520, %struct.debug_type* %526)
  %528 = icmp ne i32 %527, 0
  br label %529

529:                                              ; preds = %513, %499, %485
  %530 = phi i1 [ false, %499 ], [ false, %485 ], [ %528, %513 ]
  %531 = zext i1 %530 to i32
  store i32 %531, i32* %10, align 4
  br label %532

532:                                              ; preds = %179, %529
  %533 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %534 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 6
  %536 = load %struct.TYPE_21__*, %struct.TYPE_21__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %540 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %540, i32 0, i32 6
  %542 = load %struct.TYPE_21__*, %struct.TYPE_21__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 8
  %545 = icmp eq i32 %538, %544
  br i1 %545, label %546, label %590

546:                                              ; preds = %532
  %547 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %548 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %547, i32 0, i32 2
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 6
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %554 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %554, i32 0, i32 6
  %556 = load %struct.TYPE_21__*, %struct.TYPE_21__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 4
  %559 = icmp eq i32 %552, %558
  br i1 %559, label %560, label %590

560:                                              ; preds = %546
  %561 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %562 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %561, i32 0, i32 2
  %563 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %562, i32 0, i32 6
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %568 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 6
  %570 = load %struct.TYPE_21__*, %struct.TYPE_21__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = icmp eq i32 %566, %572
  br i1 %573, label %574, label %590

574:                                              ; preds = %560
  %575 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %576 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %577 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %576, i32 0, i32 2
  %578 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %577, i32 0, i32 6
  %579 = load %struct.TYPE_21__*, %struct.TYPE_21__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %579, i32 0, i32 0
  %581 = load %struct.debug_type*, %struct.debug_type** %580, align 8
  %582 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %583 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %582, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %583, i32 0, i32 6
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 0
  %587 = load %struct.debug_type*, %struct.debug_type** %586, align 8
  %588 = call i32 @debug_type_samep(%struct.debug_handle* %575, %struct.debug_type* %581, %struct.debug_type* %587)
  %589 = icmp ne i32 %588, 0
  br label %590

590:                                              ; preds = %574, %560, %546, %532
  %591 = phi i1 [ false, %560 ], [ false, %546 ], [ false, %532 ], [ %589, %574 ]
  %592 = zext i1 %591 to i32
  store i32 %592, i32* %10, align 4
  br label %847

593:                                              ; preds = %179
  %594 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %595 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %594, i32 0, i32 2
  %596 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %595, i32 0, i32 5
  %597 = load %struct.TYPE_22__*, %struct.TYPE_22__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %601 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %601, i32 0, i32 5
  %603 = load %struct.TYPE_22__*, %struct.TYPE_22__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 8
  %606 = icmp eq i32 %599, %605
  br i1 %606, label %607, label %623

607:                                              ; preds = %593
  %608 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %609 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %610 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %610, i32 0, i32 5
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i32 0, i32 0
  %614 = load %struct.debug_type*, %struct.debug_type** %613, align 8
  %615 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %616 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %615, i32 0, i32 2
  %617 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %616, i32 0, i32 5
  %618 = load %struct.TYPE_22__*, %struct.TYPE_22__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %618, i32 0, i32 0
  %620 = load %struct.debug_type*, %struct.debug_type** %619, align 8
  %621 = call i32 @debug_type_samep(%struct.debug_handle* %608, %struct.debug_type* %614, %struct.debug_type* %620)
  %622 = icmp ne i32 %621, 0
  br label %623

623:                                              ; preds = %607, %593
  %624 = phi i1 [ false, %593 ], [ %622, %607 ]
  %625 = zext i1 %624 to i32
  store i32 %625, i32* %10, align 4
  br label %847

626:                                              ; preds = %179
  %627 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %628 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %629 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %628, i32 0, i32 2
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i32 0, i32 4
  %631 = load %struct.TYPE_23__*, %struct.TYPE_23__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %631, i32 0, i32 1
  %633 = load %struct.debug_type*, %struct.debug_type** %632, align 8
  %634 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %635 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %634, i32 0, i32 2
  %636 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %635, i32 0, i32 4
  %637 = load %struct.TYPE_23__*, %struct.TYPE_23__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %637, i32 0, i32 1
  %639 = load %struct.debug_type*, %struct.debug_type** %638, align 8
  %640 = call i32 @debug_type_samep(%struct.debug_handle* %627, %struct.debug_type* %633, %struct.debug_type* %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %658

642:                                              ; preds = %626
  %643 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %644 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %645 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %644, i32 0, i32 2
  %646 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %645, i32 0, i32 4
  %647 = load %struct.TYPE_23__*, %struct.TYPE_23__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %647, i32 0, i32 0
  %649 = load %struct.debug_type*, %struct.debug_type** %648, align 8
  %650 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %651 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %650, i32 0, i32 2
  %652 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %651, i32 0, i32 4
  %653 = load %struct.TYPE_23__*, %struct.TYPE_23__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %653, i32 0, i32 0
  %655 = load %struct.debug_type*, %struct.debug_type** %654, align 8
  %656 = call i32 @debug_type_samep(%struct.debug_handle* %643, %struct.debug_type* %649, %struct.debug_type* %655)
  %657 = icmp ne i32 %656, 0
  br label %658

658:                                              ; preds = %642, %626
  %659 = phi i1 [ false, %626 ], [ %657, %642 ]
  %660 = zext i1 %659 to i32
  store i32 %660, i32* %10, align 4
  br label %847

661:                                              ; preds = %179
  %662 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %663 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %663, i32 0, i32 3
  %665 = load %struct.TYPE_24__*, %struct.TYPE_24__** %664, align 8
  %666 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %665, i32 0, i32 3
  %667 = load i32, i32* %666, align 8
  %668 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %669 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %668, i32 0, i32 2
  %670 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %669, i32 0, i32 3
  %671 = load %struct.TYPE_24__*, %struct.TYPE_24__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 8
  %674 = icmp ne i32 %667, %673
  br i1 %674, label %725, label %675

675:                                              ; preds = %661
  %676 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %677 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %678 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %677, i32 0, i32 2
  %679 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %678, i32 0, i32 3
  %680 = load %struct.TYPE_24__*, %struct.TYPE_24__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %680, i32 0, i32 2
  %682 = load %struct.debug_type*, %struct.debug_type** %681, align 8
  %683 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %684 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 3
  %686 = load %struct.TYPE_24__*, %struct.TYPE_24__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %686, i32 0, i32 2
  %688 = load %struct.debug_type*, %struct.debug_type** %687, align 8
  %689 = call i32 @debug_type_samep(%struct.debug_handle* %676, %struct.debug_type* %682, %struct.debug_type* %688)
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %725

691:                                              ; preds = %675
  %692 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %693 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %694 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %693, i32 0, i32 2
  %695 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %694, i32 0, i32 3
  %696 = load %struct.TYPE_24__*, %struct.TYPE_24__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %696, i32 0, i32 1
  %698 = load %struct.debug_type*, %struct.debug_type** %697, align 8
  %699 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %700 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %699, i32 0, i32 2
  %701 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %700, i32 0, i32 3
  %702 = load %struct.TYPE_24__*, %struct.TYPE_24__** %701, align 8
  %703 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %702, i32 0, i32 1
  %704 = load %struct.debug_type*, %struct.debug_type** %703, align 8
  %705 = call i32 @debug_type_samep(%struct.debug_handle* %692, %struct.debug_type* %698, %struct.debug_type* %704)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %725

707:                                              ; preds = %691
  %708 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %709 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %708, i32 0, i32 2
  %710 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %709, i32 0, i32 3
  %711 = load %struct.TYPE_24__*, %struct.TYPE_24__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %711, i32 0, i32 0
  %713 = load %struct.debug_type**, %struct.debug_type*** %712, align 8
  %714 = icmp eq %struct.debug_type** %713, null
  %715 = zext i1 %714 to i32
  %716 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %717 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %716, i32 0, i32 2
  %718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %717, i32 0, i32 3
  %719 = load %struct.TYPE_24__*, %struct.TYPE_24__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %719, i32 0, i32 0
  %721 = load %struct.debug_type**, %struct.debug_type*** %720, align 8
  %722 = icmp eq %struct.debug_type** %721, null
  %723 = zext i1 %722 to i32
  %724 = icmp ne i32 %715, %723
  br i1 %724, label %725, label %727

725:                                              ; preds = %707, %691, %675, %661
  %726 = load i32, i32* @FALSE, align 4
  store i32 %726, i32* %10, align 4
  br label %786

727:                                              ; preds = %707
  %728 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %729 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %728, i32 0, i32 2
  %730 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %729, i32 0, i32 3
  %731 = load %struct.TYPE_24__*, %struct.TYPE_24__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %731, i32 0, i32 0
  %733 = load %struct.debug_type**, %struct.debug_type*** %732, align 8
  %734 = icmp eq %struct.debug_type** %733, null
  br i1 %734, label %735, label %737

735:                                              ; preds = %727
  %736 = load i32, i32* @TRUE, align 4
  store i32 %736, i32* %10, align 4
  br label %785

737:                                              ; preds = %727
  %738 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %739 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %739, i32 0, i32 3
  %741 = load %struct.TYPE_24__*, %struct.TYPE_24__** %740, align 8
  %742 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %741, i32 0, i32 0
  %743 = load %struct.debug_type**, %struct.debug_type*** %742, align 8
  store %struct.debug_type** %743, %struct.debug_type*** %17, align 8
  %744 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %745 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %744, i32 0, i32 2
  %746 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %745, i32 0, i32 3
  %747 = load %struct.TYPE_24__*, %struct.TYPE_24__** %746, align 8
  %748 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %747, i32 0, i32 0
  %749 = load %struct.debug_type**, %struct.debug_type*** %748, align 8
  store %struct.debug_type** %749, %struct.debug_type*** %18, align 8
  br label %750

750:                                              ; preds = %769, %737
  %751 = load %struct.debug_type**, %struct.debug_type*** %17, align 8
  %752 = load %struct.debug_type*, %struct.debug_type** %751, align 8
  %753 = icmp ne %struct.debug_type* %752, null
  br i1 %753, label %754, label %758

754:                                              ; preds = %750
  %755 = load %struct.debug_type**, %struct.debug_type*** %18, align 8
  %756 = load %struct.debug_type*, %struct.debug_type** %755, align 8
  %757 = icmp ne %struct.debug_type* %756, null
  br label %758

758:                                              ; preds = %754, %750
  %759 = phi i1 [ false, %750 ], [ %757, %754 ]
  br i1 %759, label %760, label %774

760:                                              ; preds = %758
  %761 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %762 = load %struct.debug_type**, %struct.debug_type*** %17, align 8
  %763 = load %struct.debug_type*, %struct.debug_type** %762, align 8
  %764 = load %struct.debug_type**, %struct.debug_type*** %18, align 8
  %765 = load %struct.debug_type*, %struct.debug_type** %764, align 8
  %766 = call i32 @debug_type_samep(%struct.debug_handle* %761, %struct.debug_type* %763, %struct.debug_type* %765)
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %769, label %768

768:                                              ; preds = %760
  br label %774

769:                                              ; preds = %760
  %770 = load %struct.debug_type**, %struct.debug_type*** %17, align 8
  %771 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %770, i32 1
  store %struct.debug_type** %771, %struct.debug_type*** %17, align 8
  %772 = load %struct.debug_type**, %struct.debug_type*** %18, align 8
  %773 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %772, i32 1
  store %struct.debug_type** %773, %struct.debug_type*** %18, align 8
  br label %750

774:                                              ; preds = %768, %758
  %775 = load %struct.debug_type**, %struct.debug_type*** %17, align 8
  %776 = load %struct.debug_type*, %struct.debug_type** %775, align 8
  %777 = icmp eq %struct.debug_type* %776, null
  br i1 %777, label %778, label %782

778:                                              ; preds = %774
  %779 = load %struct.debug_type**, %struct.debug_type*** %18, align 8
  %780 = load %struct.debug_type*, %struct.debug_type** %779, align 8
  %781 = icmp eq %struct.debug_type* %780, null
  br label %782

782:                                              ; preds = %778, %774
  %783 = phi i1 [ false, %774 ], [ %781, %778 ]
  %784 = zext i1 %783 to i32
  store i32 %784, i32* %10, align 4
  br label %785

785:                                              ; preds = %782, %735
  br label %786

786:                                              ; preds = %785, %725
  br label %847

787:                                              ; preds = %179
  %788 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %789 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %790 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %789, i32 0, i32 2
  %791 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %790, i32 0, i32 2
  %792 = load %struct.debug_type*, %struct.debug_type** %791, align 8
  %793 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %794 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %793, i32 0, i32 2
  %795 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %794, i32 0, i32 2
  %796 = load %struct.debug_type*, %struct.debug_type** %795, align 8
  %797 = call i32 @debug_type_samep(%struct.debug_handle* %788, %struct.debug_type* %792, %struct.debug_type* %796)
  store i32 %797, i32* %10, align 4
  br label %847

798:                                              ; preds = %179
  %799 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %800 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %801 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %800, i32 0, i32 2
  %802 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %801, i32 0, i32 1
  %803 = load %struct.debug_type*, %struct.debug_type** %802, align 8
  %804 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %805 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %804, i32 0, i32 2
  %806 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %805, i32 0, i32 1
  %807 = load %struct.debug_type*, %struct.debug_type** %806, align 8
  %808 = call i32 @debug_type_samep(%struct.debug_handle* %799, %struct.debug_type* %803, %struct.debug_type* %807)
  store i32 %808, i32* %10, align 4
  br label %847

809:                                              ; preds = %179, %179
  %810 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %811 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %810, i32 0, i32 2
  %812 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %811, i32 0, i32 0
  %813 = load %struct.TYPE_14__*, %struct.TYPE_14__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %813, i32 0, i32 1
  %815 = load %struct.TYPE_13__*, %struct.TYPE_13__** %814, align 8
  %816 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %815, i32 0, i32 0
  %817 = load i8*, i8** %816, align 8
  %818 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %819 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %818, i32 0, i32 2
  %820 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %819, i32 0, i32 0
  %821 = load %struct.TYPE_14__*, %struct.TYPE_14__** %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %821, i32 0, i32 1
  %823 = load %struct.TYPE_13__*, %struct.TYPE_13__** %822, align 8
  %824 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %823, i32 0, i32 0
  %825 = load i8*, i8** %824, align 8
  %826 = call i32 @strcmp(i8* %817, i8* %825)
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %844

828:                                              ; preds = %809
  %829 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %830 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %831 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %830, i32 0, i32 2
  %832 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %831, i32 0, i32 0
  %833 = load %struct.TYPE_14__*, %struct.TYPE_14__** %832, align 8
  %834 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %833, i32 0, i32 0
  %835 = load %struct.debug_type*, %struct.debug_type** %834, align 8
  %836 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %837 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %836, i32 0, i32 2
  %838 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %837, i32 0, i32 0
  %839 = load %struct.TYPE_14__*, %struct.TYPE_14__** %838, align 8
  %840 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %839, i32 0, i32 0
  %841 = load %struct.debug_type*, %struct.debug_type** %840, align 8
  %842 = call i32 @debug_type_samep(%struct.debug_handle* %829, %struct.debug_type* %835, %struct.debug_type* %841)
  %843 = icmp ne i32 %842, 0
  br label %844

844:                                              ; preds = %828, %809
  %845 = phi i1 [ false, %809 ], [ %843, %828 ]
  %846 = zext i1 %845 to i32
  store i32 %846, i32* %10, align 4
  br label %847

847:                                              ; preds = %844, %798, %787, %786, %658, %623, %590, %474, %473, %353, %352, %250
  %848 = getelementptr inbounds %struct.debug_type_compare_list, %struct.debug_type_compare_list* %9, i32 0, i32 0
  %849 = load %struct.debug_type_compare_list*, %struct.debug_type_compare_list** %848, align 8
  %850 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %851 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %850, i32 0, i32 0
  store %struct.debug_type_compare_list* %849, %struct.debug_type_compare_list** %851, align 8
  %852 = load i32, i32* %10, align 4
  store i32 %852, i32* %4, align 4
  br label %853

853:                                              ; preds = %847, %172, %142, %140, %133, %106, %86, %74, %67, %47, %28, %21
  %854 = load i32, i32* %4, align 4
  ret i32 %854
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @debug_class_type_samep(%struct.debug_handle*, %struct.debug_type*, %struct.debug_type*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
