; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_typeinfo_in_lib_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_typeinfo_in_lib_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@TYPE_QUAL_CONST = common dso_local global i64 0, align 8
@TYPE_UNQUALIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @typeinfo_in_lib_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typeinfo_in_lib_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  %6 = load i32, i32* @POINTER_TYPE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  %11 = call i64 @cp_type_quals(i32 %10)
  %12 = load i64, i64* @TYPE_QUAL_CONST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  %17 = call i64 @cp_type_quals(i32 %16)
  %18 = load i64, i64* @TYPE_UNQUALIFIED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %14, %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_CODE(i32 %24)
  switch i32 %25, label %27 [
    i32 130, label %26
    i32 131, label %26
    i32 129, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %23, %23, %23, %23
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @cp_type_quals(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
