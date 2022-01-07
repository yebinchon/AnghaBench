; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__annotate_decay_histogram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__annotate_decay_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.annotation = type { i32 }
%struct.sym_hist = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol__annotate_decay_histogram(%struct.symbol* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca %struct.sym_hist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.symbol*, %struct.symbol** %3, align 8
  %10 = call %struct.annotation* @symbol__annotation(%struct.symbol* %9)
  store %struct.annotation* %10, %struct.annotation** %5, align 8
  %11 = load %struct.annotation*, %struct.annotation** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.sym_hist* @annotation__histogram(%struct.annotation* %11, i32 %12)
  store %struct.sym_hist* %13, %struct.sym_hist** %6, align 8
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = call i32 @symbol__size(%struct.symbol* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %17 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %24 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 7
  %31 = sdiv i32 %30, 8
  %32 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %33 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %39 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %47 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %18

53:                                               ; preds = %18
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local %struct.sym_hist* @annotation__histogram(%struct.annotation*, i32) #1

declare dso_local i32 @symbol__size(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
