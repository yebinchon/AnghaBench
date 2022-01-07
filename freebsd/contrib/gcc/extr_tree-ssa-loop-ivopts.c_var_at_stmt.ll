; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_var_at_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_var_at_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.iv_cand = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, %struct.iv_cand*, i32)* @var_at_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_at_stmt(%struct.loop* %0, %struct.iv_cand* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  %7 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store %struct.iv_cand* %1, %struct.iv_cand** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.loop*, %struct.loop** %5, align 8
  %9 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @stmt_after_increment(%struct.loop* %8, %struct.iv_cand* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %15 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %19 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @stmt_after_increment(%struct.loop*, %struct.iv_cand*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
