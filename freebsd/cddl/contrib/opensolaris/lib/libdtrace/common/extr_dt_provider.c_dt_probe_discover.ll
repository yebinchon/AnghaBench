; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_discover.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64*, %struct.TYPE_32__*, i32*, i32* }
%struct.TYPE_32__ = type { i64, i32, i32*, i32* }
%struct.TYPE_36__ = type { %struct.TYPE_31__, %struct.TYPE_34__* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i8*, i32 }
%struct.TYPE_35__ = type { i32, i64, i8*, i8*, i32 }

@_dtrace_argmax = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"discovering probe %s:%s id=%d\0A\00", align 1
@DTRACEIOC_PROBEARG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DTRACE_ARGNONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@DT_IDENT_PROBE = common dso_local global i32 0, align 4
@DT_IDFLG_ORPHAN = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@dt_idops_probe = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to resolve input type %s for %s:%s arg #%d: %s\0A\00", align 1
@CTF_ERR = common dso_local global i64 0, align 8
@DTT_FL_USER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"failed to resolve output type %s for %s:%s arg #%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_37__* (%struct.TYPE_36__*, %struct.TYPE_33__*)* @dt_probe_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_37__* @dt_probe_discover(%struct.TYPE_36__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca %struct.TYPE_32__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  store %struct.TYPE_34__* %21, %struct.TYPE_34__** %6, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %24 = call i32 @dt_probe_keylen(%struct.TYPE_33__* %23)
  %25 = call %struct.TYPE_35__* @alloca(i32 %24)
  %26 = call i8* @dt_probe_key(%struct.TYPE_33__* %22, %struct.TYPE_35__* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* @_dtrace_argmax, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 40, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_35__* @alloca(i32 %31)
  store %struct.TYPE_35__* %32, %struct.TYPE_35__** %17, align 8
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  store %struct.TYPE_35__* %33, %struct.TYPE_35__** %18, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %37, i8* %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DTRACE_IDNONE, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, i8*, i8*, i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56, i8* %61)
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %100, %2
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %63
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %69 = call i32 @bzero(%struct.TYPE_35__* %68, i32 40)
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %79 = load i32, i32* @DTRACEIOC_PROBEARG, align 4
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %81 = call i64 @dt_ioctl(%struct.TYPE_34__* %78, i32 %79, %struct.TYPE_35__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @dt_set_errno(%struct.TYPE_34__* %84, i32 %85)
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %3, align 8
  br label %344

87:                                               ; preds = %67
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DTRACE_ARGNONE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %105

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @MAX(i32 %95, i64 %98)
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 1
  store %struct.TYPE_35__* %104, %struct.TYPE_35__** %18, align 8
  br label %63

105:                                              ; preds = %93, %63
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strncmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %14, align 4
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %126 = call i32 @dt_pid_get_types(%struct.TYPE_34__* %123, %struct.TYPE_33__* %124, %struct.TYPE_35__* %125, i32* %14)
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %121, %114, %111, %105
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32* @dt_probe_alloc_args(%struct.TYPE_36__* %129, i32 %130)
  store i32* %131, i32** %8, align 8
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32* @dt_probe_alloc_args(%struct.TYPE_36__* %132, i32 %133)
  store i32* %134, i32** %9, align 8
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32*, i32** %8, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %128
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32*, i32** %9, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %137
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %3, align 8
  br label %344

147:                                              ; preds = %143, %140
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* @DT_IDENT_PROBE, align 4
  %150 = load i32, i32* @DT_IDFLG_ORPHAN, align 4
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @_dtrace_defattr, align 4
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32* @dt_ident_create(i8* %148, i32 %149, i32 %150, i32 %153, i32 %154, i32 0, i32* @dt_idops_probe, i32* null, i32 %157)
  store i32* %158, i32** %10, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %147
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %163 = load i32, i32* @EDT_NOMEM, align 4
  %164 = call i32 @dt_set_errno(%struct.TYPE_34__* %162, i32 %163)
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %3, align 8
  br label %344

165:                                              ; preds = %147
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call %struct.TYPE_37__* @dt_probe_create(%struct.TYPE_34__* %166, i32* %167, i32 2, i32* %168, i32 %169, i32* %170, i32 %171)
  store %struct.TYPE_37__* %172, %struct.TYPE_37__** %11, align 8
  %173 = icmp eq %struct.TYPE_37__* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @dt_ident_destroy(i32* %175)
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %3, align 8
  br label %344

177:                                              ; preds = %165
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %180 = call i32 @dt_probe_declare(%struct.TYPE_36__* %178, %struct.TYPE_37__* %179)
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  store %struct.TYPE_35__* %181, %struct.TYPE_35__** %18, align 8
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %337, %177
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %342

186:                                              ; preds = %182
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @dtrace_type_strcompile(%struct.TYPE_34__* %187, i8* %190, %struct.TYPE_32__* %12)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %186
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %206 = call i32 @dtrace_errno(%struct.TYPE_34__* %205)
  %207 = call i32 @dtrace_errmsg(%struct.TYPE_34__* %204, i32 %206)
  %208 = call i32 (i8*, i8*, i8*, i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %196, i8* %200, i8* %201, i32 %203, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 3
  store i32* null, i32** %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  store i32* null, i32** %210, align 8
  %211 = load i64, i64* @CTF_ERR, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  store i64 %211, i64* %212, align 8
  br label %238

213:                                              ; preds = %186
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @DTT_FL_USER, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %213
  %232 = load i32, i32* @B_TRUE, align 4
  br label %235

233:                                              ; preds = %213
  %234 = load i32, i32* @B_FALSE, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  %237 = call i32 @dt_node_type_assign(i32 %221, i32* %223, i64 %225, i32 %236)
  br label %238

238:                                              ; preds = %235, %193
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @CTF_ERR, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %277

243:                                              ; preds = %238
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %243
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @strcmp(i8* %254, i8* %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %251, %243
  %261 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @dt_node_type_propagate(i32 %268, i32 %275)
  br label %319

277:                                              ; preds = %251, %238
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %279, i32 0, i32 3
  %281 = load i8*, i8** %280, align 8
  %282 = call i64 @dtrace_type_strcompile(%struct.TYPE_34__* %278, i8* %281, %struct.TYPE_32__* %12)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %304

284:                                              ; preds = %277
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 3
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load i8*, i8** %7, align 8
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %297 = call i32 @dtrace_errno(%struct.TYPE_34__* %296)
  %298 = call i32 @dtrace_errmsg(%struct.TYPE_34__* %295, i32 %297)
  %299 = call i32 (i8*, i8*, i8*, i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %287, i8* %291, i8* %292, i32 %294, i32 %298)
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 3
  store i32* null, i32** %300, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  store i32* null, i32** %301, align 8
  %302 = load i64, i64* @CTF_ERR, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  store i64 %302, i64* %303, align 8
  br label %318

304:                                              ; preds = %277
  %305 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i32, i32* @B_FALSE, align 4
  %317 = call i32 @dt_node_type_assign(i32 %311, i32* %313, i64 %315, i32 %316)
  br label %318

318:                                              ; preds = %304, %284
  br label %319

319:                                              ; preds = %318, %260
  %320 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %323, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  store i64 %322, i64* %328, align 8
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i64 %333
  %335 = bitcast %struct.TYPE_32__* %334 to i8*
  %336 = bitcast %struct.TYPE_32__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %335, i8* align 8 %336, i64 32, i1 false)
  br label %337

337:                                              ; preds = %319
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %13, align 4
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 1
  store %struct.TYPE_35__* %341, %struct.TYPE_35__** %18, align 8
  br label %182

342:                                              ; preds = %182
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  store %struct.TYPE_37__* %343, %struct.TYPE_37__** %3, align 8
  br label %344

344:                                              ; preds = %342, %174, %161, %146, %83
  %345 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  ret %struct.TYPE_37__* %345
}

declare dso_local i8* @dt_probe_key(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @alloca(i32) #1

declare dso_local i32 @dt_probe_keylen(%struct.TYPE_33__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_dprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @dt_ioctl(%struct.TYPE_34__*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dt_pid_get_types(%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32* @dt_probe_alloc_args(%struct.TYPE_36__*, i32) #1

declare dso_local i32* @dt_ident_create(i8*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_37__* @dt_probe_create(%struct.TYPE_34__*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dt_ident_destroy(i32*) #1

declare dso_local i32 @dt_probe_declare(%struct.TYPE_36__*, %struct.TYPE_37__*) #1

declare dso_local i64 @dtrace_type_strcompile(%struct.TYPE_34__*, i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @dtrace_errmsg(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_34__*) #1

declare dso_local i32 @dt_node_type_assign(i32, i32*, i64, i32) #1

declare dso_local i32 @dt_node_type_propagate(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
