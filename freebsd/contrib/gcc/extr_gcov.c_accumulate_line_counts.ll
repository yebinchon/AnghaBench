; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_accumulate_line_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_accumulate_line_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_20__, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@flag_all_blocks = common dso_local global i32 0, align 4
@flag_branches = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @accumulate_line_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accumulate_line_counts(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %25

25:                                               ; preds = %35, %1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %6, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %5, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %4, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %3, align 8
  br label %48

48:                                               ; preds = %375, %38
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %378

52:                                               ; preds = %48
  %53 = load i32, i32* @flag_all_blocks, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  br label %60

60:                                               ; preds = %74, %55
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %10, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 7
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = call i32 @add_branch_counts(%struct.TYPE_20__* %71, %struct.TYPE_19__* %72)
  br label %74

74:                                               ; preds = %63
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %9, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %8, align 8
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %81, align 8
  br label %352

82:                                               ; preds = %52
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = icmp ne %struct.TYPE_18__* %86, null
  br i1 %87, label %88, label %351

88:                                               ; preds = %82
  store i64 0, i64* %14, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  br label %93

93:                                               ; preds = %108, %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = icmp ne %struct.TYPE_18__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %13, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  br label %108

108:                                              ; preds = %96
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %109, %struct.TYPE_18__** %12, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %110, %struct.TYPE_18__** %11, align 8
  br label %93

111:                                              ; preds = %93
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  store %struct.TYPE_18__* %119, %struct.TYPE_18__** %11, align 8
  br label %120

120:                                              ; preds = %177, %111
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = icmp ne %struct.TYPE_18__* %121, null
  br i1 %122, label %123, label %181

123:                                              ; preds = %120
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %15, align 8
  br label %127

127:                                              ; preds = %155, %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %129 = icmp ne %struct.TYPE_19__* %128, null
  br i1 %129, label %130, label %159

130:                                              ; preds = %127
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %130
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %14, align 8
  br label %146

146:                                              ; preds = %140, %130
  %147 = load i64, i64* @flag_branches, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %153 = call i32 @add_branch_counts(%struct.TYPE_20__* %151, %struct.TYPE_19__* %152)
  br label %154

154:                                              ; preds = %149, %146
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  store %struct.TYPE_19__* %158, %struct.TYPE_19__** %15, align 8
  br label %127

159:                                              ; preds = %127
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  store %struct.TYPE_19__* %162, %struct.TYPE_19__** %15, align 8
  br label %163

163:                                              ; preds = %172, %159
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %165 = icmp ne %struct.TYPE_19__* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %15, align 8
  br label %163

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  store %struct.TYPE_18__* %180, %struct.TYPE_18__** %11, align 8
  br label %120

181:                                              ; preds = %120
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %11, align 8
  br label %186

186:                                              ; preds = %343, %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %188 = icmp ne %struct.TYPE_18__* %187, null
  br i1 %188, label %189, label %347

189:                                              ; preds = %186
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %190, %struct.TYPE_18__** %16, align 8
  br label %191

191:                                              ; preds = %312, %189
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  store %struct.TYPE_19__* %194, %struct.TYPE_19__** %17, align 8
  br label %195

195:                                              ; preds = %327, %191
  br label %196

196:                                              ; preds = %308, %222, %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %198 = icmp ne %struct.TYPE_19__* %197, null
  br i1 %198, label %199, label %319

199:                                              ; preds = %196
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  store %struct.TYPE_18__* %202, %struct.TYPE_18__** %18, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %222, label %207

207:                                              ; preds = %199
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %222, label %215

215:                                              ; preds = %207
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = icmp ne %struct.TYPE_19__* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %215, %207, %199
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  store %struct.TYPE_19__* %225, %struct.TYPE_19__** %17, align 8
  br label %196

226:                                              ; preds = %215
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %229 = icmp eq %struct.TYPE_18__* %227, %228
  br i1 %229, label %230, label %312

230:                                              ; preds = %226
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %19, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %234, %struct.TYPE_19__** %20, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %18, align 8
  br label %236

236:                                              ; preds = %255, %230
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  store %struct.TYPE_19__* %241, %struct.TYPE_19__** %21, align 8
  %242 = icmp ne %struct.TYPE_19__* %241, null
  br i1 %242, label %243, label %259

243:                                              ; preds = %236
  %244 = load i64, i64* %19, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp sgt i64 %244, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %19, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %253, %struct.TYPE_19__** %20, align 8
  br label %254

254:                                              ; preds = %249, %243
  br label %255

255:                                              ; preds = %254
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  store %struct.TYPE_18__* %258, %struct.TYPE_18__** %18, align 8
  br label %236

259:                                              ; preds = %236
  %260 = load i64, i64* %19, align 8
  %261 = load i64, i64* %14, align 8
  %262 = add nsw i64 %261, %260
  store i64 %262, i64* %14, align 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 2
  store i32 1, i32* %264, align 8
  %265 = load i64, i64* %19, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %270, %struct.TYPE_18__** %18, align 8
  br label %271

271:                                              ; preds = %284, %259
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %275, align 8
  store %struct.TYPE_19__* %276, %struct.TYPE_19__** %21, align 8
  %277 = icmp ne %struct.TYPE_19__* %276, null
  br i1 %277, label %278, label %288

278:                                              ; preds = %271
  %279 = load i64, i64* %19, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %282, %279
  store i64 %283, i64* %281, align 8
  br label %284

284:                                              ; preds = %278
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %286, align 8
  store %struct.TYPE_18__* %287, %struct.TYPE_18__** %18, align 8
  br label %271

288:                                              ; preds = %271
  br label %289

289:                                              ; preds = %295, %288
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = icmp ne %struct.TYPE_18__* %290, %293
  br i1 %294, label %295, label %308

295:                                              ; preds = %289
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  store %struct.TYPE_19__* %300, %struct.TYPE_19__** %17, align 8
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %304, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  store %struct.TYPE_18__* %307, %struct.TYPE_18__** %16, align 8
  br label %289

308:                                              ; preds = %289
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %310, align 8
  store %struct.TYPE_19__* %311, %struct.TYPE_19__** %17, align 8
  br label %196

312:                                              ; preds = %226
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  store %struct.TYPE_19__* %313, %struct.TYPE_19__** %317, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %318, %struct.TYPE_18__** %16, align 8
  br label %191

319:                                              ; preds = %196
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %323, align 8
  store %struct.TYPE_19__* %324, %struct.TYPE_19__** %17, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %326 = icmp ne %struct.TYPE_19__* %325, null
  br i1 %326, label %327, label %338

327:                                              ; preds = %319
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %331, align 8
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  store %struct.TYPE_18__* %334, %struct.TYPE_18__** %16, align 8
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %336, align 8
  store %struct.TYPE_19__* %337, %struct.TYPE_19__** %17, align 8
  br label %195

338:                                              ; preds = %319
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  store i32 -1, i32* %342, align 8
  br label %343

343:                                              ; preds = %338
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  store %struct.TYPE_18__* %346, %struct.TYPE_18__** %11, align 8
  br label %186

347:                                              ; preds = %186
  %348 = load i64, i64* %14, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  store i64 %348, i64* %350, align 8
  br label %351

351:                                              ; preds = %347, %82
  br label %352

352:                                              ; preds = %351, %77
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %352
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 4
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %357
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 4
  br label %373

373:                                              ; preds = %367, %357
  br label %374

374:                                              ; preds = %373, %352
  br label %375

375:                                              ; preds = %374
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 1
  store %struct.TYPE_16__* %377, %struct.TYPE_16__** %3, align 8
  br label %48

378:                                              ; preds = %48
  ret void
}

declare dso_local i32 @add_branch_counts(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
