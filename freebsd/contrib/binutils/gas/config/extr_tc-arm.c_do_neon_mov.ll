; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neon_type_el = type { i32, i32 }

@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NT_float = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcpyd\00", align 1
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fconstd\00", align 1
@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@fpu_vfp_ext_v1 = common dso_local global i32 0, align 4
@BAD_FPU = common dso_local global i8* null, align 8
@fpu_neon_ext_v1 = common dso_local global i32 0, align 4
@NT_invtype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bad type for scalar\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"scalar index out of range\00", align 1
@fpu_vfp_ext_v2 = common dso_local global i32 0, align 4
@N_S8 = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_U8 = common dso_local global i32 0, align 4
@N_U16 = common dso_local global i32 0, align 4
@NT_signed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"fcpys\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fconsts\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"immediate out of range\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fmrs\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fmsr\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"VFP registers must be adjacent\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fmrrs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"fmsrr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_mov() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.neon_type_el, align 4
  %5 = alloca %struct.neon_type_el, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.neon_type_el, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.neon_type_el, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @NS_NULL, align 4
  %17 = call i32 @neon_select_shape(i32 130, i32 137, i32 139, i32 131, i32 133, i32 141, i32 134, i32 140, i32 128, i32 129, i32 138, i32 136, i32 132, i32 135, i32 %16)
  store i32 %17, i32* %1, align 4
  store i8* null, i8** %3, align 8
  %18 = load i32, i32* %1, align 4
  switch i32 %18, label %524 [
    i32 141, label %19
    i32 133, label %40
    i32 140, label %104
    i32 134, label %124
    i32 128, label %137
    i32 139, label %241
    i32 129, label %281
    i32 131, label %401
    i32 138, label %441
    i32 136, label %443
    i32 132, label %466
    i32 135, label %468
    i32 130, label %470
    i32 137, label %491
  ]

19:                                               ; preds = %0
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @N_EQK, align 4
  %22 = load i32, i32* @N_F64, align 4
  %23 = load i32, i32* @N_KEY, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @neon_check_type(i32 2, i32 %20, i32 %21, i32 %24)
  %26 = bitcast %struct.neon_type_el* %4 to i64*
  store i64 %25, i64* %26, align 4
  %27 = bitcast %struct.neon_type_el* %2 to i8*
  %28 = bitcast %struct.neon_type_el* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 2), align 8
  %29 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NT_float, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %526

39:                                               ; preds = %33, %19
  br label %40

40:                                               ; preds = %0, %39
  %41 = load i32, i32* @NEON_CHECK_CC, align 4
  %42 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @vfp_or_neon_is_neon(i32 %43)
  %45 = load i32, i32* @FAIL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %526

48:                                               ; preds = %40
  store i32 2097424, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LOW4(i32 %52)
  %54 = shl i32 %53, 12
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %56 = or i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @HI1(i32 %60)
  %62 = shl i32 %61, 22
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %64 = or i32 %63, %62
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LOW4(i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %71 = or i32 %70, %69
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @HI1(i32 %75)
  %77 = shl i32 %76, 5
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %79 = or i32 %78, %77
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @LOW4(i32 %83)
  %85 = shl i32 %84, 16
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %87 = or i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @HI1(i32 %91)
  %93 = shl i32 %92, 7
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %95 = or i32 %94, %93
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @neon_quad(i32 %96)
  %98 = shl i32 %97, 6
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %100 = or i32 %99, %98
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %102 = call i8* @neon_dp_fixup(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

104:                                              ; preds = %0
  %105 = load i32, i32* %1, align 4
  %106 = load i32, i32* @N_EQK, align 4
  %107 = load i32, i32* @N_F64, align 4
  %108 = load i32, i32* @N_KEY, align 4
  %109 = or i32 %107, %108
  %110 = call i64 @neon_check_type(i32 2, i32 %105, i32 %106, i32 %109)
  %111 = bitcast %struct.neon_type_el* %5 to i64*
  store i64 %110, i64* %111, align 4
  %112 = bitcast %struct.neon_type_el* %2 to i8*
  %113 = bitcast %struct.neon_type_el* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 2), align 8
  %114 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NT_float, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 64
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %444

123:                                              ; preds = %118, %104
  br label %124

124:                                              ; preds = %0, %123
  %125 = load i32, i32* @NEON_CHECK_CC, align 4
  %126 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @vfp_or_neon_is_neon(i32 %127)
  %129 = load i32, i32* @FAIL, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %526

132:                                              ; preds = %124
  store i32 8388624, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %133 = call i32 (...) @neon_move_immediate()
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %135 = call i8* @neon_dp_fixup(i32 %134)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

137:                                              ; preds = %0
  store i32 0, i32* %6, align 4
  %138 = load i32, i32* @NS_NULL, align 4
  %139 = load i32, i32* @N_8, align 4
  %140 = load i32, i32* @N_16, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @N_32, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @N_KEY, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @N_EQK, align 4
  %147 = call i64 @neon_check_type(i32 2, i32 %138, i32 %145, i32 %146)
  %148 = bitcast %struct.neon_type_el* %7 to i64*
  store i64 %147, i64* %148, align 4
  %149 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @neon_logbits(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %8, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @NEON_SCALAR_REG(i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @NEON_SCALAR_INDEX(i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* @cpu_variant, align 4
  %164 = load i32, i32* @fpu_vfp_ext_v1, align 4
  %165 = call i32 @ARM_CPU_HAS_FEATURE(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load i8*, i8** @BAD_FPU, align 8
  %170 = call i32 @_(i8* %169)
  %171 = call i32 @constraint(i32 %168, i32 %170)
  %172 = load i32, i32* @cpu_variant, align 4
  %173 = load i32, i32* @fpu_neon_ext_v1, align 4
  %174 = call i32 @ARM_CPU_HAS_FEATURE(i32 %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %137
  %177 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 32
  br label %180

180:                                              ; preds = %176, %137
  %181 = phi i1 [ false, %137 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = load i8*, i8** @BAD_FPU, align 8
  %184 = call i32 @_(i8* %183)
  %185 = call i32 @constraint(i32 %182, i32 %184)
  %186 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @NT_invtype, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %192 = call i32 @constraint(i32 %190, i32 %191)
  %193 = load i32, i32* %10, align 4
  %194 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 64, %195
  %197 = icmp uge i32 %193, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %200 = call i32 @constraint(i32 %198, i32 %199)
  %201 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %206 [
    i32 8, label %203
    i32 16, label %204
    i32 32, label %205
  ]

203:                                              ; preds = %180
  store i32 8, i32* %6, align 4
  br label %207

204:                                              ; preds = %180
  store i32 1, i32* %6, align 4
  br label %207

205:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %207

206:                                              ; preds = %180
  br label %207

207:                                              ; preds = %206, %205, %204, %203
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %8, align 4
  %210 = shl i32 %208, %209
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %6, align 4
  store i32 234883856, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %213 = call i32 (...) @do_vfp_cond_or_thumb()
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @LOW4(i32 %214)
  %216 = shl i32 %215, 16
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %218 = or i32 %217, %216
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @HI1(i32 %219)
  %221 = shl i32 %220, 7
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %223 = or i32 %222, %221
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 1
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 12
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %230 = or i32 %229, %228
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %231 = load i32, i32* %6, align 4
  %232 = and i32 %231, 3
  %233 = shl i32 %232, 5
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %235 = or i32 %234, %233
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %236 = load i32, i32* %6, align 4
  %237 = lshr i32 %236, 2
  %238 = shl i32 %237, 21
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %240 = or i32 %239, %238
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

241:                                              ; preds = %0
  %242 = load i32, i32* @cpu_variant, align 4
  %243 = load i32, i32* @fpu_vfp_ext_v2, align 4
  %244 = call i32 @ARM_CPU_HAS_FEATURE(i32 %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** @BAD_FPU, align 8
  %249 = call i32 @_(i8* %248)
  %250 = call i32 @constraint(i32 %247, i32 %249)
  store i32 205523728, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %251 = call i32 (...) @do_vfp_cond_or_thumb()
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @LOW4(i32 %255)
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %258 = or i32 %257, %256
  store i32 %258, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @HI1(i32 %262)
  %264 = shl i32 %263, 5
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %266 = or i32 %265, %264
  store i32 %266, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 1
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 %270, 12
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %273 = or i32 %272, %271
  store i32 %273, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i64 2
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 16
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %280 = or i32 %279, %278
  store i32 %280, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

281:                                              ; preds = %0
  %282 = load i32, i32* @NS_NULL, align 4
  %283 = load i32, i32* @N_EQK, align 4
  %284 = load i32, i32* @N_S8, align 4
  %285 = load i32, i32* @N_S16, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @N_U8, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @N_U16, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @N_32, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @N_KEY, align 4
  %294 = or i32 %292, %293
  %295 = call i64 @neon_check_type(i32 2, i32 %282, i32 %283, i32 %294)
  %296 = bitcast %struct.neon_type_el* %11 to i64*
  store i64 %295, i64* %296, align 4
  %297 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i8* @neon_logbits(i32 %298)
  %300 = ptrtoint i8* %299 to i32
  store i32 %300, i32* %12, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i64 1
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @NEON_SCALAR_REG(i32 %304)
  store i32 %305, i32* %13, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i64 1
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @NEON_SCALAR_INDEX(i32 %309)
  store i32 %310, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %311 = load i32, i32* @cpu_variant, align 4
  %312 = load i32, i32* @fpu_vfp_ext_v1, align 4
  %313 = call i32 @ARM_CPU_HAS_FEATURE(i32 %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = load i8*, i8** @BAD_FPU, align 8
  %318 = call i32 @_(i8* %317)
  %319 = call i32 @constraint(i32 %316, i32 %318)
  %320 = load i32, i32* @cpu_variant, align 4
  %321 = load i32, i32* @fpu_neon_ext_v1, align 4
  %322 = call i32 @ARM_CPU_HAS_FEATURE(i32 %320, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %281
  %325 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 32
  br label %328

328:                                              ; preds = %324, %281
  %329 = phi i1 [ false, %281 ], [ %327, %324 ]
  %330 = zext i1 %329 to i32
  %331 = load i8*, i8** @BAD_FPU, align 8
  %332 = call i32 @_(i8* %331)
  %333 = call i32 @constraint(i32 %330, i32 %332)
  %334 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @NT_invtype, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %340 = call i32 @constraint(i32 %338, i32 %339)
  %341 = load i32, i32* %14, align 4
  %342 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = sdiv i32 64, %343
  %345 = icmp uge i32 %341, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %348 = call i32 @constraint(i32 %346, i32 %347)
  %349 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  switch i32 %350, label %366 [
    i32 8, label %351
    i32 16, label %358
    i32 32, label %365
  ]

351:                                              ; preds = %328
  %352 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @NT_signed, align 4
  %355 = icmp eq i32 %353, %354
  %356 = zext i1 %355 to i64
  %357 = select i1 %355, i32 8, i32 24
  store i32 %357, i32* %15, align 4
  br label %367

358:                                              ; preds = %328
  %359 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %11, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @NT_signed, align 4
  %362 = icmp eq i32 %360, %361
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i32 1, i32 17
  store i32 %364, i32* %15, align 4
  br label %367

365:                                              ; preds = %328
  store i32 0, i32* %15, align 4
  br label %367

366:                                              ; preds = %328
  br label %367

367:                                              ; preds = %366, %365, %358, %351
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %12, align 4
  %370 = shl i32 %368, %369
  %371 = load i32, i32* %15, align 4
  %372 = or i32 %371, %370
  store i32 %372, i32* %15, align 4
  store i32 235932432, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %373 = call i32 (...) @do_vfp_cond_or_thumb()
  %374 = load i32, i32* %13, align 4
  %375 = call i32 @LOW4(i32 %374)
  %376 = shl i32 %375, 16
  %377 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %378 = or i32 %377, %376
  store i32 %378, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %379 = load i32, i32* %13, align 4
  %380 = call i32 @HI1(i32 %379)
  %381 = shl i32 %380, 7
  %382 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %383 = or i32 %382, %381
  store i32 %383, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = shl i32 %387, 12
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %390 = or i32 %389, %388
  store i32 %390, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %391 = load i32, i32* %15, align 4
  %392 = and i32 %391, 3
  %393 = shl i32 %392, 5
  %394 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %395 = or i32 %394, %393
  store i32 %395, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %396 = load i32, i32* %15, align 4
  %397 = lshr i32 %396, 2
  %398 = shl i32 %397, 21
  %399 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %400 = or i32 %399, %398
  store i32 %400, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

401:                                              ; preds = %0
  %402 = load i32, i32* @cpu_variant, align 4
  %403 = load i32, i32* @fpu_vfp_ext_v2, align 4
  %404 = call i32 @ARM_CPU_HAS_FEATURE(i32 %402, i32 %403)
  %405 = icmp ne i32 %404, 0
  %406 = xor i1 %405, true
  %407 = zext i1 %406 to i32
  %408 = load i8*, i8** @BAD_FPU, align 8
  %409 = call i32 @_(i8* %408)
  %410 = call i32 @constraint(i32 %407, i32 %409)
  store i32 206572304, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %411 = call i32 (...) @do_vfp_cond_or_thumb()
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i64 0
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = shl i32 %415, 12
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %418 = or i32 %417, %416
  store i32 %418, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i64 1
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = shl i32 %422, 16
  %424 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %425 = or i32 %424, %423
  store i32 %425, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i64 2
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @LOW4(i32 %429)
  %431 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %432 = or i32 %431, %430
  store i32 %432, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i64 2
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @HI1(i32 %436)
  %438 = shl i32 %437, 5
  %439 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %440 = or i32 %439, %438
  store i32 %440, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %526

441:                                              ; preds = %0
  %442 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %526

443:                                              ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %444

444:                                              ; preds = %443, %122
  %445 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i64 1
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @is_quarter_float(i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %462

451:                                              ; preds = %444
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i64 1
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @neon_qfloat_bits(i32 %455)
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i64 1
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 1
  store i32 %456, i32* %459, align 4
  %460 = load i8*, i8** %3, align 8
  %461 = call i32 @do_vfp_nsyn_opcode(i8* %460)
  br label %465

462:                                              ; preds = %444
  %463 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %464 = call i32 @first_error(i32 %463)
  br label %465

465:                                              ; preds = %462, %451
  br label %526

466:                                              ; preds = %0
  %467 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %526

468:                                              ; preds = %0
  %469 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %526

470:                                              ; preds = %0
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i64 3
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i64 2
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, 1
  %480 = icmp ne i32 %474, %479
  %481 = zext i1 %480 to i32
  %482 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %483 = call i32 @constraint(i32 %481, i32 %482)
  %484 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i64 2
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 1
  store i32 2, i32* %486, align 4
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i64 3
  %489 = call i32 @memset(%struct.TYPE_3__* %488, i8 signext 0, i32 8)
  %490 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %526

491:                                              ; preds = %0
  %492 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i64 1
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %497 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %496, i64 0
  %498 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = icmp ne i32 %495, %500
  %502 = zext i1 %501 to i32
  %503 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %504 = call i32 @constraint(i32 %502, i32 %503)
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i64 1
  %507 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %508 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %507, i64 2
  %509 = bitcast %struct.TYPE_3__* %506 to i8*
  %510 = bitcast %struct.TYPE_3__* %508 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %509, i8* align 4 %510, i64 8, i1 false)
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i64 2
  %513 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %514 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i64 3
  %515 = bitcast %struct.TYPE_3__* %512 to i8*
  %516 = bitcast %struct.TYPE_3__* %514 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %515, i8* align 4 %516, i64 8, i1 false)
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i64 0
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 1
  store i32 2, i32* %519, align 4
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i64 3
  %522 = call i32 @memset(%struct.TYPE_3__* %521, i8 signext 0, i32 8)
  %523 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %526

524:                                              ; preds = %0
  %525 = call i32 (...) @abort() #4
  unreachable

526:                                              ; preds = %47, %131, %491, %470, %468, %466, %465, %441, %401, %367, %241, %207, %132, %48, %37
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @neon_check_type(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #1

declare dso_local i32 @vfp_or_neon_is_neon(i32) #1

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i8* @neon_dp_fixup(i32) #1

declare dso_local i32 @neon_move_immediate(...) #1

declare dso_local i8* @neon_logbits(i32) #1

declare dso_local i32 @NEON_SCALAR_REG(i32) #1

declare dso_local i32 @NEON_SCALAR_INDEX(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @do_vfp_cond_or_thumb(...) #1

declare dso_local i32 @is_quarter_float(i32) #1

declare dso_local i32 @neon_qfloat_bits(i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i8 signext, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
