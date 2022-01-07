; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flat_read_mem_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flat_read_mem_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { i32 }
%struct.inbuf = type { i8* }
%struct.fdt_reserve_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reserve_info* (%struct.inbuf*)* @flat_read_mem_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reserve_info* @flat_read_mem_reserve(%struct.inbuf* %0) #0 {
  %2 = alloca %struct.inbuf*, align 8
  %3 = alloca %struct.reserve_info*, align 8
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fdt_reserve_entry, align 8
  store %struct.inbuf* %0, %struct.inbuf** %2, align 8
  store %struct.reserve_info* null, %struct.reserve_info** %3, align 8
  %7 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %8 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %1, %27
  %11 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %12 = call i32 @flat_read_chunk(%struct.inbuf* %11, %struct.fdt_reserve_entry* %6, i32 16)
  %13 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i8* @fdt64_to_cpu(i64 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @fdt64_to_cpu(i64 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %36

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.reserve_info* @build_reserve_entry(i64 %29, i64 %31, i32* null)
  store %struct.reserve_info* %32, %struct.reserve_info** %4, align 8
  %33 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %34 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  %35 = call %struct.reserve_info* @add_reserve_entry(%struct.reserve_info* %33, %struct.reserve_info* %34)
  store %struct.reserve_info* %35, %struct.reserve_info** %3, align 8
  br label %10

36:                                               ; preds = %26
  %37 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  ret %struct.reserve_info* %37
}

declare dso_local i32 @flat_read_chunk(%struct.inbuf*, %struct.fdt_reserve_entry*, i32) #1

declare dso_local i8* @fdt64_to_cpu(i64) #1

declare dso_local %struct.reserve_info* @build_reserve_entry(i64, i64, i32*) #1

declare dso_local %struct.reserve_info* @add_reserve_entry(%struct.reserve_info*, %struct.reserve_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
