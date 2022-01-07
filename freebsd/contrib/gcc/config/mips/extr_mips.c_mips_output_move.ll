; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@REG = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"move\09%0,%z1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mt%0\09%z1\00", align 1
@mips_output_move.retval = internal global [13 x i8] c"mt__\09%z1,%q0\00", align 1
@reg_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"dmtc1\09%z1,%0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mtc1\09%z1,%0\00", align 1
@mips_output_move.retval.5 = internal global [13 x i8] c"dmtc_\09%z1,%0\00", align 1
@MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"sd\09%z1,%0\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sw\09%z1,%0\00", align 1
@mips_output_move.retval.8 = internal global [12 x i8] c"mf__\09%0,%q1\00", align 1
@ISA_HAS_8CC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"lui\09%0,0x3f80\0A\09movf\09%0,%.,%1\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"dmfc1\09%0,%1\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"mfc1\09%0,%1\00", align 1
@mips_output_move.retval.12 = internal global [12 x i8] c"dmfc_\09%0,%1\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ld\09%0,%1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"lw\09%0,%1\00", align 1
@CONST_INT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"li\09%0,%1\09\09\09# %X1\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"li\09%0,%1\00", align 1
@HIGH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"lui\09%0,%h1\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"move\09%0,%1\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"dla\09%0,%1\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"la\09%0,%1\00", align 1
@V2SFmode = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"mov.ps\09%0,%1\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"mov.d\09%0,%1\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"mov.s\09%0,%1\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"sdc1\09%1,%0\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"swc1\09%1,%0\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ldc1\09%0,%1\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"lwc1\09%0,%1\00", align 1
@mips_output_move.retval.28 = internal global [11 x i8] c"l_c_\09%0,%1\00", align 1
@mips_output_move.retval.29 = internal global [11 x i8] c"s_c_\09%1,%0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mips_output_move(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @GET_CODE(i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @GET_CODE(i64 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @GET_MODE(i64 %13)
  %15 = call i32 @GET_MODE_SIZE(i64 %14)
  %16 = icmp eq i32 %15, 8
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @mips_split_64bit_move_p(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %341

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @REG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @REGNO(i64 %31)
  %33 = call i64 @GP_REG_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @TARGET_MIPS16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %114, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @GET_MODE(i64 %40)
  %42 = call i64 @CONST0_RTX(i64 %41)
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %38, %30
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @REG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @REGNO(i64 %49)
  %51 = call i64 @GP_REG_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %341

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @REGNO(i64 %55)
  %57 = call i64 @MD_REG_P(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %341

60:                                               ; preds = %54
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @REGNO(i64 %61)
  %63 = call i64 @DSP_ACC_REG_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i8**, i8*** @reg_names, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @REGNO(i64 %67)
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval, i64 0, i64 2), align 1
  %73 = load i8**, i8*** @reg_names, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @REGNO(i64 %74)
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 5
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval, i64 0, i64 3), align 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval, i64 0, i64 0), i8** %3, align 8
  br label %341

80:                                               ; preds = %60
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @REGNO(i64 %81)
  %83 = call i64 @FP_REG_P(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  store i8* %89, i8** %3, align 8
  br label %341

90:                                               ; preds = %80
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @REGNO(i64 %91)
  %93 = call i64 @ALL_COP_REG_P(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @REGNO(i64 %96)
  %98 = call signext i8 @COPNUM_AS_CHAR_FROM_REGNUM(i64 %97)
  store i8 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval.5, i64 0, i64 4), align 1
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mips_output_move.retval.5, i64 0, i64 1)
  store i8* %102, i8** %3, align 8
  br label %341

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %44
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MEM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  store i8* %112, i8** %3, align 8
  br label %341

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %38, %35
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @REG, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %237

118:                                              ; preds = %114
  %119 = load i64, i64* %4, align 8
  %120 = call i64 @REGNO(i64 %119)
  %121 = call i64 @GP_REG_P(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %237

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @REG, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %180

127:                                              ; preds = %123
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @REGNO(i64 %128)
  %130 = call i64 @DSP_ACC_REG_P(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load i8**, i8*** @reg_names, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @REGNO(i64 %134)
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.8, i64 0, i64 2), align 1
  %140 = load i8**, i8*** @reg_names, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i64 @REGNO(i64 %141)
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.8, i64 0, i64 3), align 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.8, i64 0, i64 0), i8** %3, align 8
  br label %341

147:                                              ; preds = %127
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @REGNO(i64 %148)
  %150 = call i64 @ST_REG_P(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i64, i64* @ISA_HAS_8CC, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %341

156:                                              ; preds = %152, %147
  %157 = load i64, i64* %5, align 8
  %158 = call i64 @REGNO(i64 %157)
  %159 = call i64 @FP_REG_P(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)
  store i8* %165, i8** %3, align 8
  br label %341

166:                                              ; preds = %156
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @REGNO(i64 %167)
  %169 = call i64 @ALL_COP_REG_P(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i64, i64* %5, align 8
  %173 = call i64 @REGNO(i64 %172)
  %174 = call signext i8 @COPNUM_AS_CHAR_FROM_REGNUM(i64 %173)
  store i8 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.12, i64 0, i64 4), align 1
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mips_output_move.retval.12, i64 0, i64 1)
  store i8* %178, i8** %3, align 8
  br label %341

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %123
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @MEM, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)
  store i8* %188, i8** %3, align 8
  br label %341

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @CONST_INT, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %216

193:                                              ; preds = %189
  %194 = load i32, i32* @TARGET_MIPS16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %341

197:                                              ; preds = %193
  %198 = load i64, i64* %5, align 8
  %199 = call i32 @INTVAL(i64 %198)
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i64, i64* %5, align 8
  %203 = call i32 @INTVAL(i64 %202)
  %204 = icmp sle i32 %203, 65535
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %341

206:                                              ; preds = %201, %197
  %207 = load i64, i64* %5, align 8
  %208 = call i32 @INTVAL(i64 %207)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i64, i64* %5, align 8
  %212 = call i32 @INTVAL(i64 %211)
  %213 = icmp sge i32 %212, -65535
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %341

215:                                              ; preds = %210, %206
  br label %216

216:                                              ; preds = %215, %189
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @HIGH, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %341

221:                                              ; preds = %216
  %222 = load i64, i64* %5, align 8
  %223 = call i64 @CONST_GP_P(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %341

226:                                              ; preds = %221
  %227 = load i64, i64* %5, align 8
  %228 = load i32, i32* @VOIDmode, align 4
  %229 = call i64 @symbolic_operand(i64 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)
  store i8* %235, i8** %3, align 8
  br label %341

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %118, %114
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @REG, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %276

241:                                              ; preds = %237
  %242 = load i64, i64* %5, align 8
  %243 = call i64 @REGNO(i64 %242)
  %244 = call i64 @FP_REG_P(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %276

246:                                              ; preds = %241
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @REG, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %246
  %251 = load i64, i64* %4, align 8
  %252 = call i64 @REGNO(i64 %251)
  %253 = call i64 @FP_REG_P(i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = load i64, i64* %4, align 8
  %257 = call i64 @GET_MODE(i64 %256)
  %258 = load i64, i64* @V2SFmode, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %341

261:                                              ; preds = %255
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)
  store i8* %265, i8** %3, align 8
  br label %341

266:                                              ; preds = %250, %246
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @MEM, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0)
  store i8* %274, i8** %3, align 8
  br label %341

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %241, %237
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* @REG, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %276
  %281 = load i64, i64* %4, align 8
  %282 = call i64 @REGNO(i64 %281)
  %283 = call i64 @FP_REG_P(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %280
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @MEM, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)
  store i8* %293, i8** %3, align 8
  br label %341

294:                                              ; preds = %285
  br label %295

295:                                              ; preds = %294, %280, %276
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* @REG, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %295
  %300 = load i64, i64* %4, align 8
  %301 = call i64 @REGNO(i64 %300)
  %302 = call i64 @ALL_COP_REG_P(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %299
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @MEM, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  %309 = load i32, i32* %8, align 4
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 100, i32 119
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.28, i64 0, i64 1), align 1
  %314 = load i64, i64* %4, align 8
  %315 = call i64 @REGNO(i64 %314)
  %316 = call signext i8 @COPNUM_AS_CHAR_FROM_REGNUM(i64 %315)
  store i8 %316, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.28, i64 0, i64 3), align 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.28, i64 0, i64 0), i8** %3, align 8
  br label %341

317:                                              ; preds = %304, %299, %295
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* @MEM, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %339

321:                                              ; preds = %317
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @REG, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %339

325:                                              ; preds = %321
  %326 = load i64, i64* %5, align 8
  %327 = call i64 @REGNO(i64 %326)
  %328 = call i64 @ALL_COP_REG_P(i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = load i32, i32* %8, align 4
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i32 100, i32 119
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.29, i64 0, i64 1), align 1
  %336 = load i64, i64* %5, align 8
  %337 = call i64 @REGNO(i64 %336)
  %338 = call signext i8 @COPNUM_AS_CHAR_FROM_REGNUM(i64 %337)
  store i8 %338, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.29, i64 0, i64 3), align 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @mips_output_move.retval.29, i64 0, i64 0), i8** %3, align 8
  br label %341

339:                                              ; preds = %325, %321, %317
  %340 = call i32 (...) @gcc_unreachable()
  br label %341

341:                                              ; preds = %339, %330, %308, %289, %270, %261, %260, %231, %225, %220, %214, %205, %196, %184, %171, %161, %155, %132, %108, %95, %85, %65, %59, %53, %25
  %342 = load i8*, i8** %3, align 8
  ret i8* %342
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @mips_split_64bit_move_p(i64, i64) #1

declare dso_local i64 @GP_REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @CONST0_RTX(i64) #1

declare dso_local i64 @MD_REG_P(i64) #1

declare dso_local i64 @DSP_ACC_REG_P(i64) #1

declare dso_local i64 @FP_REG_P(i64) #1

declare dso_local i64 @ALL_COP_REG_P(i64) #1

declare dso_local signext i8 @COPNUM_AS_CHAR_FROM_REGNUM(i64) #1

declare dso_local i64 @ST_REG_P(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @CONST_GP_P(i64) #1

declare dso_local i64 @symbolic_operand(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
