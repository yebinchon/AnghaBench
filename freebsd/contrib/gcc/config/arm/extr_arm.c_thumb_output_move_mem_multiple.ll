; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_output_move_mem_multiple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_output_move_mem_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"ldmia\09%1!, {%4, %5}\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"stmia\09%0!, {%4, %5}\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ldmia\09%1!, {%4, %5, %6}\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"stmia\09%0!, {%4, %5, %6}\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thumb_output_move_mem_multiple(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %105 [
    i32 2, label %7
    i32 3, label %34
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @REGNO(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REGNO(i32 %14)
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %7
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %7
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @output_asm_insn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @output_asm_insn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  br label %107

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @REGNO(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REGNO(i32 %41)
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %34
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @REGNO(i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @REGNO(i32 %63)
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %56
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @REGNO(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @REGNO(i32 %85)
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %88, %78
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @output_asm_insn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @output_asm_insn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %103)
  br label %107

105:                                              ; preds = %2
  %106 = call i32 (...) @gcc_unreachable()
  br label %107

107:                                              ; preds = %105, %100, %29
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
