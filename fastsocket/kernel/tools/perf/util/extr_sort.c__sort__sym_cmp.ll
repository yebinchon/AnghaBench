; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c__sort__sym_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c__sort__sym_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.symbol*, i64, i64)* @_sort__sym_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sort__sym_cmp(%struct.symbol* %0, %struct.symbol* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.symbol* %1, %struct.symbol** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.symbol*, %struct.symbol** %6, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.symbol*, %struct.symbol** %7, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %4
  %16 = load %struct.symbol*, %struct.symbol** %6, align 8
  %17 = load %struct.symbol*, %struct.symbol** %7, align 8
  %18 = call i32 @cmp_null(%struct.symbol* %16, %struct.symbol* %17)
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.symbol*, %struct.symbol** %6, align 8
  %21 = load %struct.symbol*, %struct.symbol** %7, align 8
  %22 = icmp eq %struct.symbol* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %43

24:                                               ; preds = %19
  %25 = load %struct.symbol*, %struct.symbol** %6, align 8
  %26 = icmp ne %struct.symbol* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.symbol*, %struct.symbol** %7, align 8
  %33 = icmp ne %struct.symbol* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.symbol*, %struct.symbol** %7, align 8
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %23, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @cmp_null(%struct.symbol*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
