; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_machine_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_machine_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_machine_name.buff = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WE32100\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Sparc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SPU\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Intel 80386\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MC68000\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MC88000\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Intel 80486\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Intel 80860\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"MIPS R3000\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"IBM System/370\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"MIPS R4000 big-endian\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Sparc v9 (old)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HPPA\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Power PC (old)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Sparc v8+\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Intel 90860\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"PowerPC\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"PowerPC64\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"NEC V800\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Fujitsu FR20\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"TRW RH32\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"MCORE\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Digital Alpha (old)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Renesas / SuperH SH\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Sparc v9\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Siemens Tricore\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ARC\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Renesas H8/300\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Renesas H8/300H\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Renesas H8S\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Renesas H8/500\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Intel IA-64\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Stanford MIPS-X\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Motorola Coldfire\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Motorola M68HC12\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"d10v\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"d30v\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Renesas M32R (formerly Mitsubishi M32r)\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"NEC v850\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"mn10300\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"mn10200\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Fujitsu FR30\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Fujitsu FR-V\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"picoJava\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Fujitsu Multimedia Accelerator\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Siemens PCP\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"Sony nCPU embedded RISC processor\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"Denso NDR1 microprocesspr\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Motorola Star*Core processor\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Toyota ME16 processor\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"STMicroelectronics ST100 processor\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"Advanced Logic Corp. TinyJ embedded processor\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"Siemens FX66 microcontroller\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"STMicroelectronics ST9+ 8/16 bit microcontroller\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"STMicroelectronics ST7 8-bit microcontroller\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"Motorola MC68HC16 Microcontroller\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"Motorola MC68HC11 Microcontroller\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Motorola MC68HC08 Microcontroller\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"Motorola MC68HC05 Microcontroller\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Silicon Graphics SVx\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"STMicroelectronics ST19 8-bit microcontroller\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Digital VAX\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"Atmel AVR 8-bit microcontroller\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"Axis Communications 32-bit embedded processor\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Infineon Technologies 32-bit embedded cpu\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"Element 14 64-bit DSP processor\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"LSI Logic's 16-bit DSP processor\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"Donald Knuth's educational 64-bit processor\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"Harvard Universitys's machine-independent object format\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Vitesse Prism\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"Advanced Micro Devices X86-64\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"IBM S/390\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"SUNPLUS S+Core\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Sanyo Xstormy16 CPU core\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"OpenRISC\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"National Semiconductor CRX microprocessor\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"OpenDLX\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Ubicom IP2xxx 8-bit microcontrollers\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Vitesse IQ2000\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Tensilica Xtensa Processor\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"Renesas M32c\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"Morpho Techologies MT processor\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"Analog Devices Blackfin\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Altera Nios\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"Altera Nios II\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"Infineon Technologies xc16x\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"Toshiba MeP Media Engine\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"<unknown>: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_machine_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_machine_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %96 [
    i32 167, label %5
    i32 183, label %7
    i32 148, label %8
    i32 145, label %9
    i32 230, label %10
    i32 223, label %11
    i32 221, label %12
    i32 229, label %13
    i32 222, label %14
    i32 178, label %15
    i32 153, label %16
    i32 177, label %17
    i32 165, label %18
    i32 162, label %19
    i32 156, label %20
    i32 147, label %21
    i32 220, label %22
    i32 158, label %23
    i32 157, label %24
    i32 136, label %25
    i32 196, label %26
    i32 154, label %27
    i32 180, label %28
    i32 216, label %29
    i32 166, label %30
    i32 149, label %31
    i32 146, label %32
    i32 137, label %33
    i32 217, label %34
    i32 192, label %35
    i32 191, label %36
    i32 193, label %37
    i32 190, label %38
    i32 188, label %39
    i32 176, label %40
    i32 212, label %41
    i32 225, label %42
    i32 219, label %43
    i32 209, label %44
    i32 200, label %44
    i32 208, label %45
    i32 199, label %45
    i32 205, label %46
    i32 181, label %46
    i32 201, label %47
    i32 135, label %47
    i32 202, label %48
    i32 172, label %48
    i32 203, label %49
    i32 173, label %49
    i32 207, label %50
    i32 195, label %50
    i32 206, label %51
    i32 159, label %52
    i32 160, label %52
    i32 175, label %53
    i32 161, label %54
    i32 170, label %55
    i32 169, label %56
    i32 140, label %57
    i32 179, label %58
    i32 144, label %59
    i32 138, label %60
    i32 194, label %61
    i32 141, label %62
    i32 142, label %63
    i32 224, label %64
    i32 226, label %65
    i32 227, label %66
    i32 228, label %67
    i32 139, label %68
    i32 143, label %69
    i32 134, label %70
    i32 214, label %71
    i32 215, label %71
    i32 211, label %72
    i32 184, label %73
    i32 197, label %74
    i32 128, label %75
    i32 174, label %76
    i32 189, label %77
    i32 155, label %78
    i32 133, label %79
    i32 151, label %80
    i32 152, label %80
    i32 150, label %81
    i32 131, label %82
    i32 164, label %83
    i32 163, label %83
    i32 210, label %84
    i32 198, label %85
    i32 186, label %86
    i32 187, label %86
    i32 185, label %87
    i32 129, label %88
    i32 130, label %88
    i32 182, label %89
    i32 171, label %90
    i32 213, label %91
    i32 168, label %92
    i32 218, label %93
    i32 132, label %94
    i32 204, label %95
  ]

5:                                                ; preds = %1
  %6 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %100

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %100

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %100

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %100

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %100

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %100

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %100

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %100

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %100

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %100

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %100

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %100

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %100

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %100

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %100

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %100

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %100

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %100

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %100

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %100

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %100

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %100

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %100

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %100

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %100

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %100

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %100

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %100

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %100

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %100

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %100

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %100

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %100

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %100

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %100

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %100

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %100

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %100

44:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %100

45:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %100

46:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %100

47:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %100

48:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %100

49:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %100

50:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %100

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %100

52:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %100

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %100

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %100

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %100

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %100

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %100

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %100

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %100

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %100

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %100

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %100

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %100

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %100

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %100

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %100

67:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %100

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %100

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %100

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %100

71:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %100

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %100

73:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %100

74:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %100

75:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %100

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %100

77:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %100

78:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %100

79:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %100

80:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %100

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i8** %2, align 8
  br label %100

82:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0), i8** %2, align 8
  br label %100

83:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i8** %2, align 8
  br label %100

84:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0), i8** %2, align 8
  br label %100

85:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i8** %2, align 8
  br label %100

86:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i64 0, i64 0), i8** %2, align 8
  br label %100

87:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i8** %2, align 8
  br label %100

88:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8** %2, align 8
  br label %100

89:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i8** %2, align 8
  br label %100

90:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i64 0, i64 0), i8** %2, align 8
  br label %100

91:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0), i8** %2, align 8
  br label %100

92:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8** %2, align 8
  br label %100

93:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0), i8** %2, align 8
  br label %100

94:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i8** %2, align 8
  br label %100

95:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i64 0, i64 0), i8** %2, align 8
  br label %100

96:                                               ; preds = %1
  %97 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i64 0, i64 0))
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_machine_name.buff, i64 0, i64 0), i32 64, i8* %97, i32 %98)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_machine_name.buff, i64 0, i64 0), i8** %2, align 8
  br label %100

100:                                              ; preds = %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %5
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
