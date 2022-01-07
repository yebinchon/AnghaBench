; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_cp_fold_obj_type_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_cp_fold_obj_type_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TARGET_VTABLE_USES_DESCRIPTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_fold_obj_type_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @OBJ_TYPE_REF_TOKEN(i32 %9)
  %11 = call i64 @tree_low_cst(i32 %10, i32 1)
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TYPE_BINFO(i32 %12)
  %14 = call i32 @BINFO_VIRTUALS(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @TARGET_VTABLE_USES_DESCRIPTORS, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @TARGET_VTABLE_USES_DESCRIPTORS, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @TREE_CHAIN(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BV_FN(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_4__* @cgraph_node(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @build_address(i32 %39)
  ret i32 %40
}

declare dso_local i64 @tree_low_cst(i32, i32) #1

declare dso_local i32 @OBJ_TYPE_REF_TOKEN(i32) #1

declare dso_local i32 @BINFO_VIRTUALS(i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @BV_FN(i32) #1

declare dso_local %struct.TYPE_4__* @cgraph_node(i32) #1

declare dso_local i32 @build_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
