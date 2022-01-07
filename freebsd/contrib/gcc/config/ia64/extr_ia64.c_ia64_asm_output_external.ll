; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_asm_output_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_asm_output_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 (i32)* }
%struct.TYPE_3__ = type { i32 (i32*, i8*)* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TARGET_HPUX_LD = common dso_local global i64 0, align 8
@TARGET_GNU_AS = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_asm_output_external(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DECL_ASSEMBLER_NAME(i32 %8)
  %10 = call i64 @TREE_SYMBOL_REFERENCED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %3
  %13 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 %13(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @maybe_assemble_visibility(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i64, i64* @TARGET_HPUX_LD, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @TARGET_GNU_AS, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @FUNCTION_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @ASM_OUTPUT_TYPE_DIRECTIVE(i32* %35, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 %38(i32* %39, i8* %40)
  br label %54

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* @TARGET_GNU_AS, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 %49(i32* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %45, %42
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %3
  ret void
}

declare dso_local i64 @TREE_SYMBOL_REFERENCED(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i64 @maybe_assemble_visibility(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @ASM_OUTPUT_TYPE_DIRECTIVE(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
