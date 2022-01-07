; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_resolve_symbol_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_resolve_symbol_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__*, %struct.TYPE_33__, i32, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.TYPE_30__ = type { i32 }
%struct.local_symbol = type { i64 }
%struct.TYPE_29__ = type { i64 }

@OCTETS_PER_BYTE = common dso_local global i64 0, align 8
@finalize_syms = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"symbol definition loop encountered at `%s'\00", align 1
@expr_section = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@undefined_section = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"division by zero when setting `%s'\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"can't resolve value for symbol `%s'\00", align 1
@BSF_RELC = common dso_local global i32 0, align 4
@BSF_SRELC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @resolve_symbol_value(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.local_symbol*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store i64 0, i64* %5, align 8
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %19 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_32__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %23 = bitcast %struct.TYPE_32__* %22 to %struct.local_symbol*
  store %struct.local_symbol* %23, %struct.local_symbol** %7, align 8
  %24 = load %struct.local_symbol*, %struct.local_symbol** %7, align 8
  %25 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.local_symbol*, %struct.local_symbol** %7, align 8
  %28 = call i64 @local_symbol_resolved_p(%struct.local_symbol* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %737

32:                                               ; preds = %21
  %33 = load %struct.local_symbol*, %struct.local_symbol** %7, align 8
  %34 = call %struct.TYPE_29__* @local_symbol_get_frag(%struct.local_symbol* %33)
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCTETS_PER_BYTE, align 8
  %38 = sdiv i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* @finalize_syms, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.local_symbol*, %struct.local_symbol** %7, align 8
  %46 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.local_symbol*, %struct.local_symbol** %7, align 8
  %48 = call i32 @local_symbol_mark_resolved(%struct.local_symbol* %47)
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %737

51:                                               ; preds = %1
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 148
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %2, align 8
  br label %737

67:                                               ; preds = %56
  store i64 0, i64* %2, align 8
  br label %737

68:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %70 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %69)
  store i64 %70, i64* %6, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i64, i64* @finalize_syms, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %81 = call i32 @S_GET_NAME(%struct.TYPE_32__* %80)
  %82 = call i32 @as_bad(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  store i64 0, i64* %5, align 8
  store i32 1, i32* %4, align 4
  br label %701

84:                                               ; preds = %68
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %89, align 8
  store %struct.TYPE_32__* %90, %struct.TYPE_32__** %8, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %93, align 8
  store %struct.TYPE_32__* %94, %struct.TYPE_32__** %9, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %5, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  switch i32 %104, label %105 [
    i32 156, label %108
    i32 148, label %109
    i32 133, label %125
    i32 130, label %126
    i32 129, label %126
    i32 128, label %317
    i32 150, label %317
    i32 139, label %317
    i32 135, label %377
    i32 147, label %377
    i32 136, label %377
    i32 141, label %377
    i32 132, label %377
    i32 151, label %377
    i32 149, label %377
    i32 152, label %377
    i32 153, label %377
    i32 155, label %377
    i32 131, label %377
    i32 146, label %377
    i32 134, label %377
    i32 137, label %377
    i32 142, label %377
    i32 145, label %377
    i32 144, label %377
    i32 140, label %377
    i32 138, label %377
    i32 154, label %697
    i32 143, label %697
  ]

105:                                              ; preds = %84
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @BAD_CASE(i32 %106)
  br label %698

108:                                              ; preds = %84
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %84, %108
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @OCTETS_PER_BYTE, align 8
  %116 = sdiv i64 %114, %115
  %117 = load i64, i64* %5, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @expr_section, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i64, i64* @absolute_section, align 8
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %122, %109
  br label %125

125:                                              ; preds = %84, %124
  store i32 1, i32* %4, align 4
  br label %698

126:                                              ; preds = %84, %84
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %128 = call i64 @resolve_symbol_value(%struct.TYPE_32__* %127)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %131 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %130)
  store i64 %131, i64* %12, align 8
  %132 = load i64, i64* @finalize_syms, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 2
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %137, align 8
  br label %138

138:                                              ; preds = %134, %126
  br label %139

139:                                              ; preds = %420, %403, %394, %138
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %141 = call i32 @S_IS_WEAKREFR(%struct.TYPE_32__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %182

143:                                              ; preds = %139
  %144 = load i64, i64* %5, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %149 = call i32 @S_IS_WEAKREFR(%struct.TYPE_32__* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %181

151:                                              ; preds = %143
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 130
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br label %163

163:                                              ; preds = %157, %151
  %164 = phi i1 [ false, %151 ], [ %162, %157 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %169, align 8
  store %struct.TYPE_32__* %170, %struct.TYPE_32__** %8, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %172 = call i32 @S_IS_WEAKREFR(%struct.TYPE_32__* %171)
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 3
  store %struct.TYPE_32__* %177, %struct.TYPE_32__** %180, align 8
  br label %181

181:                                              ; preds = %163, %143
  br label %182

182:                                              ; preds = %181, %139
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %189 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %188)
  store i32 %189, i32* %4, align 4
  br label %698

190:                                              ; preds = %182
  %191 = load i64, i64* @finalize_syms, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load i64, i64* %5, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %198 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_32__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %202 = bitcast %struct.TYPE_32__* %201 to %struct.local_symbol*
  %203 = call %struct.TYPE_32__* @local_symbol_convert(%struct.local_symbol* %202)
  store %struct.TYPE_32__* %203, %struct.TYPE_32__** %8, align 8
  br label %204

204:                                              ; preds = %200, %196
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %207 = call i32 @copy_symbol_attributes(%struct.TYPE_32__* %205, %struct.TYPE_32__* %206)
  br label %208

208:                                              ; preds = %204, %193, %190
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %210 = call i32 @S_IS_DEFINED(%struct.TYPE_32__* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %214 = call i32 @S_IS_COMMON(%struct.TYPE_32__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %241

216:                                              ; preds = %212, %208
  %217 = load i64, i64* @finalize_syms, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %216
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  store i64 130, i64* %222, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 3
  store %struct.TYPE_32__* %223, %struct.TYPE_32__** %226, align 8
  %227 = load i64, i64* %5, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  store i64 %227, i64* %230, align 8
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 2
  store %struct.TYPE_32__* %231, %struct.TYPE_32__** %234, align 8
  %235 = load i64, i64* %12, align 8
  store i64 %235, i64* %6, align 8
  br label %236

236:                                              ; preds = %219, %216
  store i64 0, i64* %5, align 8
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %238 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %237)
  store i32 %238, i32* %4, align 4
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 1
  store i32 0, i32* %240, align 4
  br label %709

241:                                              ; preds = %212
  %242 = load i64, i64* @finalize_syms, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %287

244:                                              ; preds = %241
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* @expr_section, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load i64, i64* %12, align 8
  %250 = load i64, i64* @expr_section, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %256, label %252

252:                                              ; preds = %248, %244
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %254 = call i32 @symbol_shadow_p(%struct.TYPE_32__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %252, %248
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 0
  store i64 130, i64* %259, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 3
  store %struct.TYPE_32__* %260, %struct.TYPE_32__** %263, align 8
  %264 = load i64, i64* %5, align 8
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  store i64 %264, i64* %267, align 8
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 2
  store %struct.TYPE_32__* %268, %struct.TYPE_32__** %271, align 8
  %272 = load i64, i64* %12, align 8
  store i64 %272, i64* %6, align 8
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %277, %279
  %281 = load i64, i64* %5, align 8
  %282 = add nsw i64 %281, %280
  store i64 %282, i64* %5, align 8
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %284 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %283)
  store i32 %284, i32* %4, align 4
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  br label %709

287:                                              ; preds = %252, %241
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %292, %294
  %296 = load i64, i64* %5, align 8
  %297 = add nsw i64 %296, %295
  store i64 %297, i64* %5, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* @expr_section, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %305, label %301

301:                                              ; preds = %287
  %302 = load i64, i64* %6, align 8
  %303 = load i64, i64* @undefined_section, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301, %287
  %306 = load i64, i64* %12, align 8
  store i64 %306, i64* %6, align 8
  br label %307

307:                                              ; preds = %305, %301
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %311 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %310)
  store i32 %311, i32* %4, align 4
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %313 = call i32 @S_IS_WEAKREFR(%struct.TYPE_32__* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %709

316:                                              ; preds = %309
  br label %698

317:                                              ; preds = %84, %84, %84
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %319 = call i64 @resolve_symbol_value(%struct.TYPE_32__* %318)
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %10, align 4
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %322 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %321)
  store i64 %322, i64* %12, align 8
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 139
  br i1 %324, label %325, label %336

325:                                              ; preds = %317
  %326 = load i64, i64* %12, align 8
  %327 = load i64, i64* @absolute_section, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %325
  %330 = load i64, i64* @finalize_syms, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %334 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %335 = call i32 @report_op_error(%struct.TYPE_32__* %333, %struct.TYPE_32__* %334, %struct.TYPE_32__* null)
  br label %336

336:                                              ; preds = %332, %329, %325, %317
  %337 = load i64, i64* %6, align 8
  %338 = load i64, i64* @expr_section, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %344, label %340

340:                                              ; preds = %336
  %341 = load i64, i64* %6, align 8
  %342 = load i64, i64* @undefined_section, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %340, %336
  %345 = load i64, i64* @absolute_section, align 8
  store i64 %345, i64* %6, align 8
  br label %346

346:                                              ; preds = %344, %340
  %347 = load i32, i32* %14, align 4
  %348 = icmp eq i32 %347, 128
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* %10, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %10, align 4
  br label %364

352:                                              ; preds = %346
  %353 = load i32, i32* %14, align 4
  %354 = icmp eq i32 %353, 139
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i32, i32* %10, align 4
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %10, align 4
  br label %363

360:                                              ; preds = %352
  %361 = load i32, i32* %10, align 4
  %362 = xor i32 %361, -1
  store i32 %362, i32* %10, align 4
  br label %363

363:                                              ; preds = %360, %355
  br label %364

364:                                              ; preds = %363, %349
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %366, %371
  %373 = load i64, i64* %5, align 8
  %374 = add nsw i64 %373, %372
  store i64 %374, i64* %5, align 8
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %376 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %375)
  store i32 %376, i32* %4, align 4
  br label %698

377:                                              ; preds = %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84, %84
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %379 = call i64 @resolve_symbol_value(%struct.TYPE_32__* %378)
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %10, align 4
  %381 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %382 = call i64 @resolve_symbol_value(%struct.TYPE_32__* %381)
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %11, align 4
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %385 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %384)
  store i64 %385, i64* %12, align 8
  %386 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %387 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %386)
  store i64 %387, i64* %13, align 8
  %388 = load i32, i32* %14, align 4
  %389 = icmp eq i32 %388, 155
  br i1 %389, label %390, label %413

390:                                              ; preds = %377
  %391 = load i64, i64* %13, align 8
  %392 = load i64, i64* @absolute_section, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = load i32, i32* %11, align 4
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* %5, align 8
  %398 = add nsw i64 %397, %396
  store i64 %398, i64* %5, align 8
  br label %139

399:                                              ; preds = %390
  %400 = load i64, i64* %12, align 8
  %401 = load i64, i64* @absolute_section, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %411

403:                                              ; preds = %399
  %404 = load i32, i32* %10, align 4
  %405 = sext i32 %404 to i64
  %406 = load i64, i64* %5, align 8
  %407 = add nsw i64 %406, %405
  store i64 %407, i64* %5, align 8
  %408 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__* %408, %struct.TYPE_32__** %8, align 8
  %409 = load i32, i32* %11, align 4
  store i32 %409, i32* %10, align 4
  %410 = load i64, i64* %13, align 8
  store i64 %410, i64* %12, align 8
  br label %139

411:                                              ; preds = %399
  br label %412

412:                                              ; preds = %411
  br label %427

413:                                              ; preds = %377
  %414 = load i32, i32* %14, align 4
  %415 = icmp eq i32 %414, 131
  br i1 %415, label %416, label %426

416:                                              ; preds = %413
  %417 = load i64, i64* %13, align 8
  %418 = load i64, i64* @absolute_section, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %425

420:                                              ; preds = %416
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = load i64, i64* %5, align 8
  %424 = sub nsw i64 %423, %422
  store i64 %424, i64* %5, align 8
  br label %139

425:                                              ; preds = %416
  br label %426

426:                                              ; preds = %425, %413
  br label %427

427:                                              ; preds = %426, %412
  store i32 1, i32* %15, align 4
  %428 = load i64, i64* %12, align 8
  %429 = load i64, i64* @absolute_section, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %427
  %432 = load i64, i64* %13, align 8
  %433 = load i64, i64* @absolute_section, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %478, label %435

435:                                              ; preds = %431, %427
  %436 = load i32, i32* %14, align 4
  %437 = icmp eq i32 %436, 146
  br i1 %437, label %478, label %438

438:                                              ; preds = %435
  %439 = load i32, i32* %14, align 4
  %440 = icmp eq i32 %439, 134
  br i1 %440, label %478, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* %14, align 4
  %443 = icmp eq i32 %442, 131
  br i1 %443, label %456, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %14, align 4
  %446 = icmp eq i32 %445, 137
  br i1 %446, label %456, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %14, align 4
  %449 = icmp eq i32 %448, 142
  br i1 %449, label %456, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %14, align 4
  %452 = icmp eq i32 %451, 145
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %14, align 4
  %455 = icmp eq i32 %454, 144
  br i1 %455, label %456, label %468

456:                                              ; preds = %453, %450, %447, %444, %441
  %457 = load i64, i64* %12, align 8
  %458 = load i64, i64* %13, align 8
  %459 = icmp eq i64 %457, %458
  br i1 %459, label %460, label %468

460:                                              ; preds = %456
  %461 = load i64, i64* %12, align 8
  %462 = load i64, i64* @undefined_section, align 8
  %463 = icmp ne i64 %461, %462
  br i1 %463, label %478, label %464

464:                                              ; preds = %460
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %467 = icmp eq %struct.TYPE_32__* %465, %466
  br i1 %467, label %478, label %468

468:                                              ; preds = %464, %456, %453
  %469 = load i64, i64* @finalize_syms, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %468
  %472 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %473 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %474 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %475 = call i32 @report_op_error(%struct.TYPE_32__* %472, %struct.TYPE_32__* %473, %struct.TYPE_32__* %474)
  br label %477

476:                                              ; preds = %468
  store i32 0, i32* %15, align 4
  br label %477

477:                                              ; preds = %476, %471
  br label %478

478:                                              ; preds = %477, %464, %460, %438, %435, %431
  %479 = load i32, i32* %15, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %491

481:                                              ; preds = %478
  %482 = load i64, i64* %6, align 8
  %483 = load i64, i64* @expr_section, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %489, label %485

485:                                              ; preds = %481
  %486 = load i64, i64* %6, align 8
  %487 = load i64, i64* @undefined_section, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %491

489:                                              ; preds = %485, %481
  %490 = load i64, i64* @absolute_section, align 8
  store i64 %490, i64* %6, align 8
  br label %491

491:                                              ; preds = %489, %485, %478
  %492 = load i32, i32* %14, align 4
  %493 = icmp eq i32 %492, 147
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load i32, i32* %14, align 4
  %496 = icmp eq i32 %495, 136
  br i1 %496, label %497, label %523

497:                                              ; preds = %494, %491
  %498 = load i32, i32* %11, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %523

500:                                              ; preds = %497
  %501 = load i64, i64* %13, align 8
  %502 = load i64, i64* @absolute_section, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %522

504:                                              ; preds = %500
  %505 = load i64, i64* @finalize_syms, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %522

507:                                              ; preds = %504
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %509 = call i32 @expr_symbol_where(%struct.TYPE_32__* %508, i8** %16, i32* %17)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %507
  %512 = load i8*, i8** %16, align 8
  %513 = load i32, i32* %17, align 4
  %514 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %515 = call i32 @as_bad_where(i8* %512, i32 %513, i32 %514)
  br label %521

516:                                              ; preds = %507
  %517 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %518 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %519 = call i32 @S_GET_NAME(%struct.TYPE_32__* %518)
  %520 = call i32 @as_bad(i32 %517, i32 %519)
  br label %521

521:                                              ; preds = %516, %511
  br label %522

522:                                              ; preds = %521, %504, %500
  store i32 1, i32* %11, align 4
  br label %523

523:                                              ; preds = %522, %497, %494
  %524 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %524, i32 0, i32 3
  %526 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  switch i64 %527, label %646 [
    i64 135, label %528
    i64 147, label %532
    i64 136, label %536
    i64 141, label %540
    i64 132, label %544
    i64 151, label %548
    i64 149, label %552
    i64 152, label %557
    i64 153, label %561
    i64 155, label %565
    i64 131, label %569
    i64 146, label %573
    i64 134, label %573
    i64 137, label %604
    i64 142, label %610
    i64 145, label %616
    i64 144, label %622
    i64 140, label %628
    i64 138, label %637
  ]

528:                                              ; preds = %523
  %529 = load i32, i32* %11, align 4
  %530 = load i32, i32* %10, align 4
  %531 = mul nsw i32 %530, %529
  store i32 %531, i32* %10, align 4
  br label %648

532:                                              ; preds = %523
  %533 = load i32, i32* %11, align 4
  %534 = load i32, i32* %10, align 4
  %535 = sdiv i32 %534, %533
  store i32 %535, i32* %10, align 4
  br label %648

536:                                              ; preds = %523
  %537 = load i32, i32* %11, align 4
  %538 = load i32, i32* %10, align 4
  %539 = srem i32 %538, %537
  store i32 %539, i32* %10, align 4
  br label %648

540:                                              ; preds = %523
  %541 = load i32, i32* %11, align 4
  %542 = load i32, i32* %10, align 4
  %543 = shl i32 %542, %541
  store i32 %543, i32* %10, align 4
  br label %648

544:                                              ; preds = %523
  %545 = load i32, i32* %11, align 4
  %546 = load i32, i32* %10, align 4
  %547 = ashr i32 %546, %545
  store i32 %547, i32* %10, align 4
  br label %648

548:                                              ; preds = %523
  %549 = load i32, i32* %11, align 4
  %550 = load i32, i32* %10, align 4
  %551 = or i32 %550, %549
  store i32 %551, i32* %10, align 4
  br label %648

552:                                              ; preds = %523
  %553 = load i32, i32* %11, align 4
  %554 = xor i32 %553, -1
  %555 = load i32, i32* %10, align 4
  %556 = or i32 %555, %554
  store i32 %556, i32* %10, align 4
  br label %648

557:                                              ; preds = %523
  %558 = load i32, i32* %11, align 4
  %559 = load i32, i32* %10, align 4
  %560 = xor i32 %559, %558
  store i32 %560, i32* %10, align 4
  br label %648

561:                                              ; preds = %523
  %562 = load i32, i32* %11, align 4
  %563 = load i32, i32* %10, align 4
  %564 = and i32 %563, %562
  store i32 %564, i32* %10, align 4
  br label %648

565:                                              ; preds = %523
  %566 = load i32, i32* %11, align 4
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %567, %566
  store i32 %568, i32* %10, align 4
  br label %648

569:                                              ; preds = %523
  %570 = load i32, i32* %11, align 4
  %571 = load i32, i32* %10, align 4
  %572 = sub nsw i32 %571, %570
  store i32 %572, i32* %10, align 4
  br label %648

573:                                              ; preds = %523, %523
  %574 = load i32, i32* %10, align 4
  %575 = load i32, i32* %11, align 4
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %577, label %591

577:                                              ; preds = %573
  %578 = load i64, i64* %12, align 8
  %579 = load i64, i64* %13, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %591

581:                                              ; preds = %577
  %582 = load i64, i64* %12, align 8
  %583 = load i64, i64* @undefined_section, align 8
  %584 = icmp ne i64 %582, %583
  br i1 %584, label %589, label %585

585:                                              ; preds = %581
  %586 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %587 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %588 = icmp eq %struct.TYPE_32__* %586, %587
  br label %589

589:                                              ; preds = %585, %581
  %590 = phi i1 [ true, %581 ], [ %588, %585 ]
  br label %591

591:                                              ; preds = %589, %577, %573
  %592 = phi i1 [ false, %577 ], [ false, %573 ], [ %590, %589 ]
  %593 = zext i1 %592 to i64
  %594 = select i1 %592, i32 -1, i32 0
  store i32 %594, i32* %10, align 4
  %595 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %595, i32 0, i32 3
  %597 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = icmp eq i64 %598, 134
  br i1 %599, label %600, label %603

600:                                              ; preds = %591
  %601 = load i32, i32* %10, align 4
  %602 = xor i32 %601, -1
  store i32 %602, i32* %10, align 4
  br label %603

603:                                              ; preds = %600, %591
  br label %648

604:                                              ; preds = %523
  %605 = load i32, i32* %10, align 4
  %606 = load i32, i32* %11, align 4
  %607 = icmp slt i32 %605, %606
  %608 = zext i1 %607 to i64
  %609 = select i1 %607, i32 -1, i32 0
  store i32 %609, i32* %10, align 4
  br label %648

610:                                              ; preds = %523
  %611 = load i32, i32* %10, align 4
  %612 = load i32, i32* %11, align 4
  %613 = icmp sle i32 %611, %612
  %614 = zext i1 %613 to i64
  %615 = select i1 %613, i32 -1, i32 0
  store i32 %615, i32* %10, align 4
  br label %648

616:                                              ; preds = %523
  %617 = load i32, i32* %10, align 4
  %618 = load i32, i32* %11, align 4
  %619 = icmp sge i32 %617, %618
  %620 = zext i1 %619 to i64
  %621 = select i1 %619, i32 -1, i32 0
  store i32 %621, i32* %10, align 4
  br label %648

622:                                              ; preds = %523
  %623 = load i32, i32* %10, align 4
  %624 = load i32, i32* %11, align 4
  %625 = icmp sgt i32 %623, %624
  %626 = zext i1 %625 to i64
  %627 = select i1 %625, i32 -1, i32 0
  store i32 %627, i32* %10, align 4
  br label %648

628:                                              ; preds = %523
  %629 = load i32, i32* %10, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %634

631:                                              ; preds = %628
  %632 = load i32, i32* %11, align 4
  %633 = icmp ne i32 %632, 0
  br label %634

634:                                              ; preds = %631, %628
  %635 = phi i1 [ false, %628 ], [ %633, %631 ]
  %636 = zext i1 %635 to i32
  store i32 %636, i32* %10, align 4
  br label %648

637:                                              ; preds = %523
  %638 = load i32, i32* %10, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %643, label %640

640:                                              ; preds = %637
  %641 = load i32, i32* %11, align 4
  %642 = icmp ne i32 %641, 0
  br label %643

643:                                              ; preds = %640, %637
  %644 = phi i1 [ true, %637 ], [ %642, %640 ]
  %645 = zext i1 %644 to i32
  store i32 %645, i32* %10, align 4
  br label %648

646:                                              ; preds = %523
  %647 = call i32 (...) @abort() #3
  unreachable

648:                                              ; preds = %643, %634, %622, %616, %610, %604, %603, %569, %565, %561, %557, %552, %548, %544, %540, %536, %532, %528
  %649 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %650 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %649, i32 0, i32 2
  %651 = load %struct.TYPE_31__*, %struct.TYPE_31__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load i32, i32* %10, align 4
  %655 = sext i32 %654 to i64
  %656 = add nsw i64 %653, %655
  %657 = load i64, i64* %5, align 8
  %658 = add nsw i64 %657, %656
  store i64 %658, i64* %5, align 8
  %659 = load i64, i64* %6, align 8
  %660 = load i64, i64* @expr_section, align 8
  %661 = icmp eq i64 %659, %660
  br i1 %661, label %666, label %662

662:                                              ; preds = %648
  %663 = load i64, i64* %6, align 8
  %664 = load i64, i64* @undefined_section, align 8
  %665 = icmp eq i64 %663, %664
  br i1 %665, label %666, label %686

666:                                              ; preds = %662, %648
  %667 = load i64, i64* %12, align 8
  %668 = load i64, i64* @undefined_section, align 8
  %669 = icmp eq i64 %667, %668
  br i1 %669, label %674, label %670

670:                                              ; preds = %666
  %671 = load i64, i64* %13, align 8
  %672 = load i64, i64* @undefined_section, align 8
  %673 = icmp eq i64 %671, %672
  br i1 %673, label %674, label %676

674:                                              ; preds = %670, %666
  %675 = load i64, i64* @undefined_section, align 8
  store i64 %675, i64* %6, align 8
  br label %685

676:                                              ; preds = %670
  %677 = load i64, i64* %12, align 8
  %678 = load i64, i64* @absolute_section, align 8
  %679 = icmp eq i64 %677, %678
  br i1 %679, label %680, label %682

680:                                              ; preds = %676
  %681 = load i64, i64* %13, align 8
  store i64 %681, i64* %6, align 8
  br label %684

682:                                              ; preds = %676
  %683 = load i64, i64* %12, align 8
  store i64 %683, i64* %6, align 8
  br label %684

684:                                              ; preds = %682, %680
  br label %685

685:                                              ; preds = %684, %674
  br label %686

686:                                              ; preds = %685, %662
  %687 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %688 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %687)
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %694

690:                                              ; preds = %686
  %691 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %692 = call i32 @symbol_resolved_p(%struct.TYPE_32__* %691)
  %693 = icmp ne i32 %692, 0
  br label %694

694:                                              ; preds = %690, %686
  %695 = phi i1 [ false, %686 ], [ %693, %690 ]
  %696 = zext i1 %695 to i32
  store i32 %696, i32* %4, align 4
  br label %698

697:                                              ; preds = %84, %84
  br label %698

698:                                              ; preds = %697, %694, %364, %316, %187, %125, %105
  %699 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %700 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %699, i32 0, i32 1
  store i32 0, i32* %700, align 4
  br label %701

701:                                              ; preds = %698, %83
  %702 = load i64, i64* @finalize_syms, align 8
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %708

704:                                              ; preds = %701
  %705 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %706 = load i64, i64* %5, align 8
  %707 = call i32 @S_SET_VALUE(%struct.TYPE_32__* %705, i64 %706)
  br label %708

708:                                              ; preds = %704, %701
  br label %709

709:                                              ; preds = %708, %315, %256, %236
  %710 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %711 = load i64, i64* %6, align 8
  %712 = call i32 @S_SET_SEGMENT(%struct.TYPE_32__* %710, i64 %711)
  %713 = load i64, i64* @finalize_syms, align 8
  %714 = icmp ne i64 %713, 0
  br i1 %714, label %715, label %735

715:                                              ; preds = %709
  %716 = load i32, i32* %4, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %721

718:                                              ; preds = %715
  %719 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %720 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %719, i32 0, i32 0
  store i32 1, i32* %720, align 8
  br label %734

721:                                              ; preds = %715
  %722 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %723 = call i64 @S_GET_SEGMENT(%struct.TYPE_32__* %722)
  %724 = load i64, i64* @expr_section, align 8
  %725 = icmp ne i64 %723, %724
  br i1 %725, label %726, label %733

726:                                              ; preds = %721
  %727 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %728 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %729 = call i32 @S_GET_NAME(%struct.TYPE_32__* %728)
  %730 = call i32 @as_bad(i32 %727, i32 %729)
  %731 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %732 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %731, i32 0, i32 0
  store i32 1, i32* %732, align 8
  br label %733

733:                                              ; preds = %726, %721
  br label %734

734:                                              ; preds = %733, %718
  br label %735

735:                                              ; preds = %734, %709
  %736 = load i64, i64* %5, align 8
  store i64 %736, i64* %2, align 8
  br label %737

737:                                              ; preds = %735, %67, %62, %49, %30
  %738 = load i64, i64* %2, align 8
  ret i64 %738
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_32__*) #1

declare dso_local i64 @local_symbol_resolved_p(%struct.local_symbol*) #1

declare dso_local %struct.TYPE_29__* @local_symbol_get_frag(%struct.local_symbol*) #1

declare dso_local i32 @local_symbol_mark_resolved(%struct.local_symbol*) #1

declare dso_local i64 @S_GET_SEGMENT(%struct.TYPE_32__*) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @S_GET_NAME(%struct.TYPE_32__*) #1

declare dso_local i32 @BAD_CASE(i32) #1

declare dso_local i32 @S_IS_WEAKREFR(%struct.TYPE_32__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @symbol_resolved_p(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @local_symbol_convert(%struct.local_symbol*) #1

declare dso_local i32 @copy_symbol_attributes(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @S_IS_DEFINED(%struct.TYPE_32__*) #1

declare dso_local i32 @S_IS_COMMON(%struct.TYPE_32__*) #1

declare dso_local i32 @symbol_shadow_p(%struct.TYPE_32__*) #1

declare dso_local i32 @report_op_error(%struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @expr_symbol_where(%struct.TYPE_32__*, i8**, i32*) #1

declare dso_local i32 @as_bad_where(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @S_SET_VALUE(%struct.TYPE_32__*, i64) #1

declare dso_local i32 @S_SET_SEGMENT(%struct.TYPE_32__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
