; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_addr_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_addr_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@HOST_WIDE_INT_PRINT_DOUBLE_HEX = common dso_local global i8* null, align 8
@HOST_WIDE_INT_PRINT_HEX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@fail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_addr_const(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %131, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GET_CODE(i32 %7)
  switch i32 %8, label %176 [
    i32 133, label %9
    i32 129, label %12
    i32 135, label %25
    i32 139, label %28
    i32 136, label %36
    i32 138, label %42
    i32 137, label %46
    i32 132, label %84
    i32 134, label %125
    i32 128, label %172
    i32 131, label %172
    i32 130, label %172
  ]

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @putc(i8 signext 46, i32* %10)
  br label %178

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @SYMBOL_REF_DECL(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SYMBOL_REF_DECL(i32 %17)
  %19 = call i32 @mark_decl_referenced(i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @XSTR(i32 %22, i32 0)
  %24 = call i32 @assemble_name(i32* %21, i8* %23)
  br label %178

25:                                               ; preds = %6
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @XEXP(i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %6, %25
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @CODE_LABEL_NUMBER(i32 %30)
  %32 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = call i32 @assemble_name(i32* %33, i8* %34)
  br label %178

36:                                               ; preds = %6
  %37 = load i32*, i32** %3, align 8
  %38 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @INTVAL(i32 %39)
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38, i32 %40)
  br label %178

42:                                               ; preds = %6
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @XEXP(i32 %44, i32 0)
  call void @output_addr_const(i32* %43, i32 %45)
  br label %178

46:                                               ; preds = %6
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @GET_MODE(i32 %47)
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @CONST_DOUBLE_HIGH(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** @HOST_WIDE_INT_PRINT_DOUBLE_HEX, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @CONST_DOUBLE_HIGH(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @CONST_DOUBLE_LOW(i32 %60)
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* %57, i32 %59, i32 %61)
  br label %80

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @CONST_DOUBLE_LOW(i32 %64)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** @HOST_WIDE_INT_PRINT_HEX, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @CONST_DOUBLE_LOW(i32 %70)
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* %69, i32 %71)
  br label %79

73:                                               ; preds = %63
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @CONST_DOUBLE_LOW(i32 %76)
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %55
  br label %83

81:                                               ; preds = %46
  %82 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %80
  br label %178

84:                                               ; preds = %6
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @XEXP(i32 %85, i32 0)
  %87 = call i32 @GET_CODE(i32 %86)
  %88 = icmp eq i32 %87, 136
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @XEXP(i32 %91, i32 1)
  call void @output_addr_const(i32* %90, i32 %92)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @XEXP(i32 %93, i32 0)
  %95 = call i32 @INTVAL(i32 %94)
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @XEXP(i32 %102, i32 0)
  call void @output_addr_const(i32* %101, i32 %103)
  br label %124

104:                                              ; preds = %84
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @XEXP(i32 %106, i32 0)
  call void @output_addr_const(i32* %105, i32 %107)
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @XEXP(i32 %108, i32 1)
  %110 = call i32 @GET_CODE(i32 %109)
  %111 = icmp ne i32 %110, 136
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @XEXP(i32 %113, i32 1)
  %115 = call i32 @INTVAL(i32 %114)
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %104
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @XEXP(i32 %122, i32 1)
  call void @output_addr_const(i32* %121, i32 %123)
  br label %124

124:                                              ; preds = %120, %100
  br label %178

125:                                              ; preds = %6
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @simplify_subtraction(i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @GET_CODE(i32 %128)
  %130 = icmp ne i32 %129, 134
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %6

132:                                              ; preds = %125
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @XEXP(i32 %134, i32 0)
  call void @output_addr_const(i32* %133, i32 %135)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @XEXP(i32 %138, i32 1)
  %140 = call i32 @GET_CODE(i32 %139)
  %141 = icmp eq i32 %140, 136
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @XEXP(i32 %143, i32 1)
  %145 = call i32 @INTVAL(i32 %144)
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142, %132
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @XEXP(i32 %148, i32 1)
  %150 = call i32 @GET_CODE(i32 %149)
  %151 = icmp eq i32 %150, 133
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @XEXP(i32 %153, i32 1)
  %155 = call i32 @GET_CODE(i32 %154)
  %156 = icmp eq i32 %155, 129
  br i1 %156, label %157, label %161

157:                                              ; preds = %152, %147, %142
  %158 = load i32*, i32** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @XEXP(i32 %159, i32 1)
  call void @output_addr_const(i32* %158, i32 %160)
  br label %171

161:                                              ; preds = %152
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 1), align 4
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @fputs(i32 %162, i32* %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @XEXP(i32 %166, i32 1)
  call void @output_addr_const(i32* %165, i32 %167)
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 4
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @fputs(i32 %168, i32* %169)
  br label %171

171:                                              ; preds = %161, %157
  br label %178

172:                                              ; preds = %6, %6, %6
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @XEXP(i32 %174, i32 0)
  call void @output_addr_const(i32* %173, i32 %175)
  br label %178

176:                                              ; preds = %6
  %177 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %172, %171, %124, %83, %42, %36, %28, %20, %9
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @SYMBOL_REF_DECL(i32) #1

declare dso_local i32 @mark_decl_referenced(i32) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_HIGH(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @output_operand_lossage(i8*) #1

declare dso_local i32 @simplify_subtraction(i32) #1

declare dso_local i32 @fputs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
