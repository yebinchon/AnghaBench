; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_validate_mips_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_validate_mips_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_opcode = type { i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"internal: bad mips opcode (mask error): %s %s\00", align 1
@OP_MASK_BITIND = common dso_local global i32 0, align 4
@OP_SH_BITIND = common dso_local global i32 0, align 4
@OP_MASK_UDI1 = common dso_local global i32 0, align 4
@OP_SH_UDI1 = common dso_local global i32 0, align 4
@OP_MASK_UDI2 = common dso_local global i32 0, align 4
@OP_SH_UDI2 = common dso_local global i32 0, align 4
@OP_MASK_UDI3 = common dso_local global i32 0, align 4
@OP_SH_UDI3 = common dso_local global i32 0, align 4
@OP_MASK_UDI4 = common dso_local global i32 0, align 4
@OP_SH_UDI4 = common dso_local global i32 0, align 4
@OP_MASK_SHAMT = common dso_local global i32 0, align 4
@OP_SH_SHAMT = common dso_local global i32 0, align 4
@OP_MASK_INSMSB = common dso_local global i32 0, align 4
@OP_SH_INSMSB = common dso_local global i32 0, align 4
@OP_MASK_EXTMSBD = common dso_local global i32 0, align 4
@OP_SH_EXTMSBD = common dso_local global i32 0, align 4
@OP_MASK_RD = common dso_local global i32 0, align 4
@OP_SH_RD = common dso_local global i32 0, align 4
@OP_MASK_SEL = common dso_local global i32 0, align 4
@OP_SH_SEL = common dso_local global i32 0, align 4
@OP_MASK_RT = common dso_local global i32 0, align 4
@OP_SH_RT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"internal: bad mips opcode (unknown extension operand type `+%c'): %s %s\00", align 1
@OP_MASK_CODE20 = common dso_local global i32 0, align 4
@OP_SH_CODE20 = common dso_local global i32 0, align 4
@OP_MASK_COPZ = common dso_local global i32 0, align 4
@OP_SH_COPZ = common dso_local global i32 0, align 4
@OP_MASK_FD = common dso_local global i32 0, align 4
@OP_SH_FD = common dso_local global i32 0, align 4
@OP_MASK_CODE19 = common dso_local global i32 0, align 4
@OP_SH_CODE19 = common dso_local global i32 0, align 4
@OP_MASK_CCC = common dso_local global i32 0, align 4
@OP_SH_CCC = common dso_local global i32 0, align 4
@OP_MASK_BCC = common dso_local global i32 0, align 4
@OP_SH_BCC = common dso_local global i32 0, align 4
@OP_MASK_ALN = common dso_local global i32 0, align 4
@OP_SH_ALN = common dso_local global i32 0, align 4
@OP_MASK_VSEL = common dso_local global i32 0, align 4
@OP_SH_VSEL = common dso_local global i32 0, align 4
@OP_MASK_FT = common dso_local global i32 0, align 4
@OP_SH_FT = common dso_local global i32 0, align 4
@OP_MASK_FR = common dso_local global i32 0, align 4
@OP_SH_FR = common dso_local global i32 0, align 4
@OP_MASK_FS = common dso_local global i32 0, align 4
@OP_SH_FS = common dso_local global i32 0, align 4
@OP_MASK_TARGET = common dso_local global i32 0, align 4
@OP_SH_TARGET = common dso_local global i32 0, align 4
@OP_MASK_RS = common dso_local global i32 0, align 4
@OP_SH_RS = common dso_local global i32 0, align 4
@OP_MASK_CODE = common dso_local global i32 0, align 4
@OP_SH_CODE = common dso_local global i32 0, align 4
@OP_MASK_PREFX = common dso_local global i32 0, align 4
@OP_SH_PREFX = common dso_local global i32 0, align 4
@OP_MASK_IMMEDIATE = common dso_local global i32 0, align 4
@OP_SH_IMMEDIATE = common dso_local global i32 0, align 4
@OP_MASK_DELTA = common dso_local global i32 0, align 4
@OP_SH_DELTA = common dso_local global i32 0, align 4
@OP_MASK_CACHE = common dso_local global i32 0, align 4
@OP_SH_CACHE = common dso_local global i32 0, align 4
@OP_MASK_CODE2 = common dso_local global i32 0, align 4
@OP_SH_CODE2 = common dso_local global i32 0, align 4
@OP_MASK_PERFREG = common dso_local global i32 0, align 4
@OP_SH_PERFREG = common dso_local global i32 0, align 4
@OP_MASK_VECBYTE = common dso_local global i32 0, align 4
@OP_SH_VECBYTE = common dso_local global i32 0, align 4
@OP_MASK_VECALIGN = common dso_local global i32 0, align 4
@OP_SH_VECALIGN = common dso_local global i32 0, align 4
@OP_MASK_BP = common dso_local global i32 0, align 4
@OP_SH_BP = common dso_local global i32 0, align 4
@OP_MASK_SA3 = common dso_local global i32 0, align 4
@OP_SH_SA3 = common dso_local global i32 0, align 4
@OP_MASK_SA4 = common dso_local global i32 0, align 4
@OP_SH_SA4 = common dso_local global i32 0, align 4
@OP_MASK_IMM8 = common dso_local global i32 0, align 4
@OP_SH_IMM8 = common dso_local global i32 0, align 4
@OP_MASK_DSPACC = common dso_local global i32 0, align 4
@OP_SH_DSPACC = common dso_local global i32 0, align 4
@OP_MASK_WRDSP = common dso_local global i32 0, align 4
@OP_SH_WRDSP = common dso_local global i32 0, align 4
@OP_MASK_DSPACC_S = common dso_local global i32 0, align 4
@OP_SH_DSPACC_S = common dso_local global i32 0, align 4
@OP_MASK_DSPSFT = common dso_local global i32 0, align 4
@OP_SH_DSPSFT = common dso_local global i32 0, align 4
@OP_MASK_RDDSP = common dso_local global i32 0, align 4
@OP_SH_RDDSP = common dso_local global i32 0, align 4
@OP_MASK_DSPSFT_7 = common dso_local global i32 0, align 4
@OP_SH_DSPSFT_7 = common dso_local global i32 0, align 4
@OP_MASK_IMM10 = common dso_local global i32 0, align 4
@OP_SH_IMM10 = common dso_local global i32 0, align 4
@OP_MASK_MT_U = common dso_local global i32 0, align 4
@OP_SH_MT_U = common dso_local global i32 0, align 4
@OP_MASK_MT_H = common dso_local global i32 0, align 4
@OP_SH_MT_H = common dso_local global i32 0, align 4
@OP_MASK_MTACC_T = common dso_local global i32 0, align 4
@OP_SH_MTACC_T = common dso_local global i32 0, align 4
@OP_MASK_MTACC_D = common dso_local global i32 0, align 4
@OP_SH_MTACC_D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"internal: bad mips opcode (unknown operand type `%c'): %s %s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"internal: bad mips opcode (bits 0x%lx undefined): %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_opcode*)* @validate_mips_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mips_insn(%struct.mips_opcode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mips_opcode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.mips_opcode* %0, %struct.mips_opcode** %3, align 8
  %7 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %8 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %11 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %15 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = and i64 %13, %16
  %18 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %19 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %25 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %29 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32, i64, i8*, ...) @as_bad(i32 %23, i64 %27, i8* %30)
  store i32 0, i32* %2, align 4
  br label %670

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %651, %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %652

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %5, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %638 [
    i32 44, label %42
    i32 40, label %43
    i32 41, label %44
    i32 94, label %45
    i32 126, label %52
    i32 43, label %59
    i32 60, label %189
    i32 62, label %196
    i32 65, label %203
    i32 66, label %204
    i32 67, label %211
    i32 68, label %218
    i32 69, label %225
    i32 70, label %232
    i32 71, label %233
    i32 72, label %240
    i32 73, label %247
    i32 74, label %248
    i32 75, label %255
    i32 76, label %262
    i32 77, label %263
    i32 78, label %270
    i32 79, label %277
    i32 81, label %284
    i32 82, label %297
    i32 83, label %304
    i32 84, label %311
    i32 86, label %318
    i32 87, label %325
    i32 88, label %332
    i32 89, label %339
    i32 90, label %346
    i32 97, label %353
    i32 98, label %360
    i32 99, label %367
    i32 100, label %374
    i32 102, label %381
    i32 104, label %382
    i32 105, label %389
    i32 106, label %396
    i32 107, label %403
    i32 108, label %410
    i32 111, label %411
    i32 112, label %418
    i32 113, label %425
    i32 114, label %432
    i32 115, label %439
    i32 116, label %446
    i32 117, label %453
    i32 118, label %460
    i32 119, label %467
    i32 120, label %474
    i32 121, label %475
    i32 122, label %482
    i32 80, label %483
    i32 85, label %490
    i32 101, label %503
    i32 37, label %510
    i32 91, label %517
    i32 93, label %518
    i32 50, label %519
    i32 51, label %526
    i32 52, label %533
    i32 53, label %540
    i32 54, label %547
    i32 55, label %554
    i32 56, label %561
    i32 57, label %568
    i32 48, label %575
    i32 39, label %582
    i32 58, label %589
    i32 64, label %596
    i32 33, label %603
    i32 36, label %610
    i32 42, label %617
    i32 38, label %624
    i32 103, label %631
  ]

42:                                               ; preds = %37
  br label %651

43:                                               ; preds = %37
  br label %651

44:                                               ; preds = %37
  br label %651

45:                                               ; preds = %37
  %46 = load i32, i32* @OP_MASK_BITIND, align 4
  %47 = load i32, i32* @OP_SH_BITIND, align 4
  %48 = shl i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %651

52:                                               ; preds = %37
  %53 = load i32, i32* @OP_MASK_BITIND, align 4
  %54 = load i32, i32* @OP_SH_BITIND, align 4
  %55 = shl i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %651

59:                                               ; preds = %37
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %60, align 1
  store i8 %62, i8* %5, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %175 [
    i32 49, label %64
    i32 50, label %71
    i32 51, label %78
    i32 52, label %85
    i32 65, label %92
    i32 66, label %99
    i32 67, label %106
    i32 68, label %113
    i32 69, label %126
    i32 70, label %133
    i32 71, label %140
    i32 72, label %147
    i32 73, label %154
    i32 116, label %155
    i32 84, label %162
  ]

64:                                               ; preds = %59
  %65 = load i32, i32* @OP_MASK_UDI1, align 4
  %66 = load i32, i32* @OP_SH_UDI1, align 4
  %67 = shl i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %6, align 8
  br label %188

71:                                               ; preds = %59
  %72 = load i32, i32* @OP_MASK_UDI2, align 4
  %73 = load i32, i32* @OP_SH_UDI2, align 4
  %74 = shl i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %188

78:                                               ; preds = %59
  %79 = load i32, i32* @OP_MASK_UDI3, align 4
  %80 = load i32, i32* @OP_SH_UDI3, align 4
  %81 = shl i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %6, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %6, align 8
  br label %188

85:                                               ; preds = %59
  %86 = load i32, i32* @OP_MASK_UDI4, align 4
  %87 = load i32, i32* @OP_SH_UDI4, align 4
  %88 = shl i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %6, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %188

92:                                               ; preds = %59
  %93 = load i32, i32* @OP_MASK_SHAMT, align 4
  %94 = load i32, i32* @OP_SH_SHAMT, align 4
  %95 = shl i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %6, align 8
  br label %188

99:                                               ; preds = %59
  %100 = load i32, i32* @OP_MASK_INSMSB, align 4
  %101 = load i32, i32* @OP_SH_INSMSB, align 4
  %102 = shl i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %6, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %6, align 8
  br label %188

106:                                              ; preds = %59
  %107 = load i32, i32* @OP_MASK_EXTMSBD, align 4
  %108 = load i32, i32* @OP_SH_EXTMSBD, align 4
  %109 = shl i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %6, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %6, align 8
  br label %188

113:                                              ; preds = %59
  %114 = load i32, i32* @OP_MASK_RD, align 4
  %115 = load i32, i32* @OP_SH_RD, align 4
  %116 = shl i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %6, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %6, align 8
  %120 = load i32, i32* @OP_MASK_SEL, align 4
  %121 = load i32, i32* @OP_SH_SEL, align 4
  %122 = shl i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %6, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %6, align 8
  br label %188

126:                                              ; preds = %59
  %127 = load i32, i32* @OP_MASK_SHAMT, align 4
  %128 = load i32, i32* @OP_SH_SHAMT, align 4
  %129 = shl i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %6, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %6, align 8
  br label %188

133:                                              ; preds = %59
  %134 = load i32, i32* @OP_MASK_INSMSB, align 4
  %135 = load i32, i32* @OP_SH_INSMSB, align 4
  %136 = shl i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %6, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %6, align 8
  br label %188

140:                                              ; preds = %59
  %141 = load i32, i32* @OP_MASK_EXTMSBD, align 4
  %142 = load i32, i32* @OP_SH_EXTMSBD, align 4
  %143 = shl i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %6, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %6, align 8
  br label %188

147:                                              ; preds = %59
  %148 = load i32, i32* @OP_MASK_EXTMSBD, align 4
  %149 = load i32, i32* @OP_SH_EXTMSBD, align 4
  %150 = shl i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %6, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %6, align 8
  br label %188

154:                                              ; preds = %59
  br label %188

155:                                              ; preds = %59
  %156 = load i32, i32* @OP_MASK_RT, align 4
  %157 = load i32, i32* @OP_SH_RT, align 4
  %158 = shl i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %6, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %6, align 8
  br label %188

162:                                              ; preds = %59
  %163 = load i32, i32* @OP_MASK_RT, align 4
  %164 = load i32, i32* @OP_SH_RT, align 4
  %165 = shl i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %6, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %6, align 8
  %169 = load i32, i32* @OP_MASK_SEL, align 4
  %170 = load i32, i32* @OP_SH_SEL, align 4
  %171 = shl i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %6, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %6, align 8
  br label %188

175:                                              ; preds = %59
  %176 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i8, i8* %5, align 1
  %178 = sext i8 %177 to i64
  %179 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %180 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %185 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i32, i64, i8*, ...) @as_bad(i32 %176, i64 %178, i8* %183, i8* %186)
  store i32 0, i32* %2, align 4
  br label %670

188:                                              ; preds = %162, %155, %154, %147, %140, %133, %126, %113, %106, %99, %92, %85, %78, %71, %64
  br label %651

189:                                              ; preds = %37
  %190 = load i32, i32* @OP_MASK_SHAMT, align 4
  %191 = load i32, i32* @OP_SH_SHAMT, align 4
  %192 = shl i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %6, align 8
  %195 = or i64 %194, %193
  store i64 %195, i64* %6, align 8
  br label %651

196:                                              ; preds = %37
  %197 = load i32, i32* @OP_MASK_SHAMT, align 4
  %198 = load i32, i32* @OP_SH_SHAMT, align 4
  %199 = shl i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %6, align 8
  %202 = or i64 %201, %200
  store i64 %202, i64* %6, align 8
  br label %651

203:                                              ; preds = %37
  br label %651

204:                                              ; preds = %37
  %205 = load i32, i32* @OP_MASK_CODE20, align 4
  %206 = load i32, i32* @OP_SH_CODE20, align 4
  %207 = shl i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %6, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %6, align 8
  br label %651

211:                                              ; preds = %37
  %212 = load i32, i32* @OP_MASK_COPZ, align 4
  %213 = load i32, i32* @OP_SH_COPZ, align 4
  %214 = shl i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %6, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %6, align 8
  br label %651

218:                                              ; preds = %37
  %219 = load i32, i32* @OP_MASK_FD, align 4
  %220 = load i32, i32* @OP_SH_FD, align 4
  %221 = shl i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %6, align 8
  %224 = or i64 %223, %222
  store i64 %224, i64* %6, align 8
  br label %651

225:                                              ; preds = %37
  %226 = load i32, i32* @OP_MASK_RT, align 4
  %227 = load i32, i32* @OP_SH_RT, align 4
  %228 = shl i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %6, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %6, align 8
  br label %651

232:                                              ; preds = %37
  br label %651

233:                                              ; preds = %37
  %234 = load i32, i32* @OP_MASK_RD, align 4
  %235 = load i32, i32* @OP_SH_RD, align 4
  %236 = shl i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* %6, align 8
  %239 = or i64 %238, %237
  store i64 %239, i64* %6, align 8
  br label %651

240:                                              ; preds = %37
  %241 = load i32, i32* @OP_MASK_SEL, align 4
  %242 = load i32, i32* @OP_SH_SEL, align 4
  %243 = shl i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %6, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %6, align 8
  br label %651

247:                                              ; preds = %37
  br label %651

248:                                              ; preds = %37
  %249 = load i32, i32* @OP_MASK_CODE19, align 4
  %250 = load i32, i32* @OP_SH_CODE19, align 4
  %251 = shl i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %6, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %6, align 8
  br label %651

255:                                              ; preds = %37
  %256 = load i32, i32* @OP_MASK_RD, align 4
  %257 = load i32, i32* @OP_SH_RD, align 4
  %258 = shl i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %6, align 8
  %261 = or i64 %260, %259
  store i64 %261, i64* %6, align 8
  br label %651

262:                                              ; preds = %37
  br label %651

263:                                              ; preds = %37
  %264 = load i32, i32* @OP_MASK_CCC, align 4
  %265 = load i32, i32* @OP_SH_CCC, align 4
  %266 = shl i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %6, align 8
  %269 = or i64 %268, %267
  store i64 %269, i64* %6, align 8
  br label %651

270:                                              ; preds = %37
  %271 = load i32, i32* @OP_MASK_BCC, align 4
  %272 = load i32, i32* @OP_SH_BCC, align 4
  %273 = shl i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %6, align 8
  %276 = or i64 %275, %274
  store i64 %276, i64* %6, align 8
  br label %651

277:                                              ; preds = %37
  %278 = load i32, i32* @OP_MASK_ALN, align 4
  %279 = load i32, i32* @OP_SH_ALN, align 4
  %280 = shl i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = load i64, i64* %6, align 8
  %283 = or i64 %282, %281
  store i64 %283, i64* %6, align 8
  br label %651

284:                                              ; preds = %37
  %285 = load i32, i32* @OP_MASK_VSEL, align 4
  %286 = load i32, i32* @OP_SH_VSEL, align 4
  %287 = shl i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* %6, align 8
  %290 = or i64 %289, %288
  store i64 %290, i64* %6, align 8
  %291 = load i32, i32* @OP_MASK_FT, align 4
  %292 = load i32, i32* @OP_SH_FT, align 4
  %293 = shl i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* %6, align 8
  %296 = or i64 %295, %294
  store i64 %296, i64* %6, align 8
  br label %651

297:                                              ; preds = %37
  %298 = load i32, i32* @OP_MASK_FR, align 4
  %299 = load i32, i32* @OP_SH_FR, align 4
  %300 = shl i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = load i64, i64* %6, align 8
  %303 = or i64 %302, %301
  store i64 %303, i64* %6, align 8
  br label %651

304:                                              ; preds = %37
  %305 = load i32, i32* @OP_MASK_FS, align 4
  %306 = load i32, i32* @OP_SH_FS, align 4
  %307 = shl i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* %6, align 8
  %310 = or i64 %309, %308
  store i64 %310, i64* %6, align 8
  br label %651

311:                                              ; preds = %37
  %312 = load i32, i32* @OP_MASK_FT, align 4
  %313 = load i32, i32* @OP_SH_FT, align 4
  %314 = shl i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = load i64, i64* %6, align 8
  %317 = or i64 %316, %315
  store i64 %317, i64* %6, align 8
  br label %651

318:                                              ; preds = %37
  %319 = load i32, i32* @OP_MASK_FS, align 4
  %320 = load i32, i32* @OP_SH_FS, align 4
  %321 = shl i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = load i64, i64* %6, align 8
  %324 = or i64 %323, %322
  store i64 %324, i64* %6, align 8
  br label %651

325:                                              ; preds = %37
  %326 = load i32, i32* @OP_MASK_FT, align 4
  %327 = load i32, i32* @OP_SH_FT, align 4
  %328 = shl i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = load i64, i64* %6, align 8
  %331 = or i64 %330, %329
  store i64 %331, i64* %6, align 8
  br label %651

332:                                              ; preds = %37
  %333 = load i32, i32* @OP_MASK_FD, align 4
  %334 = load i32, i32* @OP_SH_FD, align 4
  %335 = shl i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = load i64, i64* %6, align 8
  %338 = or i64 %337, %336
  store i64 %338, i64* %6, align 8
  br label %651

339:                                              ; preds = %37
  %340 = load i32, i32* @OP_MASK_FS, align 4
  %341 = load i32, i32* @OP_SH_FS, align 4
  %342 = shl i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* %6, align 8
  %345 = or i64 %344, %343
  store i64 %345, i64* %6, align 8
  br label %651

346:                                              ; preds = %37
  %347 = load i32, i32* @OP_MASK_FT, align 4
  %348 = load i32, i32* @OP_SH_FT, align 4
  %349 = shl i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = load i64, i64* %6, align 8
  %352 = or i64 %351, %350
  store i64 %352, i64* %6, align 8
  br label %651

353:                                              ; preds = %37
  %354 = load i32, i32* @OP_MASK_TARGET, align 4
  %355 = load i32, i32* @OP_SH_TARGET, align 4
  %356 = shl i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* %6, align 8
  %359 = or i64 %358, %357
  store i64 %359, i64* %6, align 8
  br label %651

360:                                              ; preds = %37
  %361 = load i32, i32* @OP_MASK_RS, align 4
  %362 = load i32, i32* @OP_SH_RS, align 4
  %363 = shl i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = load i64, i64* %6, align 8
  %366 = or i64 %365, %364
  store i64 %366, i64* %6, align 8
  br label %651

367:                                              ; preds = %37
  %368 = load i32, i32* @OP_MASK_CODE, align 4
  %369 = load i32, i32* @OP_SH_CODE, align 4
  %370 = shl i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %6, align 8
  %373 = or i64 %372, %371
  store i64 %373, i64* %6, align 8
  br label %651

374:                                              ; preds = %37
  %375 = load i32, i32* @OP_MASK_RD, align 4
  %376 = load i32, i32* @OP_SH_RD, align 4
  %377 = shl i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* %6, align 8
  %380 = or i64 %379, %378
  store i64 %380, i64* %6, align 8
  br label %651

381:                                              ; preds = %37
  br label %651

382:                                              ; preds = %37
  %383 = load i32, i32* @OP_MASK_PREFX, align 4
  %384 = load i32, i32* @OP_SH_PREFX, align 4
  %385 = shl i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = load i64, i64* %6, align 8
  %388 = or i64 %387, %386
  store i64 %388, i64* %6, align 8
  br label %651

389:                                              ; preds = %37
  %390 = load i32, i32* @OP_MASK_IMMEDIATE, align 4
  %391 = load i32, i32* @OP_SH_IMMEDIATE, align 4
  %392 = shl i32 %390, %391
  %393 = sext i32 %392 to i64
  %394 = load i64, i64* %6, align 8
  %395 = or i64 %394, %393
  store i64 %395, i64* %6, align 8
  br label %651

396:                                              ; preds = %37
  %397 = load i32, i32* @OP_MASK_DELTA, align 4
  %398 = load i32, i32* @OP_SH_DELTA, align 4
  %399 = shl i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %6, align 8
  %402 = or i64 %401, %400
  store i64 %402, i64* %6, align 8
  br label %651

403:                                              ; preds = %37
  %404 = load i32, i32* @OP_MASK_CACHE, align 4
  %405 = load i32, i32* @OP_SH_CACHE, align 4
  %406 = shl i32 %404, %405
  %407 = sext i32 %406 to i64
  %408 = load i64, i64* %6, align 8
  %409 = or i64 %408, %407
  store i64 %409, i64* %6, align 8
  br label %651

410:                                              ; preds = %37
  br label %651

411:                                              ; preds = %37
  %412 = load i32, i32* @OP_MASK_DELTA, align 4
  %413 = load i32, i32* @OP_SH_DELTA, align 4
  %414 = shl i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %6, align 8
  %417 = or i64 %416, %415
  store i64 %417, i64* %6, align 8
  br label %651

418:                                              ; preds = %37
  %419 = load i32, i32* @OP_MASK_DELTA, align 4
  %420 = load i32, i32* @OP_SH_DELTA, align 4
  %421 = shl i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = load i64, i64* %6, align 8
  %424 = or i64 %423, %422
  store i64 %424, i64* %6, align 8
  br label %651

425:                                              ; preds = %37
  %426 = load i32, i32* @OP_MASK_CODE2, align 4
  %427 = load i32, i32* @OP_SH_CODE2, align 4
  %428 = shl i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = load i64, i64* %6, align 8
  %431 = or i64 %430, %429
  store i64 %431, i64* %6, align 8
  br label %651

432:                                              ; preds = %37
  %433 = load i32, i32* @OP_MASK_RS, align 4
  %434 = load i32, i32* @OP_SH_RS, align 4
  %435 = shl i32 %433, %434
  %436 = sext i32 %435 to i64
  %437 = load i64, i64* %6, align 8
  %438 = or i64 %437, %436
  store i64 %438, i64* %6, align 8
  br label %651

439:                                              ; preds = %37
  %440 = load i32, i32* @OP_MASK_RS, align 4
  %441 = load i32, i32* @OP_SH_RS, align 4
  %442 = shl i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = load i64, i64* %6, align 8
  %445 = or i64 %444, %443
  store i64 %445, i64* %6, align 8
  br label %651

446:                                              ; preds = %37
  %447 = load i32, i32* @OP_MASK_RT, align 4
  %448 = load i32, i32* @OP_SH_RT, align 4
  %449 = shl i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = load i64, i64* %6, align 8
  %452 = or i64 %451, %450
  store i64 %452, i64* %6, align 8
  br label %651

453:                                              ; preds = %37
  %454 = load i32, i32* @OP_MASK_IMMEDIATE, align 4
  %455 = load i32, i32* @OP_SH_IMMEDIATE, align 4
  %456 = shl i32 %454, %455
  %457 = sext i32 %456 to i64
  %458 = load i64, i64* %6, align 8
  %459 = or i64 %458, %457
  store i64 %459, i64* %6, align 8
  br label %651

460:                                              ; preds = %37
  %461 = load i32, i32* @OP_MASK_RS, align 4
  %462 = load i32, i32* @OP_SH_RS, align 4
  %463 = shl i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = load i64, i64* %6, align 8
  %466 = or i64 %465, %464
  store i64 %466, i64* %6, align 8
  br label %651

467:                                              ; preds = %37
  %468 = load i32, i32* @OP_MASK_RT, align 4
  %469 = load i32, i32* @OP_SH_RT, align 4
  %470 = shl i32 %468, %469
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %6, align 8
  %473 = or i64 %472, %471
  store i64 %473, i64* %6, align 8
  br label %651

474:                                              ; preds = %37
  br label %651

475:                                              ; preds = %37
  %476 = load i32, i32* @OP_MASK_CODE2, align 4
  %477 = load i32, i32* @OP_SH_CODE2, align 4
  %478 = shl i32 %476, %477
  %479 = sext i32 %478 to i64
  %480 = load i64, i64* %6, align 8
  %481 = or i64 %480, %479
  store i64 %481, i64* %6, align 8
  br label %651

482:                                              ; preds = %37
  br label %651

483:                                              ; preds = %37
  %484 = load i32, i32* @OP_MASK_PERFREG, align 4
  %485 = load i32, i32* @OP_SH_PERFREG, align 4
  %486 = shl i32 %484, %485
  %487 = sext i32 %486 to i64
  %488 = load i64, i64* %6, align 8
  %489 = or i64 %488, %487
  store i64 %489, i64* %6, align 8
  br label %651

490:                                              ; preds = %37
  %491 = load i32, i32* @OP_MASK_RD, align 4
  %492 = load i32, i32* @OP_SH_RD, align 4
  %493 = shl i32 %491, %492
  %494 = sext i32 %493 to i64
  %495 = load i64, i64* %6, align 8
  %496 = or i64 %495, %494
  store i64 %496, i64* %6, align 8
  %497 = load i32, i32* @OP_MASK_RT, align 4
  %498 = load i32, i32* @OP_SH_RT, align 4
  %499 = shl i32 %497, %498
  %500 = sext i32 %499 to i64
  %501 = load i64, i64* %6, align 8
  %502 = or i64 %501, %500
  store i64 %502, i64* %6, align 8
  br label %651

503:                                              ; preds = %37
  %504 = load i32, i32* @OP_MASK_VECBYTE, align 4
  %505 = load i32, i32* @OP_SH_VECBYTE, align 4
  %506 = shl i32 %504, %505
  %507 = sext i32 %506 to i64
  %508 = load i64, i64* %6, align 8
  %509 = or i64 %508, %507
  store i64 %509, i64* %6, align 8
  br label %651

510:                                              ; preds = %37
  %511 = load i32, i32* @OP_MASK_VECALIGN, align 4
  %512 = load i32, i32* @OP_SH_VECALIGN, align 4
  %513 = shl i32 %511, %512
  %514 = sext i32 %513 to i64
  %515 = load i64, i64* %6, align 8
  %516 = or i64 %515, %514
  store i64 %516, i64* %6, align 8
  br label %651

517:                                              ; preds = %37
  br label %651

518:                                              ; preds = %37
  br label %651

519:                                              ; preds = %37
  %520 = load i32, i32* @OP_MASK_BP, align 4
  %521 = load i32, i32* @OP_SH_BP, align 4
  %522 = shl i32 %520, %521
  %523 = sext i32 %522 to i64
  %524 = load i64, i64* %6, align 8
  %525 = or i64 %524, %523
  store i64 %525, i64* %6, align 8
  br label %651

526:                                              ; preds = %37
  %527 = load i32, i32* @OP_MASK_SA3, align 4
  %528 = load i32, i32* @OP_SH_SA3, align 4
  %529 = shl i32 %527, %528
  %530 = sext i32 %529 to i64
  %531 = load i64, i64* %6, align 8
  %532 = or i64 %531, %530
  store i64 %532, i64* %6, align 8
  br label %651

533:                                              ; preds = %37
  %534 = load i32, i32* @OP_MASK_SA4, align 4
  %535 = load i32, i32* @OP_SH_SA4, align 4
  %536 = shl i32 %534, %535
  %537 = sext i32 %536 to i64
  %538 = load i64, i64* %6, align 8
  %539 = or i64 %538, %537
  store i64 %539, i64* %6, align 8
  br label %651

540:                                              ; preds = %37
  %541 = load i32, i32* @OP_MASK_IMM8, align 4
  %542 = load i32, i32* @OP_SH_IMM8, align 4
  %543 = shl i32 %541, %542
  %544 = sext i32 %543 to i64
  %545 = load i64, i64* %6, align 8
  %546 = or i64 %545, %544
  store i64 %546, i64* %6, align 8
  br label %651

547:                                              ; preds = %37
  %548 = load i32, i32* @OP_MASK_RS, align 4
  %549 = load i32, i32* @OP_SH_RS, align 4
  %550 = shl i32 %548, %549
  %551 = sext i32 %550 to i64
  %552 = load i64, i64* %6, align 8
  %553 = or i64 %552, %551
  store i64 %553, i64* %6, align 8
  br label %651

554:                                              ; preds = %37
  %555 = load i32, i32* @OP_MASK_DSPACC, align 4
  %556 = load i32, i32* @OP_SH_DSPACC, align 4
  %557 = shl i32 %555, %556
  %558 = sext i32 %557 to i64
  %559 = load i64, i64* %6, align 8
  %560 = or i64 %559, %558
  store i64 %560, i64* %6, align 8
  br label %651

561:                                              ; preds = %37
  %562 = load i32, i32* @OP_MASK_WRDSP, align 4
  %563 = load i32, i32* @OP_SH_WRDSP, align 4
  %564 = shl i32 %562, %563
  %565 = sext i32 %564 to i64
  %566 = load i64, i64* %6, align 8
  %567 = or i64 %566, %565
  store i64 %567, i64* %6, align 8
  br label %651

568:                                              ; preds = %37
  %569 = load i32, i32* @OP_MASK_DSPACC_S, align 4
  %570 = load i32, i32* @OP_SH_DSPACC_S, align 4
  %571 = shl i32 %569, %570
  %572 = sext i32 %571 to i64
  %573 = load i64, i64* %6, align 8
  %574 = or i64 %573, %572
  store i64 %574, i64* %6, align 8
  br label %651

575:                                              ; preds = %37
  %576 = load i32, i32* @OP_MASK_DSPSFT, align 4
  %577 = load i32, i32* @OP_SH_DSPSFT, align 4
  %578 = shl i32 %576, %577
  %579 = sext i32 %578 to i64
  %580 = load i64, i64* %6, align 8
  %581 = or i64 %580, %579
  store i64 %581, i64* %6, align 8
  br label %651

582:                                              ; preds = %37
  %583 = load i32, i32* @OP_MASK_RDDSP, align 4
  %584 = load i32, i32* @OP_SH_RDDSP, align 4
  %585 = shl i32 %583, %584
  %586 = sext i32 %585 to i64
  %587 = load i64, i64* %6, align 8
  %588 = or i64 %587, %586
  store i64 %588, i64* %6, align 8
  br label %651

589:                                              ; preds = %37
  %590 = load i32, i32* @OP_MASK_DSPSFT_7, align 4
  %591 = load i32, i32* @OP_SH_DSPSFT_7, align 4
  %592 = shl i32 %590, %591
  %593 = sext i32 %592 to i64
  %594 = load i64, i64* %6, align 8
  %595 = or i64 %594, %593
  store i64 %595, i64* %6, align 8
  br label %651

596:                                              ; preds = %37
  %597 = load i32, i32* @OP_MASK_IMM10, align 4
  %598 = load i32, i32* @OP_SH_IMM10, align 4
  %599 = shl i32 %597, %598
  %600 = sext i32 %599 to i64
  %601 = load i64, i64* %6, align 8
  %602 = or i64 %601, %600
  store i64 %602, i64* %6, align 8
  br label %651

603:                                              ; preds = %37
  %604 = load i32, i32* @OP_MASK_MT_U, align 4
  %605 = load i32, i32* @OP_SH_MT_U, align 4
  %606 = shl i32 %604, %605
  %607 = sext i32 %606 to i64
  %608 = load i64, i64* %6, align 8
  %609 = or i64 %608, %607
  store i64 %609, i64* %6, align 8
  br label %651

610:                                              ; preds = %37
  %611 = load i32, i32* @OP_MASK_MT_H, align 4
  %612 = load i32, i32* @OP_SH_MT_H, align 4
  %613 = shl i32 %611, %612
  %614 = sext i32 %613 to i64
  %615 = load i64, i64* %6, align 8
  %616 = or i64 %615, %614
  store i64 %616, i64* %6, align 8
  br label %651

617:                                              ; preds = %37
  %618 = load i32, i32* @OP_MASK_MTACC_T, align 4
  %619 = load i32, i32* @OP_SH_MTACC_T, align 4
  %620 = shl i32 %618, %619
  %621 = sext i32 %620 to i64
  %622 = load i64, i64* %6, align 8
  %623 = or i64 %622, %621
  store i64 %623, i64* %6, align 8
  br label %651

624:                                              ; preds = %37
  %625 = load i32, i32* @OP_MASK_MTACC_D, align 4
  %626 = load i32, i32* @OP_SH_MTACC_D, align 4
  %627 = shl i32 %625, %626
  %628 = sext i32 %627 to i64
  %629 = load i64, i64* %6, align 8
  %630 = or i64 %629, %628
  store i64 %630, i64* %6, align 8
  br label %651

631:                                              ; preds = %37
  %632 = load i32, i32* @OP_MASK_RD, align 4
  %633 = load i32, i32* @OP_SH_RD, align 4
  %634 = shl i32 %632, %633
  %635 = sext i32 %634 to i64
  %636 = load i64, i64* %6, align 8
  %637 = or i64 %636, %635
  store i64 %637, i64* %6, align 8
  br label %651

638:                                              ; preds = %37
  %639 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %640 = load i8, i8* %5, align 1
  %641 = sext i8 %640 to i64
  %642 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %643 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %642, i32 0, i32 3
  %644 = load i32, i32* %643, align 8
  %645 = sext i32 %644 to i64
  %646 = inttoptr i64 %645 to i8*
  %647 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %648 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %647, i32 0, i32 0
  %649 = load i8*, i8** %648, align 8
  %650 = call i32 (i32, i64, i8*, ...) @as_bad(i32 %639, i64 %641, i8* %646, i8* %649)
  store i32 0, i32* %2, align 4
  br label %670

651:                                              ; preds = %631, %624, %617, %610, %603, %596, %589, %582, %575, %568, %561, %554, %547, %540, %533, %526, %519, %518, %517, %510, %503, %490, %483, %482, %475, %474, %467, %460, %453, %446, %439, %432, %425, %418, %411, %410, %403, %396, %389, %382, %381, %374, %367, %360, %353, %346, %339, %332, %325, %318, %311, %304, %297, %284, %277, %270, %263, %262, %255, %248, %247, %240, %233, %232, %225, %218, %211, %204, %203, %196, %189, %188, %52, %45, %44, %43, %42
  br label %33

652:                                              ; preds = %33
  %653 = load i64, i64* %6, align 8
  %654 = icmp ne i64 %653, 4294967295
  br i1 %654, label %655, label %669

655:                                              ; preds = %652
  %656 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %657 = load i64, i64* %6, align 8
  %658 = xor i64 %657, -1
  %659 = and i64 %658, 4294967295
  %660 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %661 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %660, i32 0, i32 3
  %662 = load i32, i32* %661, align 8
  %663 = sext i32 %662 to i64
  %664 = inttoptr i64 %663 to i8*
  %665 = load %struct.mips_opcode*, %struct.mips_opcode** %3, align 8
  %666 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %665, i32 0, i32 0
  %667 = load i8*, i8** %666, align 8
  %668 = call i32 (i32, i64, i8*, ...) @as_bad(i32 %656, i64 %659, i8* %664, i8* %667)
  store i32 0, i32* %2, align 4
  br label %670

669:                                              ; preds = %652
  store i32 1, i32* %2, align 4
  br label %670

670:                                              ; preds = %669, %655, %638, %175, %22
  %671 = load i32, i32* %2, align 4
  ret i32 %671
}

declare dso_local i32 @as_bad(i32, i64, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
