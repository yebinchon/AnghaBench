; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_decode_location_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_decode_location_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"DW_OP_addr: %lx\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DW_OP_deref\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DW_OP_const1u: %lu\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DW_OP_const1s: %ld\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DW_OP_const2u: %lu\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DW_OP_const2s: %ld\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"DW_OP_const4u: %lu\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"DW_OP_const4s: %ld\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DW_OP_const8u: %lu %lu\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"DW_OP_const8s: %ld %ld\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"DW_OP_constu: %lu\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"DW_OP_consts: %ld\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"DW_OP_dup\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DW_OP_drop\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DW_OP_over\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"DW_OP_pick: %ld\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"DW_OP_swap\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"DW_OP_rot\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"DW_OP_xderef\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"DW_OP_abs\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"DW_OP_and\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"DW_OP_div\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"DW_OP_minus\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DW_OP_mod\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"DW_OP_mul\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"DW_OP_neg\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"DW_OP_not\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"DW_OP_or\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"DW_OP_plus\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"DW_OP_plus_uconst: %lu\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"DW_OP_shl\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"DW_OP_shr\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"DW_OP_shra\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"DW_OP_xor\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"DW_OP_bra: %ld\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"DW_OP_eq\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"DW_OP_ge\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"DW_OP_gt\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"DW_OP_le\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"DW_OP_lt\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"DW_OP_ne\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"DW_OP_skip: %ld\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"DW_OP_lit%d\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"DW_OP_reg%d\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"DW_OP_breg%d: %ld\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"DW_OP_regx: %lu\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"DW_OP_fbreg: %ld\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"DW_OP_bregx: %lu %ld\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"DW_OP_piece: %lu\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"DW_OP_deref_size: %ld\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"DW_OP_xderef_size: %ld\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"DW_OP_nop\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"DW_OP_push_object_address\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"DW_OP_call2: <%lx>\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"DW_OP_call4: <%lx>\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"DW_OP_call_ref\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"DW_OP_form_tls_address\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"DW_OP_GNU_push_tls_address\00", align 1
@DW_OP_lo_user = common dso_local global i32 0, align 4
@DW_OP_hi_user = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [27 x i8] c"(User defined location op)\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"(Unknown location op)\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64)* @decode_location_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_location_expression(i8* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %299, %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %300

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %277 [
    i32 276, label %28
    i32 227, label %37
    i32 236, label %39
    i32 237, label %44
    i32 234, label %49
    i32 235, label %55
    i32 232, label %61
    i32 233, label %67
    i32 230, label %73
    i32 231, label %82
    i32 228, label %91
    i32 229, label %99
    i32 223, label %107
    i32 224, label %109
    i32 175, label %111
    i32 174, label %113
    i32 131, label %118
    i32 136, label %120
    i32 130, label %122
    i32 277, label %124
    i32 275, label %126
    i32 225, label %128
    i32 183, label %130
    i32 182, label %132
    i32 181, label %134
    i32 179, label %136
    i32 177, label %138
    i32 176, label %140
    i32 172, label %142
    i32 171, label %144
    i32 135, label %152
    i32 134, label %154
    i32 133, label %156
    i32 128, label %158
    i32 274, label %160
    i32 222, label %166
    i32 219, label %168
    i32 218, label %170
    i32 217, label %172
    i32 184, label %174
    i32 180, label %176
    i32 132, label %178
    i32 216, label %184
    i32 215, label %184
    i32 204, label %184
    i32 193, label %184
    i32 190, label %184
    i32 189, label %184
    i32 188, label %184
    i32 187, label %184
    i32 186, label %184
    i32 185, label %184
    i32 214, label %184
    i32 213, label %184
    i32 212, label %184
    i32 211, label %184
    i32 210, label %184
    i32 209, label %184
    i32 208, label %184
    i32 207, label %184
    i32 206, label %184
    i32 205, label %184
    i32 203, label %184
    i32 202, label %184
    i32 201, label %184
    i32 200, label %184
    i32 199, label %184
    i32 198, label %184
    i32 197, label %184
    i32 196, label %184
    i32 195, label %184
    i32 194, label %184
    i32 192, label %184
    i32 191, label %184
    i32 169, label %188
    i32 168, label %188
    i32 157, label %188
    i32 146, label %188
    i32 143, label %188
    i32 142, label %188
    i32 141, label %188
    i32 140, label %188
    i32 139, label %188
    i32 138, label %188
    i32 167, label %188
    i32 166, label %188
    i32 165, label %188
    i32 164, label %188
    i32 163, label %188
    i32 162, label %188
    i32 161, label %188
    i32 160, label %188
    i32 159, label %188
    i32 158, label %188
    i32 156, label %188
    i32 155, label %188
    i32 154, label %188
    i32 153, label %188
    i32 152, label %188
    i32 151, label %188
    i32 150, label %188
    i32 149, label %188
    i32 148, label %188
    i32 147, label %188
    i32 145, label %188
    i32 144, label %188
    i32 273, label %192
    i32 272, label %192
    i32 261, label %192
    i32 250, label %192
    i32 247, label %192
    i32 246, label %192
    i32 245, label %192
    i32 244, label %192
    i32 243, label %192
    i32 242, label %192
    i32 271, label %192
    i32 270, label %192
    i32 269, label %192
    i32 268, label %192
    i32 267, label %192
    i32 266, label %192
    i32 265, label %192
    i32 264, label %192
    i32 263, label %192
    i32 262, label %192
    i32 260, label %192
    i32 259, label %192
    i32 258, label %192
    i32 257, label %192
    i32 256, label %192
    i32 255, label %192
    i32 254, label %192
    i32 253, label %192
    i32 252, label %192
    i32 251, label %192
    i32 249, label %192
    i32 248, label %192
    i32 137, label %202
    i32 221, label %210
    i32 241, label %218
    i32 173, label %233
    i32 226, label %241
    i32 129, label %246
    i32 178, label %251
    i32 170, label %253
    i32 240, label %255
    i32 239, label %263
    i32 238, label %271
    i32 220, label %273
    i32 278, label %275
  ]

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @byte_get(i8* %29, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %6, align 8
  br label %293

37:                                               ; preds = %22
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %293

39:                                               ; preds = %22
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = call i64 @byte_get(i8* %40, i32 1)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %293

44:                                               ; preds = %22
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = call i64 @byte_get_signed(i8* %45, i32 1)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  br label %293

49:                                               ; preds = %22
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @byte_get(i8* %50, i32 2)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %6, align 8
  br label %293

55:                                               ; preds = %22
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @byte_get_signed(i8* %56, i32 2)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %6, align 8
  br label %293

61:                                               ; preds = %22
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @byte_get(i8* %62, i32 4)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %6, align 8
  br label %293

67:                                               ; preds = %22
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @byte_get_signed(i8* %68, i32 4)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %6, align 8
  br label %293

73:                                               ; preds = %22
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @byte_get(i8* %74, i32 4)
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = call i64 @byte_get(i8* %77, i32 4)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %75, i64 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  store i8* %81, i8** %6, align 8
  br label %293

82:                                               ; preds = %22
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @byte_get(i8* %83, i32 4)
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  %87 = call i64 @byte_get(i8* %86, i32 4)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %84, i64 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  store i8* %90, i8** %6, align 8
  br label %293

91:                                               ; preds = %22
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @read_leb128(i8* %92, i32* %11, i32 0)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %6, align 8
  br label %293

99:                                               ; preds = %22
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @read_leb128(i8* %100, i32* %11, i32 1)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %6, align 8
  br label %293

107:                                              ; preds = %22
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %293

109:                                              ; preds = %22
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %293

111:                                              ; preds = %22
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %293

113:                                              ; preds = %22
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  %116 = call i64 @byte_get(i8* %114, i32 1)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 %116)
  br label %293

118:                                              ; preds = %22
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %293

120:                                              ; preds = %22
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %293

122:                                              ; preds = %22
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %293

124:                                              ; preds = %22
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %293

126:                                              ; preds = %22
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %293

128:                                              ; preds = %22
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %293

130:                                              ; preds = %22
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  br label %293

132:                                              ; preds = %22
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %293

134:                                              ; preds = %22
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %293

136:                                              ; preds = %22
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %293

138:                                              ; preds = %22
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %293

140:                                              ; preds = %22
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %293

142:                                              ; preds = %22
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  br label %293

144:                                              ; preds = %22
  %145 = load i8*, i8** %6, align 8
  %146 = call i64 @read_leb128(i8* %145, i32* %11, i32 0)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %6, align 8
  br label %293

152:                                              ; preds = %22
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  br label %293

154:                                              ; preds = %22
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  br label %293

156:                                              ; preds = %22
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %293

158:                                              ; preds = %22
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  br label %293

160:                                              ; preds = %22
  %161 = load i8*, i8** %6, align 8
  %162 = call i64 @byte_get_signed(i8* %161, i32 2)
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64 %162)
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  store i8* %165, i8** %6, align 8
  br label %293

166:                                              ; preds = %22
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %293

168:                                              ; preds = %22
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  br label %293

170:                                              ; preds = %22
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  br label %293

172:                                              ; preds = %22
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  br label %293

174:                                              ; preds = %22
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  br label %293

176:                                              ; preds = %22
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  br label %293

178:                                              ; preds = %22
  %179 = load i8*, i8** %6, align 8
  %180 = call i64 @byte_get_signed(i8* %179, i32 2)
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i64 %180)
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  store i8* %183, i8** %6, align 8
  br label %293

184:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %185 = load i32, i32* %10, align 4
  %186 = sub i32 %185, 216
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 %186)
  br label %293

188:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %189 = load i32, i32* %10, align 4
  %190 = sub i32 %189, 169
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 %190)
  br label %293

192:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %193 = load i32, i32* %10, align 4
  %194 = sub i32 %193, 273
  %195 = load i8*, i8** %6, align 8
  %196 = call i64 @read_leb128(i8* %195, i32* %11, i32 1)
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i32 %194, i64 %196)
  %198 = load i32, i32* %11, align 4
  %199 = load i8*, i8** %6, align 8
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %6, align 8
  br label %293

202:                                              ; preds = %22
  %203 = load i8*, i8** %6, align 8
  %204 = call i64 @read_leb128(i8* %203, i32* %11, i32 0)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i64 %204)
  %206 = load i32, i32* %11, align 4
  %207 = load i8*, i8** %6, align 8
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %6, align 8
  br label %293

210:                                              ; preds = %22
  store i32 1, i32* %14, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = call i64 @read_leb128(i8* %211, i32* %11, i32 1)
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i64 %212)
  %214 = load i32, i32* %11, align 4
  %215 = load i8*, i8** %6, align 8
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %6, align 8
  br label %293

218:                                              ; preds = %22
  %219 = load i8*, i8** %6, align 8
  %220 = call i64 @read_leb128(i8* %219, i32* %11, i32 0)
  store i64 %220, i64* %12, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i8*, i8** %6, align 8
  %223 = zext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %6, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load i8*, i8** %6, align 8
  %227 = call i64 @read_leb128(i8* %226, i32* %11, i32 1)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i64 %225, i64 %227)
  %229 = load i32, i32* %11, align 4
  %230 = load i8*, i8** %6, align 8
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %6, align 8
  br label %293

233:                                              ; preds = %22
  %234 = load i8*, i8** %6, align 8
  %235 = call i64 @read_leb128(i8* %234, i32* %11, i32 0)
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i64 %235)
  %237 = load i32, i32* %11, align 4
  %238 = load i8*, i8** %6, align 8
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %6, align 8
  br label %293

241:                                              ; preds = %22
  %242 = load i8*, i8** %6, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %6, align 8
  %244 = call i64 @byte_get(i8* %242, i32 1)
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i64 %244)
  br label %293

246:                                              ; preds = %22
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %6, align 8
  %249 = call i64 @byte_get(i8* %247, i32 1)
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i64 %249)
  br label %293

251:                                              ; preds = %22
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  br label %293

253:                                              ; preds = %22
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0))
  br label %293

255:                                              ; preds = %22
  %256 = load i8*, i8** %6, align 8
  %257 = call i64 @byte_get(i8* %256, i32 2)
  %258 = load i64, i64* %9, align 8
  %259 = add i64 %257, %258
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i64 %259)
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 2
  store i8* %262, i8** %6, align 8
  br label %293

263:                                              ; preds = %22
  %264 = load i8*, i8** %6, align 8
  %265 = call i64 @byte_get(i8* %264, i32 4)
  %266 = load i64, i64* %9, align 8
  %267 = add i64 %265, %266
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0), i64 %267)
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 4
  store i8* %270, i8** %6, align 8
  br label %293

271:                                              ; preds = %22
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0))
  br label %293

273:                                              ; preds = %22
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0))
  br label %293

275:                                              ; preds = %22
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0))
  br label %293

277:                                              ; preds = %22
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @DW_OP_lo_user, align 4
  %280 = icmp uge i32 %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @DW_OP_hi_user, align 4
  %284 = icmp ule i32 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0))
  %287 = call i32 (i8*, ...) @printf(i8* %286)
  br label %291

288:                                              ; preds = %281, %277
  %289 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0))
  %290 = call i32 (i8*, ...) @printf(i8* %289)
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %14, align 4
  store i32 %292, i32* %5, align 4
  br label %302

293:                                              ; preds = %275, %273, %271, %263, %255, %253, %251, %246, %241, %233, %218, %210, %202, %192, %188, %184, %178, %176, %174, %172, %170, %168, %166, %160, %158, %156, %154, %152, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %113, %111, %109, %107, %99, %91, %82, %73, %67, %61, %55, %49, %44, %39, %37, %28
  %294 = load i8*, i8** %6, align 8
  %295 = load i8*, i8** %13, align 8
  %296 = icmp ult i8* %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %293
  br label %18

300:                                              ; preds = %18
  %301 = load i32, i32* %14, align 4
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %300, %291
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @byte_get(i8*, i32) #1

declare dso_local i64 @byte_get_signed(i8*, i32) #1

declare dso_local i64 @read_leb128(i8*, i32*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
