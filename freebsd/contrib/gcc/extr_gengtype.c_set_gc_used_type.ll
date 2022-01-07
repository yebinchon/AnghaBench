; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_set_gc_used_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_set_gc_used_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__**, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }

@NUM_PARAM = common dso_local global i32 0, align 4
@GC_POINTED_TO = common dso_local global i32 0, align 4
@GC_USED = common dso_local global i32 0, align 4
@GC_MAYBE_POINTED_TO = common dso_local global i32 0, align 4
@GC_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, %struct.TYPE_17__**)* @set_gc_used_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gc_used_type(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %6, align 8
  %15 = load i32, i32* @NUM_PARAM, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %248

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %247 [
    i32 129, label %30
    i32 128, label %30
    i32 130, label %151
    i32 133, label %157
    i32 132, label %165
    i32 131, label %183
  ]

30:                                               ; preds = %23, %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @process_gc_options(i32 %35, i32 %36, i32* %8, i32* %8, i32* %8, %struct.TYPE_17__** %9)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %7, align 8
  br label %43

43:                                               ; preds = %146, %30
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %150

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @process_gc_options(i32 %49, i32 %50, i32* %10, i32* %11, i32* %12, %struct.TYPE_17__** %13)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %53 = icmp ne %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = load i32, i32* @GC_POINTED_TO, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi %struct.TYPE_17__** [ %67, %66 ], [ null, %68 ]
  call void @set_gc_used_type(%struct.TYPE_17__* %62, i32 %63, %struct.TYPE_17__** %70)
  br label %145

71:                                               ; preds = %54, %46
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = load i32, i32* @GC_USED, align 4
  call void @set_gc_used_type(%struct.TYPE_17__* %87, i32 %88, %struct.TYPE_17__** null)
  br label %144

89:                                               ; preds = %74, %71
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 130
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load i32, i32* @GC_MAYBE_POINTED_TO, align 4
  call void @set_gc_used_type(%struct.TYPE_17__* %105, i32 %106, %struct.TYPE_17__** null)
  br label %143

107:                                              ; preds = %92, %89
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 130
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %119 = icmp ne %struct.TYPE_17__** %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %128 = call %struct.TYPE_17__* @find_param_structure(%struct.TYPE_17__* %126, %struct.TYPE_17__** %127)
  %129 = load i32, i32* @GC_POINTED_TO, align 4
  call void @set_gc_used_type(%struct.TYPE_17__* %128, i32 %129, %struct.TYPE_17__** null)
  br label %142

130:                                              ; preds = %117, %110, %107
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = load i32, i32* @GC_USED, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  br label %140

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi %struct.TYPE_17__** [ %138, %137 ], [ null, %139 ]
  call void @set_gc_used_type(%struct.TYPE_17__* %133, i32 %134, %struct.TYPE_17__** %141)
  br label %142

142:                                              ; preds = %140, %120
  br label %143

143:                                              ; preds = %142, %99
  br label %144

144:                                              ; preds = %143, %81
  br label %145

145:                                              ; preds = %144, %69
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %7, align 8
  br label %43

150:                                              ; preds = %43
  br label %248

151:                                              ; preds = %23
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load i32, i32* @GC_POINTED_TO, align 4
  call void @set_gc_used_type(%struct.TYPE_17__* %155, i32 %156, %struct.TYPE_17__** null)
  br label %248

157:                                              ; preds = %23
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* @GC_USED, align 4
  %164 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  call void @set_gc_used_type(%struct.TYPE_17__* %162, i32 %163, %struct.TYPE_17__** %164)
  br label %248

165:                                              ; preds = %23
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  store %struct.TYPE_17__* %170, %struct.TYPE_17__** %4, align 8
  br label %171

171:                                              ; preds = %178, %165
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %173 = icmp ne %struct.TYPE_17__* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  call void @set_gc_used_type(%struct.TYPE_17__* %175, i32 %176, %struct.TYPE_17__** %177)
  br label %178

178:                                              ; preds = %174
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  store %struct.TYPE_17__* %181, %struct.TYPE_17__** %4, align 8
  br label %171

182:                                              ; preds = %171
  br label %248

183:                                              ; preds = %23
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %211, %183
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @NUM_PARAM, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %184
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %193, i64 %195
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = icmp ne %struct.TYPE_17__* %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %188
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %204, i64 %206
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = load i32, i32* @GC_USED, align 4
  call void @set_gc_used_type(%struct.TYPE_17__* %208, i32 %209, %struct.TYPE_17__** null)
  br label %210

210:                                              ; preds = %199, %188
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %184

214:                                              ; preds = %184
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @GC_POINTED_TO, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %214
  %225 = load i32, i32* @GC_POINTED_TO, align 4
  store i32 %225, i32* %5, align 4
  br label %228

226:                                              ; preds = %214
  %227 = load i32, i32* @GC_USED, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = load i32, i32* @GC_UNUSED, align 4
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store i32 %229, i32* %235, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %245, align 8
  call void @set_gc_used_type(%struct.TYPE_17__* %240, i32 %241, %struct.TYPE_17__** %246)
  br label %248

247:                                              ; preds = %23
  br label %248

248:                                              ; preds = %22, %247, %228, %182, %157, %151, %150
  ret void
}

declare dso_local i32 @process_gc_options(i32, i32, i32*, i32*, i32*, %struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_17__* @find_param_structure(%struct.TYPE_17__*, %struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
