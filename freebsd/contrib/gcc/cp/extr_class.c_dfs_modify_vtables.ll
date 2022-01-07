; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dfs_modify_vtables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_dfs_modify_vtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dfs_skip_bases = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @dfs_modify_vtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dfs_modify_vtables(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @BINFO_TYPE(i64 %12)
  %14 = call i32 @TYPE_CONTAINS_VPTR_P(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @dfs_skip_bases, align 8
  store i64 %17, i64* %3, align 8
  br label %69

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @BINFO_TYPE(i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @SAME_BINFO_TYPE_P(i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @CLASSTYPE_HAS_PRIMARY_BASE_P(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %3, align 8
  br label %69

30:                                               ; preds = %24, %18
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @BINFO_PRIMARY_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @BINFO_VIRTUAL_P(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %3, align 8
  br label %69

40:                                               ; preds = %34, %30
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @make_new_vtable(i64 %41, i64 %42)
  store i32 0, i32* %9, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @BINFO_VIRTUALS(i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @BINFO_TYPE(i64 %46)
  %48 = call i64 @TYPE_BINFO(i32 %47)
  %49 = call i64 @BINFO_VIRTUALS(i64 %48)
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %60, %40
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @BV_FN(i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @update_vtable_entry_for_fn(i64 %54, i64 %55, i32 %57, i64* %7, i32 %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @TREE_CHAIN(i64 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @TREE_CHAIN(i64 %65)
  store i64 %66, i64* %8, align 8
  br label %50

67:                                               ; preds = %50
  %68 = load i64, i64* @NULL_TREE, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %38, %28, %16
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @TYPE_CONTAINS_VPTR_P(i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @SAME_BINFO_TYPE_P(i32, i64) #1

declare dso_local i32 @CLASSTYPE_HAS_PRIMARY_BASE_P(i64) #1

declare dso_local i64 @BINFO_PRIMARY_P(i64) #1

declare dso_local i32 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i32 @make_new_vtable(i64, i64) #1

declare dso_local i64 @BINFO_VIRTUALS(i64) #1

declare dso_local i64 @TYPE_BINFO(i32) #1

declare dso_local i32 @update_vtable_entry_for_fn(i64, i64, i32, i64*, i32) #1

declare dso_local i32 @BV_FN(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
