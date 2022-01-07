; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_set_cp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_set_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i32*, i32, i32, i32, i32, i32, %struct.cost_pair**, i32 }
%struct.iv_use = type { i32 }
%struct.cost_pair = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_use*, %struct.cost_pair*)* @iv_ca_set_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_set_cp(%struct.ivopts_data* %0, %struct.iv_ca* %1, %struct.iv_use* %2, %struct.cost_pair* %3) #0 {
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_ca*, align 8
  %7 = alloca %struct.iv_use*, align 8
  %8 = alloca %struct.cost_pair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %6, align 8
  store %struct.iv_use* %2, %struct.iv_use** %7, align 8
  store %struct.cost_pair* %3, %struct.cost_pair** %8, align 8
  %11 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %12 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %15 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %14, i32 0, i32 6
  %16 = load %struct.cost_pair**, %struct.cost_pair*** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %16, i64 %18
  %20 = load %struct.cost_pair*, %struct.cost_pair** %19, align 8
  %21 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %22 = icmp eq %struct.cost_pair* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %132

24:                                               ; preds = %4
  %25 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %26 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %25, i32 0, i32 6
  %27 = load %struct.cost_pair**, %struct.cost_pair*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %27, i64 %29
  %31 = load %struct.cost_pair*, %struct.cost_pair** %30, align 8
  %32 = icmp ne %struct.cost_pair* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %35 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %36 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %37 = call i32 @iv_ca_set_no_cp(%struct.ivopts_data* %34, %struct.iv_ca* %35, %struct.iv_use* %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %40 = icmp ne %struct.cost_pair* %39, null
  br i1 %40, label %41, label %132

41:                                               ; preds = %38
  %42 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %43 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %48 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %52 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %53 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %52, i32 0, i32 6
  %54 = load %struct.cost_pair**, %struct.cost_pair*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %54, i64 %56
  store %struct.cost_pair* %51, %struct.cost_pair** %57, align 8
  %58 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %59 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %67 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %114

74:                                               ; preds = %41
  %75 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %76 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @bitmap_set_bit(i32 %77, i32 %78)
  %80 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %81 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %88 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %74
  %92 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %93 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %97 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %102 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %108 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %109 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @iv_ca_set_add_invariants(%struct.iv_ca* %107, i32 %112)
  br label %114

114:                                              ; preds = %91, %41
  %115 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %116 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %119 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %125 = load %struct.cost_pair*, %struct.cost_pair** %8, align 8
  %126 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @iv_ca_set_add_invariants(%struct.iv_ca* %124, i32 %127)
  %129 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %130 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %131 = call i32 @iv_ca_recount_cost(%struct.ivopts_data* %129, %struct.iv_ca* %130)
  br label %132

132:                                              ; preds = %23, %114, %38
  ret void
}

declare dso_local i32 @iv_ca_set_no_cp(%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_use*) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @iv_ca_set_add_invariants(%struct.iv_ca*, i32) #1

declare dso_local i32 @iv_ca_recount_cost(%struct.ivopts_data*, %struct.iv_ca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
