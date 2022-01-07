; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_determine_seq_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_determine_seq_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i8* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@seq_blocks = common dso_local global %struct.TYPE_5__* null, align 8
@pattern_seqs = common dso_local global %struct.TYPE_7__* null, align 8
@seq_call_cost = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @determine_seq_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_seq_blocks() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_6__**, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @seq_blocks, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pattern_seqs, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store %struct.TYPE_6__** %6, %struct.TYPE_6__*** %2, align 8
  br label %7

7:                                                ; preds = %111, %18, %0
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %126

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @seq_call_cost, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store %struct.TYPE_6__** %21, %struct.TYPE_6__*** %2, align 8
  br label %7

22:                                               ; preds = %11
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seq_blocks, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seq_blocks, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %25, %22
  %35 = call i64 @xmalloc(i32 4)
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %1, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** @NULL_RTX, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seq_blocks, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** @seq_blocks, align 8
  br label %111

52:                                               ; preds = %25
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seq_blocks, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %1, align 8
  br label %54

54:                                               ; preds = %106, %52
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %110

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %110

67:                                               ; preds = %57
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %76, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %72, %67
  %84 = call i64 @xmalloc(i32 4)
  %85 = inttoptr i64 %84 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %4, align 8
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** @NULL_RTX, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %104, align 8
  br label %105

105:                                              ; preds = %83, %72
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %1, align 8
  br label %54

110:                                              ; preds = %66, %54
  br label %111

111:                                              ; preds = %110, %34
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %3, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %125, align 8
  br label %7

126:                                              ; preds = %7
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
