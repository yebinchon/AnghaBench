; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_function_profiler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_function_profiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@DEFAULT_ABI = common dso_local global i32 0, align 4
@TARGET_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"no profiling of 64-bit code for this ABI\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09mflr %s\0A\00", align 1
@reg_names = common dso_local global i8** null, align 8
@NO_PROFILE_COUNTERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"\09{st|stw} %s,4(%s)\0A\00", align 1
@TARGET_SECURE_PLT = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"\09bcl 20,31,1f\0A1:\0A\09{st|stw} %s,4(%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09{cau|addis} %s,%s,\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"-1b@ha\0A\09{cal|la} %s,\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"-1b@l(%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\09bl _GLOBAL_OFFSET_TABLE_@local-4\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09{l|lwz} %s,\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"@got(%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\09bcl 20,31,1f\0A\09.long \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-.\0A1:\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\09{l|lwz} %s,0(%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\09{cax|add} %s,%s,%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09{liu|lis} %s,\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"@ha\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\09{cal|la} %s,\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"@l(%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"\09bl %s%s\0A\00", align 1
@RS6000_MCOUNT = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"@plt\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TARGET_PROFILE_KERNEL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"\09std %s,16(%s)\0A\00", align 1
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"\09std %s,24(%s)\0A\00", align 1
@STATIC_CHAIN_REGNUM = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"\09bl %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"\09ld %s,24(%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_function_profiler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DEFAULT_ABI, align 4
  switch i32 %6, label %7 [
    i32 128, label %9
    i32 130, label %196
    i32 129, label %196
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @gcc_unreachable()
  br label %9

9:                                                ; preds = %2, %7
  %10 = load i32, i32* @TARGET_32BIT, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 @warning(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %251

14:                                               ; preds = %9
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8**, i8*** @reg_names, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @NO_PROFILE_COUNTERS, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = load i32*, i32** %3, align 8
  %27 = load i8**, i8*** @reg_names, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** @reg_names, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %29, i8* %32)
  br label %188

34:                                               ; preds = %14
  %35 = load i32, i32* @TARGET_SECURE_PLT, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load i32, i32* @flag_pic, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = load i8**, i8*** @reg_names, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** @reg_names, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i8**, i8*** @reg_names, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 12
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i8**, i8*** @reg_names, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 12
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** @reg_names, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 12
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %57, i8* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %64 = call i32 @assemble_name(i32* %62, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i8**, i8*** @reg_names, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %72 = call i32 @assemble_name(i32* %70, i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load i8**, i8*** @reg_names, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 12
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  br label %187

78:                                               ; preds = %37, %34
  %79 = load i32, i32* @flag_pic, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i8**, i8*** @reg_names, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** @reg_names, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load i8**, i8*** @reg_names, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 12
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load i8**, i8*** @reg_names, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %104 = call i32 @assemble_name(i32* %102, i8* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load i8**, i8*** @reg_names, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 12
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %108)
  br label %186

110:                                              ; preds = %78
  %111 = load i32, i32* @flag_pic, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %153

113:                                              ; preds = %110
  %114 = load i32*, i32** %3, align 8
  %115 = load i8**, i8*** @reg_names, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** @reg_names, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %117, i8* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %126 = call i32 @assemble_name(i32* %124, i8* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load i8**, i8*** @reg_names, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 11
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = load i8**, i8*** @reg_names, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** @reg_names, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 11
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %137, i8* %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load i8**, i8*** @reg_names, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** @reg_names, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** @reg_names, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 11
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %145, i8* %148, i8* %151)
  br label %185

153:                                              ; preds = %110
  %154 = load i32*, i32** %3, align 8
  %155 = load i8**, i8*** @reg_names, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 12
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %157)
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %161 = call i32 @assemble_name(i32* %159, i8* %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32* %162)
  %164 = load i32*, i32** %3, align 8
  %165 = load i8**, i8*** @reg_names, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** @reg_names, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %167, i8* %170)
  %172 = load i32*, i32** %3, align 8
  %173 = load i8**, i8*** @reg_names, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %175)
  %177 = load i32*, i32** %3, align 8
  %178 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %179 = call i32 @assemble_name(i32* %177, i8* %178)
  %180 = load i32*, i32** %3, align 8
  %181 = load i8**, i8*** @reg_names, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 12
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %153, %113
  br label %186

186:                                              ; preds = %185, %81
  br label %187

187:                                              ; preds = %186, %40
  br label %188

188:                                              ; preds = %187, %25
  %189 = load i32*, i32** %3, align 8
  %190 = load i8*, i8** @RS6000_MCOUNT, align 8
  %191 = load i32, i32* @flag_pic, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %195 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %190, i8* %194)
  br label %251

196:                                              ; preds = %2, %2
  %197 = load i32, i32* @TARGET_PROFILE_KERNEL, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  br label %250

200:                                              ; preds = %196
  %201 = load i32, i32* @TARGET_32BIT, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i32 @gcc_assert(i32 %204)
  %206 = load i32*, i32** %3, align 8
  %207 = load i8**, i8*** @reg_names, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %209)
  %211 = load i32*, i32** %3, align 8
  %212 = load i8**, i8*** @reg_names, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i8**, i8*** @reg_names, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %214, i8* %217)
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %245

223:                                              ; preds = %200
  %224 = load i32*, i32** %3, align 8
  %225 = load i8**, i8*** @reg_names, align 8
  %226 = load i64, i64* @STATIC_CHAIN_REGNUM, align 8
  %227 = getelementptr inbounds i8*, i8** %225, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = load i8**, i8*** @reg_names, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %228, i8* %231)
  %233 = load i32*, i32** %3, align 8
  %234 = load i8*, i8** @RS6000_MCOUNT, align 8
  %235 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %234)
  %236 = load i32*, i32** %3, align 8
  %237 = load i8**, i8*** @reg_names, align 8
  %238 = load i64, i64* @STATIC_CHAIN_REGNUM, align 8
  %239 = getelementptr inbounds i8*, i8** %237, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = load i8**, i8*** @reg_names, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32*, i8*, i8*, ...) @asm_fprintf(i32* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %240, i8* %243)
  br label %249

245:                                              ; preds = %200
  %246 = load i32*, i32** %3, align 8
  %247 = load i8*, i8** @RS6000_MCOUNT, align 8
  %248 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %245, %223
  br label %250

250:                                              ; preds = %249, %199
  br label %251

251:                                              ; preds = %12, %250, %188
  ret void
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @asm_fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
