; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_ptr_decl_may_alias_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_ptr_decl_may_alias_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }
%struct.ptr_info_def = type { i64 }
%struct.TYPE_2__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.data_reference*, i32*)* @ptr_decl_may_alias_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_decl_may_alias_p(i64 %0, i64 %1, %struct.data_reference* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.data_reference*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ptr_info_def*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.data_reference* %2, %struct.data_reference** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.data_reference*, %struct.data_reference** %8, align 8
  %14 = call %struct.ptr_info_def* @DR_PTR_INFO(%struct.data_reference* %13)
  store %struct.ptr_info_def* %14, %struct.ptr_info_def** %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @SSA_NAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @DECL_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ false, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load %struct.ptr_info_def*, %struct.ptr_info_def** %11, align 8
  %28 = icmp ne %struct.ptr_info_def* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.ptr_info_def*, %struct.ptr_info_def** %11, align 8
  %31 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @SSA_NAME_VAR(i64 %37)
  %39 = call %struct.TYPE_2__* @get_var_ann(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.data_reference*, %struct.data_reference** %8, align 8
  %47 = call i64 @DR_MEMTAG(%struct.data_reference* %46)
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @is_aliased_with(i64 %53, i64 %54)
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.ptr_info_def* @DR_PTR_INFO(%struct.data_reference*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local %struct.TYPE_2__* @get_var_ann(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @DR_MEMTAG(%struct.data_reference*) #1

declare dso_local i32 @is_aliased_with(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
