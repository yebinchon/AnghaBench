; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_resolve_virtual_fun_from_obj_type_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_resolve_virtual_fun_from_obj_type_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_VTABLE_USES_DESCRIPTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @resolve_virtual_fun_from_obj_type_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_virtual_fun_from_obj_type_ref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @OBJ_TYPE_REF_OBJECT(i32 %6)
  %8 = call i32 @TREE_TYPE(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @OBJ_TYPE_REF_TOKEN(i32 %9)
  %11 = call i64 @tree_low_cst(i32 %10, i32 1)
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  %14 = call i32 @TYPE_BINFO(i32 %13)
  %15 = call i32 @BINFO_VIRTUALS(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %27, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_CHAIN(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @TARGET_VTABLE_USES_DESCRIPTORS, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @TARGET_VTABLE_USES_DESCRIPTORS, align 4
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 1, %26 ]
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BV_FN(i32 %33)
  ret i32 %34
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @OBJ_TYPE_REF_OBJECT(i32) #1

declare dso_local i64 @tree_low_cst(i32, i32) #1

declare dso_local i32 @OBJ_TYPE_REF_TOKEN(i32) #1

declare dso_local i32 @BINFO_VIRTUALS(i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @BV_FN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
