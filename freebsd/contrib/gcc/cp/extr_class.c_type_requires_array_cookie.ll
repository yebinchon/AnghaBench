; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_type_requires_array_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_type_requires_array_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VEC_DELETE_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @type_requires_array_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_requires_array_cookie(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @CLASS_TYPE_P(i64 %8)
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @TYPE_BINFO(i64 %16)
  %18 = load i32, i32* @VEC_DELETE_EXPR, align 4
  %19 = call i32 @ansi_opname(i32 %18)
  %20 = call i64 @lookup_fnfields(i32 %17, i32 %19, i32 0)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  store i32 0, i32* %2, align 4
  br label %63

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @BASELINK_FUNCTIONS(i64 %29)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %58, %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @OVL_CURRENT(i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @TREE_TYPE(i64 %37)
  %39 = call i64 @TYPE_ARG_TYPES(i32 %38)
  %40 = call i64 @TREE_CHAIN(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @void_list_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %63

45:                                               ; preds = %34
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @TREE_CHAIN(i64 %46)
  %48 = load i64, i64* @void_list_node, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @TREE_VALUE(i64 %51)
  %53 = load i32, i32* @sizetype, align 4
  %54 = call i64 @same_type_p(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %50, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @OVL_NEXT(i64 %59)
  store i64 %60, i64* %4, align 8
  br label %31

61:                                               ; preds = %31
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %44, %27, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @lookup_fnfields(i32, i32, i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i32 @ansi_opname(i32) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
