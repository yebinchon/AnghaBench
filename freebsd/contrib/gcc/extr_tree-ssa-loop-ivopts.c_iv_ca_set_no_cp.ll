; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_set_no_cp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_set_no_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i64*, i32, i32, i32, i32, i32, %struct.cost_pair**, i32 }
%struct.cost_pair = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.iv_use = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_use*)* @iv_ca_set_no_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_set_no_cp(%struct.ivopts_data* %0, %struct.iv_ca* %1, %struct.iv_use* %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca %struct.iv_ca*, align 8
  %6 = alloca %struct.iv_use*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cost_pair*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %5, align 8
  store %struct.iv_use* %2, %struct.iv_use** %6, align 8
  %10 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %11 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %14 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %13, i32 0, i32 6
  %15 = load %struct.cost_pair**, %struct.cost_pair*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %15, i64 %17
  %19 = load %struct.cost_pair*, %struct.cost_pair** %18, align 8
  store %struct.cost_pair* %19, %struct.cost_pair** %9, align 8
  %20 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %21 = icmp ne %struct.cost_pair* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %113

23:                                               ; preds = %3
  %24 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %25 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %30 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %34 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %33, i32 0, i32 6
  %35 = load %struct.cost_pair**, %struct.cost_pair*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %35, i64 %37
  store %struct.cost_pair* null, %struct.cost_pair** %38, align 8
  %39 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %40 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %48 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %23
  %56 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %57 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bitmap_clear_bit(i32 %58, i32 %59)
  %61 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %62 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %69 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %55
  %73 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %74 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %78 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %83 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %89 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %90 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @iv_ca_set_remove_invariants(%struct.iv_ca* %88, i32 %93)
  br label %95

95:                                               ; preds = %72, %23
  %96 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %97 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %100 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %106 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %107 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @iv_ca_set_remove_invariants(%struct.iv_ca* %105, i32 %108)
  %110 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %111 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %112 = call i32 @iv_ca_recount_cost(%struct.ivopts_data* %110, %struct.iv_ca* %111)
  br label %113

113:                                              ; preds = %95, %22
  ret void
}

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

declare dso_local i32 @iv_ca_set_remove_invariants(%struct.iv_ca*, i32) #1

declare dso_local i32 @iv_ca_recount_cost(%struct.ivopts_data*, %struct.iv_ca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
