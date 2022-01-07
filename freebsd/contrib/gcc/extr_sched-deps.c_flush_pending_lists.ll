; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_flush_pending_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_flush_pending_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i32, i32, i64, i32, i32, i32, i32 }

@REG_DEP_ANTI = common dso_local global i32 0, align 4
@REG_DEP_OUTPUT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.deps*, i32, i32, i32)* @flush_pending_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_pending_lists(%struct.deps* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.deps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.deps* %0, %struct.deps** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.deps*, %struct.deps** %5, align 8
  %14 = getelementptr inbounds %struct.deps, %struct.deps* %13, i32 0, i32 6
  %15 = load i32, i32* @REG_DEP_ANTI, align 4
  %16 = call i32 @add_dependence_list_and_free(i32 %12, i32* %14, i32 1, i32 %15)
  %17 = load %struct.deps*, %struct.deps** %5, align 8
  %18 = getelementptr inbounds %struct.deps, %struct.deps* %17, i32 0, i32 5
  %19 = call i32 @free_EXPR_LIST_list(i32* %18)
  br label %20

20:                                               ; preds = %11, %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.deps*, %struct.deps** %5, align 8
  %23 = getelementptr inbounds %struct.deps, %struct.deps* %22, i32 0, i32 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @REG_DEP_ANTI, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @REG_DEP_OUTPUT, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @add_dependence_list_and_free(i32 %21, i32* %23, i32 1, i32 %31)
  %33 = load %struct.deps*, %struct.deps** %5, align 8
  %34 = getelementptr inbounds %struct.deps, %struct.deps* %33, i32 0, i32 3
  %35 = call i32 @free_EXPR_LIST_list(i32* %34)
  %36 = load %struct.deps*, %struct.deps** %5, align 8
  %37 = getelementptr inbounds %struct.deps, %struct.deps* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.deps*, %struct.deps** %5, align 8
  %40 = getelementptr inbounds %struct.deps, %struct.deps* %39, i32 0, i32 1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @REG_DEP_ANTI, align 4
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @REG_DEP_OUTPUT, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @add_dependence_list_and_free(i32 %38, i32* %40, i32 1, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @NULL_RTX, align 4
  %52 = call i32 @alloc_INSN_LIST(i32 %50, i32 %51)
  %53 = load %struct.deps*, %struct.deps** %5, align 8
  %54 = getelementptr inbounds %struct.deps, %struct.deps* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.deps*, %struct.deps** %5, align 8
  %56 = getelementptr inbounds %struct.deps, %struct.deps* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  ret void
}

declare dso_local i32 @add_dependence_list_and_free(i32, i32*, i32, i32) #1

declare dso_local i32 @free_EXPR_LIST_list(i32*) #1

declare dso_local i32 @alloc_INSN_LIST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
