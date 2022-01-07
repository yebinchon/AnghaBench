; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_create_new_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_create_new_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_cand = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.iv_cand* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_cand*)* @create_new_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_new_iv(%struct.ivopts_data* %0, %struct.iv_cand* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.iv_cand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.iv_cand* %1, %struct.iv_cand** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %9 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %15 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %49 [
    i32 129, label %17
    i32 130, label %23
    i32 128, label %29
  ]

17:                                               ; preds = %13
  %18 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %19 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ip_normal_pos(i32 %20)
  %22 = call i32 @bsi_last(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %13
  %24 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %25 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ip_end_pos(i32 %26)
  %28 = call i32 @bsi_last(i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %49

29:                                               ; preds = %13
  %30 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %31 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %32 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_5__* @name_info(%struct.ivopts_data* %30, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %37 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %38 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_5__* @name_info(%struct.ivopts_data* %36, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %43 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %44 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %45 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_6__* @find_interesting_uses_op(%struct.ivopts_data* %43, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.iv_cand* %42, %struct.iv_cand** %48, align 8
  br label %83

49:                                               ; preds = %13, %23, %17
  %50 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %51 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gimple_add_tmp_var(i32 %52)
  %54 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %55 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @add_referenced_var(i32 %56)
  %58 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %59 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @unshare_expr(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %66 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @unshare_expr(i32 %69)
  %71 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %72 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %75 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %79 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %78, i32 0, i32 2
  %80 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %81 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %80, i32 0, i32 1
  %82 = call i32 @create_iv(i32 %64, i32 %70, i32 %73, i32 %76, i32* %5, i32 %77, i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %49, %29, %12
  ret void
}

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @ip_normal_pos(i32) #1

declare dso_local i32 @ip_end_pos(i32) #1

declare dso_local %struct.TYPE_5__* @name_info(%struct.ivopts_data*, i32) #1

declare dso_local %struct.TYPE_6__* @find_interesting_uses_op(%struct.ivopts_data*, i32) #1

declare dso_local i32 @gimple_add_tmp_var(i32) #1

declare dso_local i32 @add_referenced_var(i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @create_iv(i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
