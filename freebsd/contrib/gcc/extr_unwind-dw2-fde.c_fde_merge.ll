; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.fde_vector = type { i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i64 (%struct.object*, i32*, i32*)*, %struct.fde_vector*, %struct.fde_vector*)* @fde_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fde_merge(%struct.object* %0, i64 (%struct.object*, i32*, i32*)* %1, %struct.fde_vector* %2, %struct.fde_vector* %3) #0 {
  %5 = alloca %struct.object*, align 8
  %6 = alloca i64 (%struct.object*, i32*, i32*)*, align 8
  %7 = alloca %struct.fde_vector*, align 8
  %8 = alloca %struct.fde_vector*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.object* %0, %struct.object** %5, align 8
  store i64 (%struct.object*, i32*, i32*)* %1, i64 (%struct.object*, i32*, i32*)** %6, align 8
  store %struct.fde_vector* %2, %struct.fde_vector** %7, align 8
  store %struct.fde_vector* %3, %struct.fde_vector** %8, align 8
  %12 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %13 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %4
  %18 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %19 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %74, %17
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %10, align 8
  %24 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %25 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %48, %21
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64 (%struct.object*, i32*, i32*)*, i64 (%struct.object*, i32*, i32*)** %6, align 8
  %35 = load %struct.object*, %struct.object** %5, align 8
  %36 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %37 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 %34(%struct.object* %35, i32* %42, i32* %43)
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %33, %30
  %47 = phi i1 [ false, %30 ], [ %45, %33 ]
  br i1 %47, label %48, label %65

48:                                               ; preds = %46
  %49 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %50 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %57 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  store i32* %55, i32** %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %9, align 8
  br label %30

65:                                               ; preds = %46
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %68 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  store i32* %66, i32** %73, align 8
  br label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %10, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %21, label %77

77:                                               ; preds = %74
  %78 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %79 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %82 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %77, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
