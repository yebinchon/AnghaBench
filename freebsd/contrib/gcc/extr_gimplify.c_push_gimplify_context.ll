; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_push_gimplify_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_push_gimplify_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimplify_ctx = type { i32, %struct.gimplify_ctx* }

@gimplify_ctxp = common dso_local global %struct.gimplify_ctx* null, align 8
@optimize = common dso_local global i64 0, align 8
@gimple_tree_hash = common dso_local global i32 0, align 4
@gimple_tree_eq = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_gimplify_context() #0 {
  %1 = alloca %struct.gimplify_ctx*, align 8
  %2 = call i64 @xcalloc(i32 1, i32 16)
  %3 = inttoptr i64 %2 to %struct.gimplify_ctx*
  store %struct.gimplify_ctx* %3, %struct.gimplify_ctx** %1, align 8
  %4 = load %struct.gimplify_ctx*, %struct.gimplify_ctx** @gimplify_ctxp, align 8
  %5 = load %struct.gimplify_ctx*, %struct.gimplify_ctx** %1, align 8
  %6 = getelementptr inbounds %struct.gimplify_ctx, %struct.gimplify_ctx* %5, i32 0, i32 1
  store %struct.gimplify_ctx* %4, %struct.gimplify_ctx** %6, align 8
  %7 = load i64, i64* @optimize, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @gimple_tree_hash, align 4
  %11 = load i32, i32* @gimple_tree_eq, align 4
  %12 = load i32, i32* @free, align 4
  %13 = call i32 @htab_create(i32 1000, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.gimplify_ctx*, %struct.gimplify_ctx** %1, align 8
  %15 = getelementptr inbounds %struct.gimplify_ctx, %struct.gimplify_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %9, %0
  %17 = load %struct.gimplify_ctx*, %struct.gimplify_ctx** %1, align 8
  store %struct.gimplify_ctx* %17, %struct.gimplify_ctx** @gimplify_ctxp, align 8
  ret void
}

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
