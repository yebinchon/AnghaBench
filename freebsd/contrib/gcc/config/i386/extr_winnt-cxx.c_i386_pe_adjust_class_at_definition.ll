; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt-cxx.c_i386_pe_adjust_class_at_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt-cxx.c_i386_pe_adjust_class_at_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"dllimport\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_pe_adjust_class_at_definition(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @CLASS_TYPE_P(i64 %4)
  %6 = call i32 @gcc_assert(i32 %5)
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @TYPE_ATTRIBUTES(i64 %7)
  %9 = call i64 @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @NULL_TREE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @TYPE_FIELDS(i64 %14)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %28, %13
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @VAR_DECL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @maybe_add_dllimport(i64 %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  store i64 %30, i64* %3, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @TYPE_METHODS(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %46, %31
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @FUNCTION_DECL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @maybe_add_dllimport(i64 %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @TREE_CHAIN(i64 %47)
  store i64 %48, i64* %3, align 8
  br label %34

49:                                               ; preds = %34
  %50 = load i64, i64* %2, align 8
  %51 = call i64 @CLASSTYPE_VTABLES(i64 %50)
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %64, %49
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @VAR_DECL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @maybe_add_dllimport(i64 %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @TREE_CHAIN(i64 %65)
  store i64 %66, i64* %3, align 8
  br label %52

67:                                               ; preds = %12, %52
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @maybe_add_dllimport(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_METHODS(i64) #1

declare dso_local i64 @CLASSTYPE_VTABLES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
