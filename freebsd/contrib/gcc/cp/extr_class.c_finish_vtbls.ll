; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_finish_vtbls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_finish_vtbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @finish_vtbls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_vtbls(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TYPE_BINFO(i64 %5)
  %7 = call i64 @BINFO_VTABLE(i64 %6)
  %8 = load i32, i32* @NULL_TREE, align 4
  %9 = call i64 @build_tree_list(i64 %7, i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @TYPE_BINFO(i64 %10)
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @TYPE_BINFO(i64 %12)
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @TYPE_BINFO(i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @accumulate_vtbl_inits(i64 %11, i64 %13, i64 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @TYPE_BINFO(i64 %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %37, %1
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @BINFO_VIRTUAL_P(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %37

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @TYPE_BINFO(i64 %32)
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @accumulate_vtbl_inits(i64 %30, i64 %31, i64 %33, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TREE_CHAIN(i64 %38)
  store i64 %39, i64* %4, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* %2, align 8
  %42 = call i64 @TYPE_BINFO(i64 %41)
  %43 = call i64 @BINFO_VTABLE(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %2, align 8
  %47 = call i64 @TYPE_BINFO(i64 %46)
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @TREE_VALUE(i64 %48)
  %50 = call i32 @initialize_vtable(i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  ret void
}

declare dso_local i64 @build_tree_list(i64, i32) #1

declare dso_local i64 @BINFO_VTABLE(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @accumulate_vtbl_inits(i64, i64, i64, i64, i64) #1

declare dso_local i32 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @initialize_vtable(i64, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
