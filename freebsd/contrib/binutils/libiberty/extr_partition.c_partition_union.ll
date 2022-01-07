; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_partition.c_partition_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_partition.c_partition_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.partition_elem* }
%struct.partition_elem = type { i32, i64, %struct.partition_elem* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition_union(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.partition_elem*, align 8
  %9 = alloca %struct.partition_elem*, align 8
  %10 = alloca %struct.partition_elem*, align 8
  %11 = alloca %struct.partition_elem*, align 8
  %12 = alloca %struct.partition_elem*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.partition_elem*, %struct.partition_elem** %16, align 8
  store %struct.partition_elem* %17, %struct.partition_elem** %8, align 8
  %18 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %18, i64 %20
  %22 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %25, i64 %27
  %29 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %113

34:                                               ; preds = %3
  %35 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %35, i64 %37
  %39 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %41, i64 %43
  %45 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %40, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %52, i64 %54
  %56 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %48, %34
  %59 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %59, i64 %61
  store %struct.partition_elem* %62, %struct.partition_elem** %9, align 8
  %63 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %63, i64 %65
  store %struct.partition_elem* %66, %struct.partition_elem** %10, align 8
  %67 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %68 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %69 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %67, i64 %71
  %73 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.partition_elem*, %struct.partition_elem** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %75, i64 %77
  %79 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %74
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %84 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %86 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %85, i32 0, i32 2
  %87 = load %struct.partition_elem*, %struct.partition_elem** %86, align 8
  store %struct.partition_elem* %87, %struct.partition_elem** %11, align 8
  br label %88

88:                                               ; preds = %96, %58
  %89 = load %struct.partition_elem*, %struct.partition_elem** %11, align 8
  %90 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %91 = icmp ne %struct.partition_elem* %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.partition_elem*, %struct.partition_elem** %11, align 8
  %95 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load %struct.partition_elem*, %struct.partition_elem** %11, align 8
  %98 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %97, i32 0, i32 2
  %99 = load %struct.partition_elem*, %struct.partition_elem** %98, align 8
  store %struct.partition_elem* %99, %struct.partition_elem** %11, align 8
  br label %88

100:                                              ; preds = %88
  %101 = load %struct.partition_elem*, %struct.partition_elem** %9, align 8
  %102 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %101, i32 0, i32 2
  %103 = load %struct.partition_elem*, %struct.partition_elem** %102, align 8
  store %struct.partition_elem* %103, %struct.partition_elem** %12, align 8
  %104 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %105 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %104, i32 0, i32 2
  %106 = load %struct.partition_elem*, %struct.partition_elem** %105, align 8
  %107 = load %struct.partition_elem*, %struct.partition_elem** %9, align 8
  %108 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %107, i32 0, i32 2
  store %struct.partition_elem* %106, %struct.partition_elem** %108, align 8
  %109 = load %struct.partition_elem*, %struct.partition_elem** %12, align 8
  %110 = load %struct.partition_elem*, %struct.partition_elem** %10, align 8
  %111 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %110, i32 0, i32 2
  store %struct.partition_elem* %109, %struct.partition_elem** %111, align 8
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %100, %32
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
