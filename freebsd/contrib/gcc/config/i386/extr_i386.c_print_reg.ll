; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_print_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_print_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@FLAGS_REG = common dso_local global i64 0, align 8
@FPSR_REG = common dso_local global i64 0, align 8
@ASSEMBLER_DIALECT = common dso_local global i64 0, align 8
@ASM_ATT = common dso_local global i64 0, align 8
@USER_LABEL_PREFIX = common dso_local global i64* null, align 8
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"extended registers have no high halves\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"r%ib\00", align 1
@FIRST_REX_INT_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"r%iw\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"r%id\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"r%i\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"unsupported operand size for extended register\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"st(0)\00", align 1
@hi_reg_name = common dso_local global i8** null, align 8
@qi_reg_name = common dso_local global i8** null, align 8
@qi_high_reg_name = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_reg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @REGNO(i32 %7)
  %9 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @REGNO(i32 %12)
  %14 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @REGNO(i32 %17)
  %19 = load i64, i64* @FLAGS_REG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @REGNO(i32 %22)
  %24 = load i64, i64* @FPSR_REG, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %21, %16, %11, %3
  %27 = phi i1 [ false, %16 ], [ false, %11 ], [ false, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i64, i64* @ASSEMBLER_DIALECT, align 8
  %31 = load i64, i64* @ASM_ATT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load i64*, i64** @USER_LABEL_PREFIX, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %26
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @putc(i8 signext 37, i32* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 119
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @MMX_REG_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41
  store i32 2, i32* %5, align 4
  br label %78

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 98
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %77

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 107
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 4, i32* %5, align 4
  br label %76

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 113
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 8, i32* %5, align 4
  br label %75

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 121
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 3, i32* %5, align 4
  br label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 104
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @GET_MODE(i32 %70)
  %72 = call i32 @GET_MODE_SIZE(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %68
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @REX_INT_REG_P(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %78
  %83 = load i32, i32* @TARGET_64BIT, align 4
  %84 = call i32 @gcc_assert(i32 %83)
  %85 = load i32, i32* %5, align 4
  switch i32 %85, label %124 [
    i32 0, label %86
    i32 1, label %88
    i32 2, label %97
    i32 4, label %106
    i32 8, label %115
  ]

86:                                               ; preds = %82
  %87 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %126

88:                                               ; preds = %82
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @REGNO(i32 %90)
  %92 = load i64, i64* @FIRST_REX_INT_REG, align 8
  %93 = sub i64 %91, %92
  %94 = add i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @fprintf(i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %126

97:                                               ; preds = %82
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @REGNO(i32 %99)
  %101 = load i64, i64* @FIRST_REX_INT_REG, align 8
  %102 = sub i64 %100, %101
  %103 = add i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @fprintf(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %126

106:                                              ; preds = %82
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @REGNO(i32 %108)
  %110 = load i64, i64* @FIRST_REX_INT_REG, align 8
  %111 = sub i64 %109, %110
  %112 = add i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @fprintf(i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %126

115:                                              ; preds = %82
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @REGNO(i32 %117)
  %119 = load i64, i64* @FIRST_REX_INT_REG, align 8
  %120 = sub i64 %118, %119
  %121 = add i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @fprintf(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %126

124:                                              ; preds = %82
  %125 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %115, %106, %97, %88, %86
  br label %196

127:                                              ; preds = %78
  %128 = load i32, i32* %5, align 4
  switch i32 %128, label %194 [
    i32 3, label %129
    i32 8, label %137
    i32 4, label %137
    i32 12, label %137
    i32 16, label %155
    i32 2, label %155
    i32 1, label %164
    i32 0, label %179
  ]

129:                                              ; preds = %127
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @STACK_TOP_P(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %134)
  br label %196

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %127, %127, %127, %136
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @ANY_FP_REG_P(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 8
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @TARGET_64BIT, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 114, i32 101
  %151 = trunc i32 %150 to i8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @putc(i8 signext %151, i32* %152)
  br label %154

154:                                              ; preds = %147, %137
  br label %155

155:                                              ; preds = %127, %127, %154
  br label %156

156:                                              ; preds = %185, %170, %155
  %157 = load i8**, i8*** @hi_reg_name, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i64 @REGNO(i32 %158)
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @fputs(i8* %161, i32* %162)
  br label %196

164:                                              ; preds = %127
  %165 = load i32, i32* %4, align 4
  %166 = call i64 @REGNO(i32 %165)
  %167 = load i8**, i8*** @qi_reg_name, align 8
  %168 = call i64 @ARRAY_SIZE(i8** %167)
  %169 = icmp uge i64 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %156

171:                                              ; preds = %164
  %172 = load i8**, i8*** @qi_reg_name, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @REGNO(i32 %173)
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @fputs(i8* %176, i32* %177)
  br label %196

179:                                              ; preds = %127
  %180 = load i32, i32* %4, align 4
  %181 = call i64 @REGNO(i32 %180)
  %182 = load i8**, i8*** @qi_high_reg_name, align 8
  %183 = call i64 @ARRAY_SIZE(i8** %182)
  %184 = icmp uge i64 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %156

186:                                              ; preds = %179
  %187 = load i8**, i8*** @qi_high_reg_name, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i64 @REGNO(i32 %188)
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @fputs(i8* %191, i32* %192)
  br label %196

194:                                              ; preds = %127
  %195 = call i32 (...) @gcc_unreachable()
  br label %196

196:                                              ; preds = %126, %194, %186, %171, %156, %133
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @MMX_REG_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @REX_INT_REG_P(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @STACK_TOP_P(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @ANY_FP_REG_P(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
