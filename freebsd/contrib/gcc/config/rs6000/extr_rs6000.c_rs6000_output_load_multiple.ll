; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_output_load_multiple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_output_load_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"{l|lwz} %2,0(%1)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"{lsi|lswi} %2,%1,%0\0A\09{l|lwz} %1,%0(%1)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SImode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"{cal %1,4(%1)|addi %1,%1,4}\0A\09{lsi|lswi} %2,%1,%0\0A\09{l|lwz} %1,-4(%1)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"{l|lwz} %2,%0(%1)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"{l|lwz} %1,%0(%1)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"{lsi|lswi} %2,%1,%N0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rs6000_output_load_multiple(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @XVECLEN(i32 %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @XVECLEN(i32 %14, i32 0)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %138

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %134, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %137

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @REGNO(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @REGNO(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = add nsw i64 %37, 1
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @refers_to_regno_p(i64 %30, i64 %38, i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %133

44:                                               ; preds = %23
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = mul nsw i32 4, %51
  %53 = call i32 @GEN_INT(i32 %52)
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %64 = call i32 @output_asm_insn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %63)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %138

65:                                               ; preds = %44
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = mul nsw i32 4, %70
  %72 = call i32 @GEN_INT(i32 %71)
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %72, i32* %73, align 16
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @SImode, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @REGNO(i32 %81)
  %83 = add nsw i64 %82, 1
  %84 = call i32 @gen_rtx_REG(i32 %78, i64 %83)
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %87 = call i32 @output_asm_insn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32* %86)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %138

88:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %119, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 4
  %100 = call i32 @GEN_INT(i32 %99)
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %100, i32* %101, align 16
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @SImode, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @REGNO(i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = call i32 @gen_rtx_REG(i32 %106, i64 %113)
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %117 = call i32 @output_asm_insn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %116)
  br label %118

118:                                              ; preds = %97, %93
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %89

122:                                              ; preds = %89
  %123 = load i32, i32* %4, align 4
  %124 = mul nsw i32 %123, 4
  %125 = call i32 @GEN_INT(i32 %124)
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %132 = call i32 @output_asm_insn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %131)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %138

133:                                              ; preds = %23
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %19

137:                                              ; preds = %19
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %138

138:                                              ; preds = %137, %122, %68, %49, %17
  %139 = load i8*, i8** %2, align 8
  ret i8* %139
}

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i64 @refers_to_regno_p(i64, i64, i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
