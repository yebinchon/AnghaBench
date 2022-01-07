; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cxx_comdat_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cxx_comdat_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cxx_comdat_group(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @VAR_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @DECL_VTABLE_OR_VTT_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DECL_CONTEXT(i32 %14)
  %16 = call i32 @CLASSTYPE_VTABLES(i32 %15)
  %17 = call i32 @DECL_ASSEMBLER_NAME(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %9, %1
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @DECL_THUNK_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @THUNK_TARGET(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TARGET_USE_LOCAL_THUNK_ALIAS_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @DECL_SECTION_NAME(i32 %30)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @DECL_ONE_ONLY(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %33, %29, %23
  br label %41

40:                                               ; preds = %37
  br label %19

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @DECL_ASSEMBLER_NAME(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %13
  %45 = load i32, i32* %3, align 4
  %46 = call i8* @IDENTIFIER_POINTER(i32 %45)
  ret i8* %46
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_VTABLE_OR_VTT_P(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @CLASSTYPE_VTABLES(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i64 @DECL_THUNK_P(i32) #1

declare dso_local i32 @THUNK_TARGET(i32) #1

declare dso_local i64 @TARGET_USE_LOCAL_THUNK_ALIAS_P(i32) #1

declare dso_local i32* @DECL_SECTION_NAME(i32) #1

declare dso_local i64 @DECL_ONE_ONLY(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
