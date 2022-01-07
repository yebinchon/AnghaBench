; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_lv_adjust_loop_header_phi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_lv_adjust_loop_header_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_5__*)* @tree_lv_adjust_loop_header_phi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_lv_adjust_loop_header_phi(i32 %0, i32 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_5__* @find_edge(i32 %13, i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @phi_nodes(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @phi_nodes(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %42, %4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %47

32:                                               ; preds = %30
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @PHI_ARG_DEF(i64 %33, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = call i32 @add_phi_arg(i64 %38, i64 %39, %struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @PHI_CHAIN(i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @PHI_CHAIN(i64 %45)
  store i64 %46, i64* %9, align 8
  br label %24

47:                                               ; preds = %30
  ret void
}

declare dso_local %struct.TYPE_5__* @find_edge(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i32 @add_phi_arg(i64, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
