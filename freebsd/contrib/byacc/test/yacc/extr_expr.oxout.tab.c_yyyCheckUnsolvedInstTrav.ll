; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyCheckUnsolvedInstTrav.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyCheckUnsolvedInstTrav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__**, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyCheckUnsolvedInstTrav(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %8, align 8
  %23 = load i64, i64* %21, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 -1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %25, %20
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  store %struct.TYPE_3__** %39, %struct.TYPE_3__*** %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %47, %36
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64*, i64** %6, align 8
  call void @yyyCheckUnsolvedInstTrav(%struct.TYPE_3__* %49, i64* %50, i64* %51)
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i32 1
  store %struct.TYPE_3__** %53, %struct.TYPE_3__*** %7, align 8
  br label %43

54:                                               ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
