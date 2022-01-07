; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_compute_topo_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_compute_topo_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.topo_info = type { i32 }

@varinfo_t = common dso_local global i32 0, align 4
@varmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.topo_info*)* @compute_topo_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_topo_order(i32 %0, %struct.topo_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.topo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.topo_info* %1, %struct.topo_info** %4, align 8
  %7 = load i32, i32* @varinfo_t, align 4
  %8 = load i32, i32* @varmap, align 4
  %9 = call i32 @VEC_length(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.topo_info*, %struct.topo_info** %4, align 8
  %16 = getelementptr inbounds %struct.topo_info, %struct.topo_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TEST_BIT(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @find(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.topo_info*, %struct.topo_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @topo_visit(i32 %27, %struct.topo_info* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @VEC_length(i32, i32) #1

declare dso_local i32 @TEST_BIT(i32, i32) #1

declare dso_local i32 @find(i32) #1

declare dso_local i32 @topo_visit(i32, %struct.topo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
