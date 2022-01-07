; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_set_decl_assembler_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_set_decl_assembler_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lhd_set_decl_assembler_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @FUNCTION_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @VAR_DECL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @TREE_STATIC(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @DECL_EXTERNAL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @TREE_PUBLIC(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %14
  %27 = phi i1 [ true, %18 ], [ true, %14 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i1 [ false, %9 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i1 [ true, %1 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @TREE_PUBLIC(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @DECL_CONTEXT(i32 %38)
  %40 = load i64, i64* @NULL_TREE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @DECL_NAME(i32 %44)
  %46 = call i32 @SET_DECL_ASSEMBLER_NAME(i32 %43, i32 %45)
  br label %60

47:                                               ; preds = %37
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @DECL_NAME(i32 %48)
  %50 = call i8* @IDENTIFIER_POINTER(i32 %49)
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @DECL_UID(i32 %53)
  %55 = call i32 @ASM_FORMAT_PRIVATE_NAME(i8* %51, i8* %52, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @get_identifier(i8* %57)
  %59 = call i32 @SET_DECL_ASSEMBLER_NAME(i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i32 @SET_DECL_ASSEMBLER_NAME(i32, i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @ASM_FORMAT_PRIVATE_NAME(i8*, i8*, i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i32 @get_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
