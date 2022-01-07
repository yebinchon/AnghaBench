; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_compareseq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_compareseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64* }
%struct.partition = type { i64, i64, i32, i32 }

@xvec = common dso_local global i64* null, align 8
@yvec = common dso_local global i64* null, align 8
@files = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i32)* @compareseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compareseq(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.partition, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64*, i64** @xvec, align 8
  store i64* %14, i64** %11, align 8
  %15 = load i64*, i64** @yvec, align 8
  store i64* %15, i64** %12, align 8
  br label %16

16:                                               ; preds = %36, %5
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br label %34

34:                                               ; preds = %24, %20, %16
  %35 = phi i1 [ false, %20 ], [ false, %16 ], [ %33, %24 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %16

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br label %62

62:                                               ; preds = %50, %46, %42
  %63 = phi i1 [ false, %46 ], [ false, %42 ], [ %61, %50 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %9, align 8
  br label %42

69:                                               ; preds = %62
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  %89 = getelementptr inbounds i64, i64* %86, i64 %87
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  store i32 1, i32* %91, align 4
  br label %74

92:                                               ; preds = %74
  br label %141

93:                                               ; preds = %69
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  %113 = getelementptr inbounds i64, i64* %110, i64 %111
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  store i32 1, i32* %115, align 4
  br label %98

116:                                              ; preds = %98
  br label %140

117:                                              ; preds = %93
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @diag(i64 %118, i64 %119, i64 %120, i64 %121, i32 %122, %struct.partition* %13)
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  call void @compareseq(i64 %124, i64 %126, i64 %127, i64 %129, i32 %131)
  %132 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  call void @compareseq(i64 %133, i64 %134, i64 %136, i64 %137, i32 %139)
  br label %140

140:                                              ; preds = %117, %116
  br label %141

141:                                              ; preds = %140, %92
  ret void
}

declare dso_local i32 @diag(i64, i64, i64, i64, i32, %struct.partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
