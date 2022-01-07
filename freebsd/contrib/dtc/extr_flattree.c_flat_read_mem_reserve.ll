; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_mem_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_mem_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { i32 }
%struct.inbuf = type { i32 }
%struct.fdt_reserve_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reserve_info* (%struct.inbuf*)* @flat_read_mem_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reserve_info* @flat_read_mem_reserve(%struct.inbuf* %0) #0 {
  %2 = alloca %struct.inbuf*, align 8
  %3 = alloca %struct.reserve_info*, align 8
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.fdt_reserve_entry, align 8
  store %struct.inbuf* %0, %struct.inbuf** %2, align 8
  store %struct.reserve_info* null, %struct.reserve_info** %3, align 8
  br label %6

6:                                                ; preds = %1, %23
  %7 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %8 = call i32 @flat_read_chunk(%struct.inbuf* %7, %struct.fdt_reserve_entry* %5, i32 16)
  %9 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i8* @fdt64_to_cpu(i64 %10)
  %12 = ptrtoint i8* %11 to i64
  %13 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i8* @fdt64_to_cpu(i64 %15)
  %17 = ptrtoint i8* %16 to i64
  %18 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %32

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.reserve_info* @build_reserve_entry(i64 %25, i64 %27)
  store %struct.reserve_info* %28, %struct.reserve_info** %4, align 8
  %29 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %30 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  %31 = call %struct.reserve_info* @add_reserve_entry(%struct.reserve_info* %29, %struct.reserve_info* %30)
  store %struct.reserve_info* %31, %struct.reserve_info** %3, align 8
  br label %6

32:                                               ; preds = %22
  %33 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  ret %struct.reserve_info* %33
}

declare dso_local i32 @flat_read_chunk(%struct.inbuf*, %struct.fdt_reserve_entry*, i32) #1

declare dso_local i8* @fdt64_to_cpu(i64) #1

declare dso_local %struct.reserve_info* @build_reserve_entry(i64, i64) #1

declare dso_local %struct.reserve_info* @add_reserve_entry(%struct.reserve_info*, %struct.reserve_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
