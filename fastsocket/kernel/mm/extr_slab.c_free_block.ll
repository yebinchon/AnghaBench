; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i64, %struct.kmem_list3** }
%struct.kmem_list3 = type { i64, i64, i32, i32 }
%struct.slab = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, i8**, i32, i32)* @free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_block(%struct.kmem_cache* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmem_list3*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.slab*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %92, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %95

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call %struct.slab* @virt_to_slab(i8* %23)
  store %struct.slab* %24, %struct.slab** %12, align 8
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %26 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %25, i32 0, i32 1
  %27 = load %struct.kmem_list3**, %struct.kmem_list3*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kmem_list3*, %struct.kmem_list3** %27, i64 %29
  %31 = load %struct.kmem_list3*, %struct.kmem_list3** %30, align 8
  store %struct.kmem_list3* %31, %struct.kmem_list3** %10, align 8
  %32 = load %struct.slab*, %struct.slab** %12, align 8
  %33 = getelementptr inbounds %struct.slab, %struct.slab* %32, i32 0, i32 1
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @check_spinlock_acquired_node(%struct.kmem_cache* %35, i32 %36)
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %39 = load %struct.slab*, %struct.slab** %12, align 8
  %40 = call i32 @check_slabp(%struct.kmem_cache* %38, %struct.slab* %39)
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %42 = load %struct.slab*, %struct.slab** %12, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @slab_put_obj(%struct.kmem_cache* %41, %struct.slab* %42, i8* %43, i32 %44)
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %47 = call i32 @STATS_DEC_ACTIVE(%struct.kmem_cache* %46)
  %48 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %49 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %53 = load %struct.slab*, %struct.slab** %12, align 8
  %54 = call i32 @check_slabp(%struct.kmem_cache* %52, %struct.slab* %53)
  %55 = load %struct.slab*, %struct.slab** %12, align 8
  %56 = getelementptr inbounds %struct.slab, %struct.slab* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %17
  %60 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %61 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %64 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %69 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %72 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %76 = load %struct.slab*, %struct.slab** %12, align 8
  %77 = call i32 @slab_destroy(%struct.kmem_cache* %75, %struct.slab* %76)
  br label %84

78:                                               ; preds = %59
  %79 = load %struct.slab*, %struct.slab** %12, align 8
  %80 = getelementptr inbounds %struct.slab, %struct.slab* %79, i32 0, i32 1
  %81 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %82 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %81, i32 0, i32 3
  %83 = call i32 @list_add(i32* %80, i32* %82)
  br label %84

84:                                               ; preds = %78, %67
  br label %91

85:                                               ; preds = %17
  %86 = load %struct.slab*, %struct.slab** %12, align 8
  %87 = getelementptr inbounds %struct.slab, %struct.slab* %86, i32 0, i32 1
  %88 = load %struct.kmem_list3*, %struct.kmem_list3** %10, align 8
  %89 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %88, i32 0, i32 2
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %13

95:                                               ; preds = %13
  ret void
}

declare dso_local %struct.slab* @virt_to_slab(i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @check_spinlock_acquired_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @check_slabp(%struct.kmem_cache*, %struct.slab*) #1

declare dso_local i32 @slab_put_obj(%struct.kmem_cache*, %struct.slab*, i8*, i32) #1

declare dso_local i32 @STATS_DEC_ACTIVE(%struct.kmem_cache*) #1

declare dso_local i32 @slab_destroy(%struct.kmem_cache*, %struct.slab*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
