; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_loop_only_exit_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_loop_only_exit_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i64)* @loop_only_exit_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_only_exit_p(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.loop*, %struct.loop** %4, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.loop*, %struct.loop** %4, align 8
  %18 = call i32* @get_loop_body(%struct.loop* %17)
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %52, %16
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.loop*, %struct.loop** %4, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bsi_start(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %25
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bsi_end_p(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bsi_stmt(i32 %36)
  %38 = call i64 @get_call_expr_in(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @TREE_SIDE_EFFECTS(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @free(i32* %46)
  store i32 0, i32* %3, align 4
  br label %58

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48
  %50 = call i32 @bsi_next(i32* %7)
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @free(i32* %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %45, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @get_call_expr_in(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
