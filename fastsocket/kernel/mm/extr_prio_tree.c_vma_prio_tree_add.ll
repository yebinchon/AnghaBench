; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_prio_tree.c_vma_prio_tree_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_prio_tree.c_vma_prio_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vm_area_struct*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vma_prio_tree_add(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = call i64 @RADIX_INDEX(%struct.vm_area_struct* %5)
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %8 = call i64 @RADIX_INDEX(%struct.vm_area_struct* %7)
  %9 = icmp ne i64 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = call i64 @HEAP_INDEX(%struct.vm_area_struct* %12)
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = call i64 @HEAP_INDEX(%struct.vm_area_struct* %14)
  %16 = icmp ne i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %22, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %2
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @list_add(i32* %37, i32* %41)
  br label %81

43:                                               ; preds = %2
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %47, align 8
  %49 = icmp ne %struct.vm_area_struct* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %58, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %54, i32* %62)
  br label %80

64:                                               ; preds = %43
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.vm_area_struct* %70, %struct.vm_area_struct** %74, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store %struct.vm_area_struct* %75, %struct.vm_area_struct** %79, align 8
  br label %80

80:                                               ; preds = %64, %50
  br label %81

81:                                               ; preds = %80, %33
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @RADIX_INDEX(%struct.vm_area_struct*) #1

declare dso_local i64 @HEAP_INDEX(%struct.vm_area_struct*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
