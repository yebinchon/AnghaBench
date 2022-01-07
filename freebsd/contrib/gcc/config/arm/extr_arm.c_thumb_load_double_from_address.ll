; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_load_double_from_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_load_double_from_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ldr\09%H0, %2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ldr\09%0, %1\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09add\09%r, %r, %r\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09ldr\09%r, [%r, #0]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09ldr\09%r, [%r, #4]\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thumb_load_double_from_address(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GET_CODE(i32 %13)
  %15 = icmp eq i32 %14, 128
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  %22 = load i32, i32* @MEM, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @GET_CODE(i32 %30)
  switch i32 %31, label %158 [
    i32 128, label %32
    i32 131, label %58
    i32 129, label %70
    i32 130, label %146
  ]

32:                                               ; preds = %1
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SImode, align 4
  %37 = call i32 @adjust_address(i32 %35, i32 %36, i32 4)
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REGNO(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @REGNO(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  br label %57

52:                                               ; preds = %32
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %160

58:                                               ; preds = %1
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SImode, align 4
  %63 = call i32 @adjust_address(i32 %61, i32 %62, i32 4)
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %68)
  br label %160

70:                                               ; preds = %1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @XEXP(i32 %71, i32 0)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @XEXP(i32 %73, i32 1)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @CONSTANT_P(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %5, align 4
  br label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @GET_CODE(i32 %85)
  %87 = icmp eq i32 %86, 128
  %88 = zext i1 %87 to i32
  %89 = call i32 @gcc_assert(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @GET_CODE(i32 %90)
  %92 = icmp eq i32 %91, 128
  br i1 %92, label %93, label %119

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @REGNO(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @REGNO(i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @REGNO(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @asm_out_file, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @asm_out_file, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %111)
  %113 = load i32, i32* @asm_out_file, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %117)
  br label %145

119:                                              ; preds = %84
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SImode, align 4
  %124 = call i32 @adjust_address(i32 %122, i32 %123, i32 4)
  %125 = load i32*, i32** %2, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %2, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @REGNO(i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @REGNO(i32 %131)
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %119
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %137)
  br label %144

139:                                              ; preds = %119
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %140)
  %142 = load i32*, i32** %2, align 8
  %143 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %142)
  br label %144

144:                                              ; preds = %139, %134
  br label %145

145:                                              ; preds = %144, %93
  br label %160

146:                                              ; preds = %1
  %147 = load i32*, i32** %2, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SImode, align 4
  %151 = call i32 @adjust_address(i32 %149, i32 %150, i32 4)
  %152 = load i32*, i32** %2, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %154)
  %156 = load i32*, i32** %2, align 8
  %157 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %156)
  br label %160

158:                                              ; preds = %1
  %159 = call i32 (...) @gcc_unreachable()
  br label %160

160:                                              ; preds = %158, %146, %145, %58, %57
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @asm_fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
