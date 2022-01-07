; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort__sym_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort__sym_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, %struct.hist_entry*)* @sort__sym_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sort__sym_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %24 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %3, align 8
  br label %84

27:                                               ; preds = %13, %2
  %28 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %45 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i64 @cmp_null(%struct.TYPE_7__* %43, %struct.TYPE_7__* %47)
  store i64 %48, i64* %3, align 8
  br label %84

49:                                               ; preds = %33
  %50 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %51 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %55 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp eq %struct.TYPE_7__* %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i64 0, i64* %3, align 8
  br label %84

60:                                               ; preds = %49
  %61 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %62 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %68 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %74 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %78 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @_sort__sym_cmp(%struct.TYPE_7__* %76, %struct.TYPE_7__* %80, i32 %81, i32 %82)
  store i64 %83, i64* %3, align 8
  br label %84

84:                                               ; preds = %60, %59, %39, %19
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i64 @cmp_null(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i64 @_sort__sym_cmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
