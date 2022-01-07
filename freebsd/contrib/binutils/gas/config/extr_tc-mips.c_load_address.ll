; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_load_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_load_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@O_constant = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"expression too complex\00", align 1
@HAVE_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@mips_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@HAVE_64BIT_SYMBOLS = common dso_local global i64 0, align 8
@MAX_GPREL_OFFSET = common dso_local global i64 0, align 8
@ADDRESS_ADDI_INSN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"t,r,j\00", align 1
@mips_gp_register = common dso_local global i32 0, align 4
@BFD_RELOC_GPREL16 = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lui\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"t,u\00", align 1
@BFD_RELOC_MIPS_HIGHEST = common dso_local global i32 0, align 4
@AT = common dso_local global i32 0, align 4
@BFD_RELOC_HI16_S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"daddiu\00", align 1
@BFD_RELOC_MIPS_HIGHER = common dso_local global i32 0, align 4
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"dsll32\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"d,w,<\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"daddu\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"d,v,t\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dsll\00", align 1
@mips_relax = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@mips_big_got = common dso_local global i64 0, align 8
@HAVE_NEWABI = common dso_local global i64 0, align 8
@ADDRESS_LOAD_INSN = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"t,o(b)\00", align 1
@BFD_RELOC_MIPS_GOT_DISP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"PIC code offset overflow (max 16 signed bits)\00", align 1
@BFD_RELOC_MIPS_GOT16 = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_GOT_HI16 = common dso_local global i32 0, align 4
@ADDRESS_ADD_INSN = common dso_local global i8* null, align 8
@BFD_RELOC_MIPS_GOT_LO16 = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_GOT_PAGE = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_GOT_OFST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Macro used $at after \22.set noat\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32*)* @load_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_address(i32 %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @O_constant, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @O_symbol, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @as_bad(i32 %21)
  %23 = load i64, i64* @O_constant, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %14, %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @O_constant, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i32, i32* @HAVE_64BIT_ADDRESSES, align 4
  %36 = call i32 @load_register(i32 %33, %struct.TYPE_8__* %34, i32 %35)
  br label %448

37:                                               ; preds = %26
  %38 = load i64, i64* @mips_pic, align 8
  %39 = load i64, i64* @NO_PIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %176

41:                                               ; preds = %37
  %42 = load i64, i64* @HAVE_64BIT_SYMBOLS, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %135

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @MAX_GPREL_OFFSET, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nopic_need_relax(i32 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @relax_start(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @mips_gp_register, align 4
  %66 = load i32, i32* @BFD_RELOC_GPREL16, align 4
  %67 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %62, i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = call i32 (...) @relax_switch()
  br label %69

69:                                               ; preds = %57, %51, %44
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mips_opts, i32 0, i32 0), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @BFD_RELOC_MIPS_HIGHEST, align 4
  %80 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load i32, i32* @AT, align 4
  %83 = load i32, i32* @BFD_RELOC_HI16_S, align 4
  %84 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BFD_RELOC_MIPS_HIGHER, align 4
  %89 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i32, i32* @AT, align 4
  %92 = load i32, i32* @AT, align 4
  %93 = load i32, i32* @BFD_RELOC_LO16, align 4
  %94 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AT, align 4
  %101 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  store i32 1, i32* %102, align 4
  br label %129

103:                                              ; preds = %73, %69
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @BFD_RELOC_MIPS_HIGHEST, align 4
  %107 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @BFD_RELOC_MIPS_HIGHER, align 4
  %112 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %114, i32 16)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @BFD_RELOC_HI16_S, align 4
  %120 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %122, i32 16)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @BFD_RELOC_LO16, align 4
  %128 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %103, %76
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mips_relax, i32 0, i32 0), align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (...) @relax_end()
  br label %134

134:                                              ; preds = %132, %129
  br label %175

135:                                              ; preds = %41
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @MAX_GPREL_OFFSET, align 8
  %141 = icmp sle i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %135
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @nopic_need_relax(i32 %145, i32 1)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @relax_start(i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @mips_gp_register, align 4
  %157 = load i32, i32* @BFD_RELOC_GPREL16, align 4
  %158 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %153, i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156, i32 %157)
  %159 = call i32 (...) @relax_switch()
  br label %160

160:                                              ; preds = %148, %142, %135
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @macro_build_lui(%struct.TYPE_8__* %161, i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @BFD_RELOC_LO16, align 4
  %169 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %164, i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mips_relax, i32 0, i32 0), align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = call i32 (...) @relax_end()
  br label %174

174:                                              ; preds = %172, %160
  br label %175

175:                                              ; preds = %174, %134
  br label %438

176:                                              ; preds = %37
  %177 = load i64, i64* @mips_big_got, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %289, label %179

179:                                              ; preds = %176
  %180 = load i64, i64* @HAVE_NEWABI, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %239

182:                                              ; preds = %179
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %227

187:                                              ; preds = %182
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %190, i32* %191, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32 0, i32* %193, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @relax_start(i32 %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @BFD_RELOC_MIPS_GOT_DISP, align 4
  %202 = load i32, i32* @mips_gp_register, align 4
  %203 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %198, i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %201, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %205, -32768
  br i1 %206, label %211, label %207

207:                                              ; preds = %187
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp sge i32 %209, 32768
  br i1 %210, label %211, label %214

211:                                              ; preds = %207, %187
  %212 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %213 = call i32 @as_bad(i32 %212)
  br label %214

214:                                              ; preds = %211, %207
  %215 = load i64, i64* @O_constant, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %215, i64* %216, align 8
  %217 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @BFD_RELOC_LO16, align 4
  %221 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %7, i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %219, i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = call i32 (...) @relax_switch()
  br label %227

227:                                              ; preds = %214, %182
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @BFD_RELOC_MIPS_GOT_DISP, align 4
  %232 = load i32, i32* @mips_gp_register, align 4
  %233 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %228, i8* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %230, i32 %231, i32 %232)
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mips_relax, i32 0, i32 0), align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = call i32 (...) @relax_end()
  br label %238

238:                                              ; preds = %236, %227
  br label %288

239:                                              ; preds = %179
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %242, i32* %243, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @BFD_RELOC_MIPS_GOT16, align 4
  %250 = load i32, i32* @mips_gp_register, align 4
  %251 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %246, i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %248, i32 %249, i32 %250)
  %252 = call i32 (...) @load_delay_nop()
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @relax_start(i32 %255)
  %257 = call i32 (...) @relax_switch()
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* @BFD_RELOC_LO16, align 4
  %263 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %258, i8* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %260, i32 %261, i32 %262)
  %264 = call i32 (...) @relax_end()
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %239
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %270, -32768
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp sge i32 %274, 32768
  br i1 %275, label %276, label %279

276:                                              ; preds = %272, %268
  %277 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %278 = call i32 @as_bad(i32 %277)
  br label %279

279:                                              ; preds = %276, %272
  %280 = load i64, i64* @O_constant, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %280, i64* %281, align 8
  %282 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @BFD_RELOC_LO16, align 4
  %286 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %7, i8* %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %283, i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %279, %239
  br label %288

288:                                              ; preds = %287, %238
  br label %437

289:                                              ; preds = %176
  %290 = load i64, i64* @mips_big_got, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %434

292:                                              ; preds = %289
  %293 = load i64, i64* @HAVE_NEWABI, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %363

295:                                              ; preds = %292
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %298, i32* %299, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  store i32 0, i32* %301, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @relax_start(i32 %304)
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @BFD_RELOC_MIPS_GOT_HI16, align 4
  %309 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %307, i32 %308)
  %310 = load i8*, i8** @ADDRESS_ADD_INSN, align 8
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @mips_gp_register, align 4
  %314 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %311, i32 %312, i32 %313)
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %316 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* @BFD_RELOC_MIPS_GOT_LO16, align 4
  %319 = load i32, i32* %4, align 4
  %320 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %315, i8* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %317, i32 %318, i32 %319)
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %322, -32768
  br i1 %323, label %328, label %324

324:                                              ; preds = %295
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = icmp sge i32 %326, 32768
  br i1 %327, label %328, label %331

328:                                              ; preds = %324, %295
  %329 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %330 = call i32 @as_bad(i32 %329)
  br label %344

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %331
  %336 = load i64, i64* @O_constant, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %336, i64* %337, align 8
  %338 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* %4, align 4
  %341 = load i32, i32* @BFD_RELOC_LO16, align 4
  %342 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %8, i8* %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %339, i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %335, %331
  br label %344

344:                                              ; preds = %343, %328
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 8
  %349 = call i32 (...) @relax_switch()
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %351 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* @BFD_RELOC_MIPS_GOT_PAGE, align 4
  %354 = load i32, i32* @mips_gp_register, align 4
  %355 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %350, i8* %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %352, i32 %353, i32 %354)
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %357 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %358 = load i32, i32* %4, align 4
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @BFD_RELOC_MIPS_GOT_OFST, align 4
  %361 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %356, i8* %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %358, i32 %359, i32 %360)
  %362 = call i32 (...) @relax_end()
  br label %433

363:                                              ; preds = %292
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %366, i32* %367, align 8
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 1
  store i32 0, i32* %369, align 8
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @relax_start(i32 %372)
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* @BFD_RELOC_MIPS_GOT_HI16, align 4
  %377 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %374, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %375, i32 %376)
  %378 = load i8*, i8** @ADDRESS_ADD_INSN, align 8
  %379 = load i32, i32* %4, align 4
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* @mips_gp_register, align 4
  %382 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %379, i32 %380, i32 %381)
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %384 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %385 = load i32, i32* %4, align 4
  %386 = load i32, i32* @BFD_RELOC_MIPS_GOT_LO16, align 4
  %387 = load i32, i32* %4, align 4
  %388 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %383, i8* %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %385, i32 %386, i32 %387)
  %389 = call i32 (...) @relax_switch()
  %390 = load i32, i32* @mips_gp_register, align 4
  %391 = call i64 @reg_needs_delay(i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %363
  %394 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  br label %395

395:                                              ; preds = %393, %363
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %397 = load i8*, i8** @ADDRESS_LOAD_INSN, align 8
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* @BFD_RELOC_MIPS_GOT16, align 4
  %400 = load i32, i32* @mips_gp_register, align 4
  %401 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %396, i8* %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %398, i32 %399, i32 %400)
  %402 = call i32 (...) @load_delay_nop()
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %404 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* %4, align 4
  %407 = load i32, i32* @BFD_RELOC_LO16, align 4
  %408 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %403, i8* %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %405, i32 %406, i32 %407)
  %409 = call i32 (...) @relax_end()
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %432

413:                                              ; preds = %395
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = icmp slt i32 %415, -32768
  br i1 %416, label %421, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = icmp sge i32 %419, 32768
  br i1 %420, label %421, label %424

421:                                              ; preds = %417, %413
  %422 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %423 = call i32 @as_bad(i32 %422)
  br label %424

424:                                              ; preds = %421, %417
  %425 = load i64, i64* @O_constant, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %425, i64* %426, align 8
  %427 = load i8*, i8** @ADDRESS_ADDI_INSN, align 8
  %428 = load i32, i32* %4, align 4
  %429 = load i32, i32* %4, align 4
  %430 = load i32, i32* @BFD_RELOC_LO16, align 4
  %431 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @macro_build(%struct.TYPE_8__* %8, i8* %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %428, i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %424, %395
  br label %433

433:                                              ; preds = %432, %344
  br label %436

434:                                              ; preds = %289
  %435 = call i32 (...) @abort() #3
  unreachable

436:                                              ; preds = %433
  br label %437

437:                                              ; preds = %436, %288
  br label %438

438:                                              ; preds = %437, %175
  %439 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mips_opts, i32 0, i32 0), align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %438
  %442 = load i32*, i32** %6, align 8
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %448

445:                                              ; preds = %441
  %446 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %447 = call i32 @as_bad(i32 %446)
  br label %448

448:                                              ; preds = %32, %445, %441, %438
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @load_register(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @nopic_need_relax(i32, i32) #1

declare dso_local i32 @relax_start(i32) #1

declare dso_local i32 @macro_build(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i32 @relax_switch(...) #1

declare dso_local i32 @relax_end(...) #1

declare dso_local i32 @macro_build_lui(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @load_delay_nop(...) #1

declare dso_local i64 @reg_needs_delay(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
