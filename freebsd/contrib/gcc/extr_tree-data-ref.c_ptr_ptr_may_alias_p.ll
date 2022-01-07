; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_ptr_ptr_may_alias_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_ptr_ptr_may_alias_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }
%struct.ptr_info_def = type { i64 }
%struct.TYPE_2__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.data_reference*, %struct.data_reference*, i32*)* @ptr_ptr_may_alias_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_ptr_may_alias_p(i64 %0, i64 %1, %struct.data_reference* %2, %struct.data_reference* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.data_reference*, align 8
  %10 = alloca %struct.data_reference*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ptr_info_def*, align 8
  %15 = alloca %struct.ptr_info_def*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.data_reference* %2, %struct.data_reference** %9, align 8
  store %struct.data_reference* %3, %struct.data_reference** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.data_reference*, %struct.data_reference** %9, align 8
  %19 = call %struct.ptr_info_def* @DR_PTR_INFO(%struct.data_reference* %18)
  store %struct.ptr_info_def* %19, %struct.ptr_info_def** %14, align 8
  %20 = load %struct.data_reference*, %struct.data_reference** %10, align 8
  %21 = call %struct.ptr_info_def* @DR_PTR_INFO(%struct.data_reference* %20)
  store %struct.ptr_info_def* %21, %struct.ptr_info_def** %15, align 8
  %22 = load %struct.ptr_info_def*, %struct.ptr_info_def** %14, align 8
  %23 = icmp ne %struct.ptr_info_def* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %5
  %25 = load %struct.ptr_info_def*, %struct.ptr_info_def** %14, align 8
  %26 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.ptr_info_def*, %struct.ptr_info_def** %15, align 8
  %31 = icmp ne %struct.ptr_info_def* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.ptr_info_def*, %struct.ptr_info_def** %15, align 8
  %34 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.ptr_info_def*, %struct.ptr_info_def** %14, align 8
  %39 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.ptr_info_def*, %struct.ptr_info_def** %15, align 8
  %42 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  br label %75

44:                                               ; preds = %32, %29, %24, %5
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @SSA_NAME_VAR(i64 %45)
  %47 = call %struct.TYPE_2__* @get_var_ann(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load %struct.data_reference*, %struct.data_reference** %9, align 8
  %54 = call i64 @DR_MEMTAG(%struct.data_reference* %53)
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %87

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @SSA_NAME_VAR(i64 %60)
  %62 = call %struct.TYPE_2__* @get_var_ann(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load %struct.data_reference*, %struct.data_reference** %10, align 8
  %69 = call i64 @DR_MEMTAG(%struct.data_reference* %68)
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %87

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32*, i32** %11, align 8
  store i32 1, i32* %80, align 4
  br label %86

81:                                               ; preds = %75
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @may_aliases_intersect(i64 %82, i64 %83)
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %79
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %73, %58
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.ptr_info_def* @DR_PTR_INFO(%struct.data_reference*) #1

declare dso_local %struct.TYPE_2__* @get_var_ann(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @DR_MEMTAG(%struct.data_reference*) #1

declare dso_local i32 @may_aliases_intersect(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
