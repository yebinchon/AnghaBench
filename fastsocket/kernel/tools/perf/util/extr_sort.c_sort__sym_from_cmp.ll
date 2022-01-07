; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort__sym_from_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort__sym_from_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.addr_map_symbol }
%struct.addr_map_symbol = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, %struct.hist_entry*)* @sort__sym_from_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sort__sym_from_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.addr_map_symbol*, align 8
  %7 = alloca %struct.addr_map_symbol*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.addr_map_symbol* %11, %struct.addr_map_symbol** %6, align 8
  %12 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.addr_map_symbol* %15, %struct.addr_map_symbol** %7, align 8
  %16 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %17 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %22 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %30 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %3, align 8
  br label %47

33:                                               ; preds = %20, %2
  %34 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %35 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %38 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %41 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %44 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @_sort__sym_cmp(i32 %36, i32 %39, i32 %42, i32 %45)
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %33, %25
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @_sort__sym_cmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
