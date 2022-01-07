; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_mfsplay_tree_rebalance_helper2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_mfsplay_tree_rebalance_helper2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__**, i32, i32)* @mfsplay_tree_rebalance_helper2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @mfsplay_tree_rebalance_helper2(%struct.TYPE_4__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub i32 %10, %11
  %13 = udiv i32 %12, 2
  %14 = add i32 %9, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 1
  %29 = call %struct.TYPE_4__* @mfsplay_tree_rebalance_helper2(%struct.TYPE_4__** %25, i32 %26, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %34, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.TYPE_4__* @mfsplay_tree_rebalance_helper2(%struct.TYPE_4__** %41, i32 %43, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  br label %51

48:                                               ; preds = %35
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %50, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
