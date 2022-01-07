; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, i64, %struct.idr_layer* }
%struct.idr_layer = type { i32, i32, %struct.idr_layer** }

@MAX_ID_MASK = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i32 0, align 4
@IDR_FREE_MAX = common dso_local global i64 0, align 8
@idr_layer_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_remove(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca %struct.idr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr_layer*, align 8
  %6 = alloca %struct.idr_layer*, align 8
  store %struct.idr* %0, %struct.idr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MAX_ID_MASK, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.idr*, %struct.idr** %3, align 8
  %11 = load %struct.idr*, %struct.idr** %3, align 8
  %12 = getelementptr inbounds %struct.idr, %struct.idr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @IDR_BITS, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sub_remove(%struct.idr* %10, i32 %16, i32 %17)
  %19 = load %struct.idr*, %struct.idr** %3, align 8
  %20 = getelementptr inbounds %struct.idr, %struct.idr* %19, i32 0, i32 2
  %21 = load %struct.idr_layer*, %struct.idr_layer** %20, align 8
  %22 = icmp ne %struct.idr_layer* %21, null
  br i1 %22, label %23, label %70

23:                                               ; preds = %2
  %24 = load %struct.idr*, %struct.idr** %3, align 8
  %25 = getelementptr inbounds %struct.idr, %struct.idr* %24, i32 0, i32 2
  %26 = load %struct.idr_layer*, %struct.idr_layer** %25, align 8
  %27 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %70

30:                                               ; preds = %23
  %31 = load %struct.idr*, %struct.idr** %3, align 8
  %32 = getelementptr inbounds %struct.idr, %struct.idr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load %struct.idr*, %struct.idr** %3, align 8
  %37 = getelementptr inbounds %struct.idr, %struct.idr* %36, i32 0, i32 2
  %38 = load %struct.idr_layer*, %struct.idr_layer** %37, align 8
  %39 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %38, i32 0, i32 2
  %40 = load %struct.idr_layer**, %struct.idr_layer*** %39, align 8
  %41 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %40, i64 0
  %42 = load %struct.idr_layer*, %struct.idr_layer** %41, align 8
  %43 = icmp ne %struct.idr_layer* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  %45 = load %struct.idr*, %struct.idr** %3, align 8
  %46 = getelementptr inbounds %struct.idr, %struct.idr* %45, i32 0, i32 2
  %47 = load %struct.idr_layer*, %struct.idr_layer** %46, align 8
  store %struct.idr_layer* %47, %struct.idr_layer** %6, align 8
  %48 = load %struct.idr*, %struct.idr** %3, align 8
  %49 = getelementptr inbounds %struct.idr, %struct.idr* %48, i32 0, i32 2
  %50 = load %struct.idr_layer*, %struct.idr_layer** %49, align 8
  %51 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %50, i32 0, i32 2
  %52 = load %struct.idr_layer**, %struct.idr_layer*** %51, align 8
  %53 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %52, i64 0
  %54 = load %struct.idr_layer*, %struct.idr_layer** %53, align 8
  store %struct.idr_layer* %54, %struct.idr_layer** %5, align 8
  %55 = load %struct.idr*, %struct.idr** %3, align 8
  %56 = getelementptr inbounds %struct.idr, %struct.idr* %55, i32 0, i32 2
  %57 = load %struct.idr_layer*, %struct.idr_layer** %56, align 8
  %58 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  %59 = call i32 @rcu_assign_pointer(%struct.idr_layer* %57, %struct.idr_layer* %58)
  %60 = load %struct.idr*, %struct.idr** %3, align 8
  %61 = getelementptr inbounds %struct.idr, %struct.idr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %65 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %67 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %69 = call i32 @free_layer(%struct.idr_layer* %68)
  br label %70

70:                                               ; preds = %44, %35, %30, %23, %2
  br label %71

71:                                               ; preds = %77, %70
  %72 = load %struct.idr*, %struct.idr** %3, align 8
  %73 = getelementptr inbounds %struct.idr, %struct.idr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IDR_FREE_MAX, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.idr*, %struct.idr** %3, align 8
  %79 = call %struct.idr_layer* @get_from_free_list(%struct.idr* %78)
  store %struct.idr_layer* %79, %struct.idr_layer** %5, align 8
  %80 = load i32, i32* @idr_layer_cache, align 4
  %81 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  %82 = call i32 @kmem_cache_free(i32 %80, %struct.idr_layer* %81)
  br label %71

83:                                               ; preds = %71
  ret void
}

declare dso_local i32 @sub_remove(%struct.idr*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.idr_layer*, %struct.idr_layer*) #1

declare dso_local i32 @free_layer(%struct.idr_layer*) #1

declare dso_local %struct.idr_layer* @get_from_free_list(%struct.idr*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.idr_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
