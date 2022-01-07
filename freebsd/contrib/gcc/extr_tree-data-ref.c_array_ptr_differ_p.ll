; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_array_ptr_differ_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_array_ptr_differ_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@VAR_DECL = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.data_reference*)* @array_ptr_differ_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_ptr_differ_p(i32 %0, i32 %1, %struct.data_reference* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.data_reference*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.data_reference* %2, %struct.data_reference** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @VAR_DECL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @INDIRECT_REF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.data_reference*, %struct.data_reference** %7, align 8
  %23 = call i64 @ptr_decl_may_alias_p(i32 %20, i32 %21, %struct.data_reference* %22, i32* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %25, %18, %13, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @ptr_decl_may_alias_p(i32, i32, %struct.data_reference*, i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
