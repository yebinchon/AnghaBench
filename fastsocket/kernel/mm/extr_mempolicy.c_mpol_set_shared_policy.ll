; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_set_shared_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_set_shared_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_policy = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.mempolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sp_node = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"set_shared_policy %lx sz %lu %d %d %lx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sn_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpol_set_shared_policy(%struct.shared_policy* %0, %struct.vm_area_struct* %1, %struct.mempolicy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shared_policy*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.mempolicy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sp_node*, align 8
  %10 = alloca i64, align 8
  store %struct.shared_policy* %0, %struct.shared_policy** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.mempolicy* %2, %struct.mempolicy** %7, align 8
  store %struct.sp_node* null, %struct.sp_node** %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = call i64 @vma_pages(%struct.vm_area_struct* %11)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %18 = icmp ne %struct.mempolicy* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %21 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ -1, %23 ]
  %26 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %27 = icmp ne %struct.mempolicy* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ -1, %32 ]
  %35 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %36 = icmp ne %struct.mempolicy* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %39 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @nodes_addr(i32 %41)
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %44, %37 ], [ -1, %45 ]
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i32 %25, i32 %34, i32 %47)
  %49 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %50 = icmp ne %struct.mempolicy* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %61 = call %struct.sp_node* @sp_alloc(i64 %54, i64 %59, %struct.mempolicy* %60)
  store %struct.sp_node* %61, %struct.sp_node** %9, align 8
  %62 = load %struct.sp_node*, %struct.sp_node** %9, align 8
  %63 = icmp ne %struct.sp_node* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.shared_policy*, %struct.shared_policy** %5, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.sp_node*, %struct.sp_node** %9, align 8
  %79 = call i32 @shared_policy_replace(%struct.shared_policy* %69, i64 %72, i64 %77, %struct.sp_node* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %68
  %83 = load %struct.sp_node*, %struct.sp_node** %9, align 8
  %84 = icmp ne %struct.sp_node* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @sn_cache, align 4
  %87 = load %struct.sp_node*, %struct.sp_node** %9, align 8
  %88 = call i32 @kmem_cache_free(i32 %86, %struct.sp_node* %87)
  br label %89

89:                                               ; preds = %85, %82, %68
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %64
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32* @nodes_addr(i32) #1

declare dso_local %struct.sp_node* @sp_alloc(i64, i64, %struct.mempolicy*) #1

declare dso_local i32 @shared_policy_replace(%struct.shared_policy*, i64, i64, %struct.sp_node*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sp_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
