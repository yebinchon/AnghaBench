; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__alloc_hist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__alloc_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.symbol = type { i32 }
%struct.annotation = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__alloc_hist(%struct.symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.annotation*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call %struct.annotation* @symbol__annotation(%struct.symbol* %7)
  store %struct.annotation* %8, %struct.annotation** %4, align 8
  %9 = load %struct.symbol*, %struct.symbol** %3, align 8
  %10 = call i64 @symbol__size(%struct.symbol* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @SIZE_MAX, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = udiv i64 %14, 4
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = mul i64 %19, 4
  %21 = add i64 4, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @SIZE_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 24
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %25, %27
  %29 = icmp ugt i64 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %63

31:                                               ; preds = %18
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_3__* @zalloc(i32 %37)
  %39 = load %struct.annotation*, %struct.annotation** %4, align 8
  %40 = getelementptr inbounds %struct.annotation, %struct.annotation* %39, i32 0, i32 0
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.annotation*, %struct.annotation** %4, align 8
  %42 = getelementptr inbounds %struct.annotation, %struct.annotation* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp eq %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %63

46:                                               ; preds = %31
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.annotation*, %struct.annotation** %4, align 8
  %49 = getelementptr inbounds %struct.annotation, %struct.annotation* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.annotation*, %struct.annotation** %4, align 8
  %55 = getelementptr inbounds %struct.annotation, %struct.annotation* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load %struct.annotation*, %struct.annotation** %4, align 8
  %59 = getelementptr inbounds %struct.annotation, %struct.annotation* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %46, %45, %30, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @symbol__size(%struct.symbol*) #1

declare dso_local %struct.TYPE_3__* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
