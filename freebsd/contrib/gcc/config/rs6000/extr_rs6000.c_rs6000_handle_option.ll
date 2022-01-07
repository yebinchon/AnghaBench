; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_handle_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_handle_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@MASK_POWER = common dso_local global i32 0, align 4
@MASK_POWER2 = common dso_local global i32 0, align 4
@MASK_MULTIPLE = common dso_local global i32 0, align 4
@MASK_STRING = common dso_local global i32 0, align 4
@target_flags = common dso_local global i32 0, align 4
@target_flags_explicit = common dso_local global i32 0, align 4
@MASK_POWERPC = common dso_local global i32 0, align 4
@MASK_PPC_GPOPT = common dso_local global i32 0, align 4
@MASK_PPC_GFXOPT = common dso_local global i32 0, align 4
@MASK_POWERPC64 = common dso_local global i32 0, align 4
@MASK_MINIMAL_TOC = common dso_local global i32 0, align 4
@TARGET_NO_FP_IN_TOC = common dso_local global i32 0, align 4
@TARGET_NO_SUM_IN_TOC = common dso_local global i32 0, align 4
@rs6000_sched_insert_nops_str = common dso_local global i8* null, align 8
@rs6000_explicit_options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"vrsave\00", align 1
@TARGET_ALTIVEC_VRSAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"isel\00", align 1
@rs6000_isel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"spe\00", align 1
@rs6000_spe = common dso_local global i32 0, align 4
@rs6000_long_double_type_size = common dso_local global i32 0, align 4
@rs6000_debug_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"altivec\00", align 1
@rs6000_altivec_abi = common dso_local global i32 0, align 4
@rs6000_spe_abi = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"no-altivec\00", align 1
@TARGET_SPE_ABI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"not configured for ABI: '%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"no-spe\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"d64\00", align 1
@rs6000_darwin64_abi = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Using darwin64 ABI\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"d32\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Using old darwin ABI\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ibmlongdouble\00", align 1
@rs6000_ieeequad = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"Using IBM extended precision long double\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ieeelongdouble\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Using IEEE extended precision long double\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"unknown ABI specified: '%s'\00", align 1
@rs6000_select = common dso_local global %struct.TYPE_3__* null, align 8
@rs6000_traceback_name = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@rs6000_float_gprs = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"invalid option for -mfloat-gprs: '%s'\00", align 1
@RS6000_DEFAULT_LONG_DOUBLE_SIZE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"Unknown switch -mlong-double-%s\00", align 1
@rs6000_sched_costly_dep_str = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@DEFAULT_ABI = common dso_local global i32 0, align 4
@ABI_DARWIN = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [108 x i8] c"-malign-power is not supported for 64-bit Darwin; it is incompatible with the installed C and C++ libraries\00", align 1
@MASK_ALIGN_POWER = common dso_local global i32 0, align 4
@rs6000_alignment_flags = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"natural\00", align 1
@MASK_ALIGN_NATURAL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [45 x i8] c"unknown -malign-XXXXX option specified: '%s'\00", align 1
@MASK_RELOCATABLE = common dso_local global i32 0, align 4
@rs6000_abi_name = common dso_local global i8* null, align 8
@rs6000_sdata_name = common dso_local global i8* null, align 8
@rs6000_tls_size_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @rs6000_handle_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_handle_option(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  switch i64 %8, label %290 [
    i64 144, label %9
    i64 143, label %29
    i64 149, label %49
    i64 159, label %57
    i64 160, label %74
    i64 148, label %82
    i64 145, label %84
    i64 142, label %89
    i64 141, label %104
    i64 139, label %123
    i64 140, label %123
    i64 155, label %134
    i64 133, label %134
    i64 128, label %135
    i64 147, label %138
    i64 134, label %141
    i64 151, label %148
    i64 158, label %150
    i64 152, label %211
    i64 129, label %216
    i64 130, label %221
    i64 150, label %223
    i64 146, label %248
    i64 136, label %262
    i64 154, label %264
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @MASK_POWER, align 4
  %11 = load i32, i32* @MASK_POWER2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MASK_MULTIPLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MASK_STRING, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @target_flags, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @target_flags, align 4
  %20 = load i32, i32* @MASK_POWER, align 4
  %21 = load i32, i32* @MASK_POWER2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MASK_MULTIPLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MASK_STRING, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @target_flags_explicit, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @target_flags_explicit, align 4
  br label %290

29:                                               ; preds = %3
  %30 = load i32, i32* @MASK_POWERPC, align 4
  %31 = load i32, i32* @MASK_PPC_GPOPT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MASK_PPC_GFXOPT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MASK_POWERPC64, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* @target_flags, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* @target_flags, align 4
  %40 = load i32, i32* @MASK_POWERPC, align 4
  %41 = load i32, i32* @MASK_PPC_GPOPT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MASK_PPC_GFXOPT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MASK_POWERPC64, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @target_flags_explicit, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @target_flags_explicit, align 4
  br label %290

49:                                               ; preds = %3
  %50 = load i32, i32* @MASK_MINIMAL_TOC, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @target_flags, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* @target_flags, align 4
  store i32 0, i32* @TARGET_NO_FP_IN_TOC, align 4
  store i32 0, i32* @TARGET_NO_SUM_IN_TOC, align 4
  %54 = load i32, i32* @MASK_MINIMAL_TOC, align 4
  %55 = load i32, i32* @target_flags_explicit, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @target_flags_explicit, align 4
  br label %290

57:                                               ; preds = %3
  %58 = load i32, i32* @MASK_POWERPC64, align 4
  %59 = load i32, i32* @MASK_POWERPC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @target_flags, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @target_flags, align 4
  %63 = load i32, i32* @target_flags_explicit, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* @MASK_PPC_GFXOPT, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @target_flags, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @target_flags, align 4
  %69 = load i32, i32* @MASK_POWERPC64, align 4
  %70 = load i32, i32* @MASK_POWERPC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @target_flags_explicit, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @target_flags_explicit, align 4
  br label %290

74:                                               ; preds = %3
  %75 = load i32, i32* @MASK_POWERPC64, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* @target_flags, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* @target_flags, align 4
  %79 = load i32, i32* @MASK_POWERPC64, align 4
  %80 = load i32, i32* @target_flags_explicit, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @target_flags_explicit, align 4
  br label %290

82:                                               ; preds = %3
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** @rs6000_sched_insert_nops_str, align 8
  br label %290

84:                                               ; preds = %3
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* @TARGET_NO_FP_IN_TOC, align 4
  store i32 0, i32* @TARGET_NO_SUM_IN_TOC, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %290

89:                                               ; preds = %3
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* @MASK_MULTIPLE, align 4
  %94 = load i32, i32* @MASK_STRING, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @target_flags, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* @target_flags, align 4
  %98 = load i32, i32* @MASK_MULTIPLE, align 4
  %99 = load i32, i32* @MASK_STRING, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @target_flags_explicit, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* @target_flags_explicit, align 4
  br label %103

103:                                              ; preds = %92, %89
  br label %290

104:                                              ; preds = %3
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i32, i32* @MASK_POWER, align 4
  %109 = load i32, i32* @MASK_MULTIPLE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MASK_STRING, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @target_flags, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* @target_flags, align 4
  %115 = load i32, i32* @MASK_POWER, align 4
  %116 = load i32, i32* @MASK_MULTIPLE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @MASK_STRING, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @target_flags_explicit, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* @target_flags_explicit, align 4
  br label %122

122:                                              ; preds = %107, %104
  br label %290

123:                                              ; preds = %3, %3
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @MASK_POWERPC, align 4
  %128 = load i32, i32* @target_flags, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* @target_flags, align 4
  %130 = load i32, i32* @MASK_POWERPC, align 4
  %131 = load i32, i32* @target_flags_explicit, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* @target_flags_explicit, align 4
  br label %133

133:                                              ; preds = %126, %123
  br label %290

134:                                              ; preds = %3, %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 0), align 4
  br label %290

135:                                              ; preds = %3
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @rs6000_parse_yes_no_option(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %136, i32* @TARGET_ALTIVEC_VRSAVE)
  br label %290

138:                                              ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 1), align 4
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @rs6000_parse_yes_no_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %139, i32* @rs6000_isel)
  br label %290

141:                                              ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 2), align 4
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @rs6000_parse_yes_no_option(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %142, i32* @rs6000_spe)
  %144 = load i32, i32* @rs6000_spe, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 64, i32* @rs6000_long_double_type_size, align 4
  br label %147

147:                                              ; preds = %146, %141
  br label %290

148:                                              ; preds = %3
  %149 = load i8*, i8** %6, align 8
  store i8* %149, i8** @rs6000_debug_name, align 8
  br label %290

150:                                              ; preds = %3
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 3), align 4
  store i32 1, i32* @rs6000_altivec_abi, align 4
  store i32 0, i32* @rs6000_spe_abi, align 4
  br label %210

155:                                              ; preds = %150
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  store i32 0, i32* @rs6000_altivec_abi, align 4
  br label %209

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %160
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 3), align 4
  store i32 1, i32* @rs6000_spe_abi, align 4
  store i32 0, i32* @rs6000_altivec_abi, align 4
  %165 = load i32, i32* @TARGET_SPE_ABI, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %208

171:                                              ; preds = %160
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 3), align 4
  store i32 0, i32* @rs6000_spe_abi, align 4
  br label %207

176:                                              ; preds = %171
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  store i32 1, i32* @rs6000_darwin64_abi, align 4
  %181 = call i32 @warning(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %206

182:                                              ; preds = %176
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  store i32 0, i32* @rs6000_darwin64_abi, align 4
  %187 = call i32 @warning(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %205

188:                                              ; preds = %182
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 4), align 4
  store i32 0, i32* @rs6000_ieeequad, align 4
  %193 = call i32 @warning(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %204

194:                                              ; preds = %188
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 4), align 4
  store i32 1, i32* @rs6000_ieeequad, align 4
  %199 = call i32 @warning(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %203

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %201)
  store i32 0, i32* %4, align 4
  br label %291

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203, %192
  br label %205

205:                                              ; preds = %204, %186
  br label %206

206:                                              ; preds = %205, %180
  br label %207

207:                                              ; preds = %206, %175
  br label %208

208:                                              ; preds = %207, %170
  br label %209

209:                                              ; preds = %208, %159
  br label %210

210:                                              ; preds = %209, %154
  br label %290

211:                                              ; preds = %3
  %212 = load i8*, i8** %6, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rs6000_select, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  br label %290

216:                                              ; preds = %3
  %217 = load i8*, i8** %6, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rs6000_select, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 2
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  br label %290

221:                                              ; preds = %3
  %222 = load i8*, i8** %6, align 8
  store i8* %222, i8** @rs6000_traceback_name, align 8
  br label %290

223:                                              ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 5), align 4
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227, %223
  store i32 1, i32* @rs6000_float_gprs, align 4
  br label %247

232:                                              ; preds = %227
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  store i32 2, i32* @rs6000_float_gprs, align 4
  br label %246

237:                                              ; preds = %232
  %238 = load i8*, i8** %6, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  store i32 0, i32* @rs6000_float_gprs, align 4
  br label %245

242:                                              ; preds = %237
  %243 = load i8*, i8** %6, align 8
  %244 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* %243)
  store i32 0, i32* %4, align 4
  br label %291

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %245, %236
  br label %247

247:                                              ; preds = %246, %231
  br label %290

248:                                              ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 6), align 4
  %249 = load i32, i32* @RS6000_DEFAULT_LONG_DOUBLE_SIZE, align 4
  store i32 %249, i32* @rs6000_long_double_type_size, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 64
  br i1 %251, label %252, label %259

252:                                              ; preds = %248
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 128
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i8*, i8** %6, align 8
  %257 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %256)
  %258 = load i32, i32* @RS6000_DEFAULT_LONG_DOUBLE_SIZE, align 4
  store i32 %258, i32* @rs6000_long_double_type_size, align 4
  store i32 0, i32* %4, align 4
  br label %291

259:                                              ; preds = %252, %248
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* @rs6000_long_double_type_size, align 4
  br label %261

261:                                              ; preds = %259
  br label %290

262:                                              ; preds = %3
  %263 = load i8*, i8** %6, align 8
  store i8* %263, i8** @rs6000_sched_costly_dep_str, align 8
  br label %290

264:                                              ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rs6000_explicit_options, i32 0, i32 7), align 4
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %279, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* @DEFAULT_ABI, align 4
  %270 = load i32, i32* @ABI_DARWIN, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = load i32, i32* @TARGET_64BIT, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = call i32 @warning(i32 0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.23, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %272, %268
  %278 = load i32, i32* @MASK_ALIGN_POWER, align 4
  store i32 %278, i32* @rs6000_alignment_flags, align 4
  br label %289

279:                                              ; preds = %264
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* @MASK_ALIGN_NATURAL, align 4
  store i32 %284, i32* @rs6000_alignment_flags, align 4
  br label %288

285:                                              ; preds = %279
  %286 = load i8*, i8** %6, align 8
  %287 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8* %286)
  store i32 0, i32* %4, align 4
  br label %291

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288, %277
  br label %290

290:                                              ; preds = %3, %289, %262, %261, %247, %221, %216, %211, %210, %148, %147, %138, %135, %134, %133, %122, %103, %88, %82, %74, %57, %49, %29, %9
  store i32 1, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %285, %255, %242, %200
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @rs6000_parse_yes_no_option(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
