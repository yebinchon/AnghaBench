; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_get_block_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_get_block_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**, i32)* @mc_get_block_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_get_block_count(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %10 = icmp ne %struct.TYPE_3__** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %45, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp eq i64 %39, %41
  br label %43

43:                                               ; preds = %32, %28
  %44 = phi i1 [ false, %28 ], [ %42, %32 ]
  br i1 %44, label %45, label %54

45:                                               ; preds = %43
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  br label %28

54:                                               ; preds = %43
  br label %13

55:                                               ; preds = %13
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
