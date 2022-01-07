; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__free_source_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__free_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.source_line* }
%struct.source_line = type { %struct.source_line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, i32)* @symbol__free_source_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symbol__free_source_line(%struct.symbol* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca %struct.source_line*, align 8
  %7 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.symbol*, %struct.symbol** %3, align 8
  %9 = call %struct.annotation* @symbol__annotation(%struct.symbol* %8)
  store %struct.annotation* %9, %struct.annotation** %5, align 8
  %10 = load %struct.annotation*, %struct.annotation** %5, align 8
  %11 = getelementptr inbounds %struct.annotation, %struct.annotation* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.source_line*, %struct.source_line** %13, align 8
  store %struct.source_line* %14, %struct.source_line** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.source_line*, %struct.source_line** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.source_line, %struct.source_line* %20, i64 %22
  %24 = getelementptr inbounds %struct.source_line, %struct.source_line* %23, i32 0, i32 0
  %25 = load %struct.source_line*, %struct.source_line** %24, align 8
  %26 = call i32 @free(%struct.source_line* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.source_line*, %struct.source_line** %6, align 8
  %32 = call i32 @free(%struct.source_line* %31)
  %33 = load %struct.annotation*, %struct.annotation** %5, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.source_line* null, %struct.source_line** %36, align 8
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @free(%struct.source_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
