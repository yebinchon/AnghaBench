; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_drain_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_drain_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_list3 = type { i32 }
%struct.array_cache = type { i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drain_array(%struct.kmem_cache* %0, %struct.kmem_list3* %1, %struct.array_cache* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca %struct.kmem_list3*, align 8
  %8 = alloca %struct.array_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store %struct.kmem_list3* %1, %struct.kmem_list3** %7, align 8
  store %struct.array_cache* %2, %struct.array_cache** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %13 = icmp ne %struct.array_cache* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %16 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %5
  br label %98

20:                                               ; preds = %14
  %21 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %22 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %30 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  br label %98

31:                                               ; preds = %25, %20
  %32 = load %struct.kmem_list3*, %struct.kmem_list3** %7, align 8
  %33 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %36 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %44 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %52

46:                                               ; preds = %39
  %47 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %48 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 4
  %51 = sdiv i32 %50, 5
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i32 [ %45, %42 ], [ %51, %46 ]
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %56 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %61 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %67 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %68 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @free_block(%struct.kmem_cache* %66, i32* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %75 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %79 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %82 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load %struct.array_cache*, %struct.array_cache** %8, align 8
  %88 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memmove(i32* %80, i32* %86, i32 %92)
  br label %94

94:                                               ; preds = %65, %31
  %95 = load %struct.kmem_list3*, %struct.kmem_list3** %7, align 8
  %96 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_irq(i32* %96)
  br label %98

98:                                               ; preds = %19, %94, %28
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @free_block(%struct.kmem_cache*, i32*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
