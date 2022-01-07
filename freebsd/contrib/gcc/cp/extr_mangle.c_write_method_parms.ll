; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_method_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_method_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32* null, align 8
@void_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @write_method_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_method_parms(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i32* @DECL_ARGUMENTS(i64 %14)
  br label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** @NULL_TREE, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32* [ %15, %13 ], [ %17, %16 ]
  %20 = ptrtoint i32* %19 to i64
  store i64 %20, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = call i32* @TREE_CHAIN(i64 %24)
  %26 = ptrtoint i32* %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = call i32* @TREE_CHAIN(i64 %30)
  br label %34

32:                                               ; preds = %23
  %33 = load i32*, i32** @NULL_TREE, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32* [ %31, %29 ], [ %33, %32 ]
  %36 = ptrtoint i32* %35 to i64
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %46, %34
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @DECL_ARTIFICIAL(i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = load i64, i64* %4, align 8
  %48 = call i32* @TREE_CHAIN(i64 %47)
  %49 = ptrtoint i32* %48 to i64
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32* @TREE_CHAIN(i64 %50)
  %52 = ptrtoint i32* %51 to i64
  store i64 %52, i64* %8, align 8
  br label %37

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %82, %54
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @TREE_VALUE(i64 %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @void_type_node, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @write_type(i64 %70)
  br label %72

72:                                               ; preds = %69, %65
  store i32 0, i32* %9, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i32* @TREE_CHAIN(i64 %73)
  %75 = icmp eq i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @gcc_assert(i32 %76)
  br label %81

78:                                               ; preds = %59
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @write_type(i64 %79)
  br label %81

81:                                               ; preds = %78, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %4, align 8
  %84 = call i32* @TREE_CHAIN(i64 %83)
  %85 = ptrtoint i32* %84 to i64
  store i64 %85, i64* %4, align 8
  br label %56

86:                                               ; preds = %56
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @write_char(i8 signext 122)
  br label %91

91:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32* @DECL_ARGUMENTS(i64) #1

declare dso_local i32* @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @write_type(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
