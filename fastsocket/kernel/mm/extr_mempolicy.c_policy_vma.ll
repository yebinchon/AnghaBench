; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_policy_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_policy_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.mempolicy = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"vma %lx-%lx/%lx vm_ops %p vm_file %p set_policy %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.mempolicy*)* @policy_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_vma(%struct.vm_area_struct* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mempolicy*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  store %struct.mempolicy* %9, %struct.mempolicy** %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %35 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %34, align 8
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 (%struct.vm_area_struct*, %struct.mempolicy*)* [ %35, %29 ], [ null, %36 ]
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, %struct.TYPE_2__* %21, i32 %24, i32 (%struct.vm_area_struct*, %struct.mempolicy*)* %38)
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %50 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %49, align 8
  %51 = icmp ne i32 (%struct.vm_area_struct*, %struct.mempolicy*)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %58 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %57, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %60 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %61 = call i32 %58(%struct.vm_area_struct* %59, %struct.mempolicy* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %44, %37
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %67 = call i32 @mpol_get(%struct.mempolicy* %66)
  %68 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 0
  store %struct.mempolicy* %68, %struct.mempolicy** %70, align 8
  %71 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %72 = call i32 @mpol_put(%struct.mempolicy* %71)
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32 (%struct.vm_area_struct*, %struct.mempolicy*)*) #1

declare dso_local i32 @mpol_get(%struct.mempolicy*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
