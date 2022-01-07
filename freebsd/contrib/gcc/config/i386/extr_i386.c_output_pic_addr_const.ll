; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_pic_addr_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_pic_addr_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i32 0, align 4
@TARGET_MACHO = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"@PLT\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@asm_out_file = common dso_local global i32* null, align 8
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"0x%lx%08lx\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@ASSEMBLER_DIALECT = common dso_local global i32 0, align 4
@ASM_INTEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"@GOT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"@GOTOFF\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"@GOTPCREL(%rip)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"@GOTTPOFF\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"@TPOFF\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"@NTPOFF\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"@DTPOFF\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"@GOTTPOFF(%rip)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"@GOTNTPOFF\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"@INDNTPOFF\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"invalid UNSPEC as operand\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@MACHOPIC_INDIRECT = common dso_local global i32 0, align 4
@MACHOPIC_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @output_pic_addr_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_pic_addr_const(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  switch i32 %10, label %231 [
    i32 140, label %11
    i32 138, label %16
    i32 142, label %54
    i32 146, label %57
    i32 143, label %65
    i32 145, label %71
    i32 144, label %76
    i32 139, label %106
    i32 141, label %140
    i32 137, label %175
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @flag_pic, align 4
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @putc(i8 signext 46, i32* %14)
  br label %233

16:                                               ; preds = %3
  %17 = load i32, i32* @TARGET_MACHO, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @TARGET_64BIT, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @output_addr_const(i32* %23, i32 %24)
  br label %40

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @XSTR(i32 %27, i32 0)
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SYMBOL_REF_DECL(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SYMBOL_REF_DECL(i32 %33)
  %35 = call i32 @mark_decl_referenced(i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @assemble_name(i32* %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %22
  %41 = load i32, i32* @TARGET_MACHO, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 80
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @SYMBOL_REF_LOCAL_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %51)
  br label %53

53:                                               ; preds = %50, %46, %43, %40
  br label %233

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XEXP(i32 %55, i32 0)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %3, %54
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CODE_LABEL_NUMBER(i32 %59)
  %61 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** @asm_out_file, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = call i32 @assemble_name(i32* %62, i8* %63)
  br label %233

65:                                               ; preds = %3
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @INTVAL(i32 %68)
  %70 = call i32 (i32*, i8*, i64, ...) @fprintf(i32* %66, i8* %67, i64 %69)
  br label %233

71:                                               ; preds = %3
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @XEXP(i32 %73, i32 0)
  %75 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %72, i32 %74, i32 %75)
  br label %233

76:                                               ; preds = %3
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @GET_MODE(i32 %77)
  %79 = load i32, i32* @VOIDmode, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @CONST_DOUBLE_HIGH(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @CONST_DOUBLE_LOW(i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @CONST_DOUBLE_HIGH(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @CONST_DOUBLE_LOW(i32 %93)
  %95 = call i32 (i32*, i8*, i64, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %94)
  br label %102

96:                                               ; preds = %85
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @CONST_DOUBLE_LOW(i32 %99)
  %101 = call i32 (i32*, i8*, i64, ...) @fprintf(i32* %97, i8* %98, i64 %100)
  br label %102

102:                                              ; preds = %96, %89
  br label %105

103:                                              ; preds = %76
  %104 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %102
  br label %233

106:                                              ; preds = %3
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @XEXP(i32 %107, i32 0)
  %109 = call i32 @GET_CODE(i32 %108)
  %110 = icmp eq i32 %109, 143
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @XEXP(i32 %113, i32 0)
  %115 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %112, i32 %114, i32 %115)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @putc(i8 signext 43, i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @XEXP(i32 %119, i32 1)
  %121 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %118, i32 %120, i32 %121)
  br label %139

122:                                              ; preds = %106
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @XEXP(i32 %123, i32 1)
  %125 = call i32 @GET_CODE(i32 %124)
  %126 = icmp eq i32 %125, 143
  %127 = zext i1 %126 to i32
  %128 = call i32 @gcc_assert(i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @XEXP(i32 %130, i32 1)
  %132 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %129, i32 %131, i32 %132)
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @putc(i8 signext 43, i32* %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @XEXP(i32 %136, i32 0)
  %138 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %135, i32 %137, i32 %138)
  br label %139

139:                                              ; preds = %122, %111
  br label %233

140:                                              ; preds = %3
  %141 = load i32, i32* @TARGET_MACHO, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @ASSEMBLER_DIALECT, align 4
  %145 = load i32, i32* @ASM_INTEL, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 40, i32 91
  %149 = trunc i32 %148 to i8
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @putc(i8 signext %149, i32* %150)
  br label %152

152:                                              ; preds = %143, %140
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @XEXP(i32 %154, i32 0)
  %156 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %153, i32 %155, i32 %156)
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @putc(i8 signext 45, i32* %157)
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @XEXP(i32 %160, i32 1)
  %162 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %159, i32 %161, i32 %162)
  %163 = load i32, i32* @TARGET_MACHO, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %152
  %166 = load i32, i32* @ASSEMBLER_DIALECT, align 4
  %167 = load i32, i32* @ASM_INTEL, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 41, i32 93
  %171 = trunc i32 %170 to i8
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @putc(i8 signext %171, i32* %172)
  br label %174

174:                                              ; preds = %165, %152
  br label %233

175:                                              ; preds = %3
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @XVECLEN(i32 %176, i32 0)
  %178 = icmp eq i32 %177, 1
  %179 = zext i1 %178 to i32
  %180 = call i32 @gcc_assert(i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @XVECEXP(i32 %182, i32 0, i32 0)
  %184 = load i32, i32* %6, align 4
  call void @output_pic_addr_const(i32* %181, i32 %183, i32 %184)
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @XINT(i32 %185, i32 1)
  switch i32 %186, label %228 [
    i32 135, label %187
    i32 133, label %190
    i32 132, label %193
    i32 131, label %196
    i32 128, label %199
    i32 129, label %202
    i32 136, label %212
    i32 134, label %215
    i32 130, label %225
  ]

187:                                              ; preds = %175
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %188)
  br label %230

190:                                              ; preds = %175
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %191)
  br label %230

193:                                              ; preds = %175
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %194)
  br label %230

196:                                              ; preds = %175
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %197)
  br label %230

199:                                              ; preds = %175
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %200)
  br label %230

202:                                              ; preds = %175
  %203 = load i32, i32* @TARGET_64BIT, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %206)
  br label %211

208:                                              ; preds = %202
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %209)
  br label %211

211:                                              ; preds = %208, %205
  br label %230

212:                                              ; preds = %175
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %213)
  br label %230

215:                                              ; preds = %175
  %216 = load i32, i32* @TARGET_64BIT, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32* %219)
  br label %224

221:                                              ; preds = %215
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* %222)
  br label %224

224:                                              ; preds = %221, %218
  br label %230

225:                                              ; preds = %175
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %226)
  br label %230

228:                                              ; preds = %175
  %229 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %225, %224, %212, %211, %199, %196, %193, %190, %187
  br label %233

231:                                              ; preds = %3
  %232 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %230, %174, %139, %105, %71, %65, %57, %53, %11
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @output_addr_const(i32*, i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @SYMBOL_REF_DECL(i32) #1

declare dso_local i32 @mark_decl_referenced(i32) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

declare dso_local i32 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, ...) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @CONST_DOUBLE_HIGH(i32) #1

declare dso_local i64 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @output_operand_lossage(i8*) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
