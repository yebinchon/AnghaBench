; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_local_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_local_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.mcs_total_stat = type { i32* }

@MEM_CGROUP_STAT_CACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MCS_CACHE = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_RSS = common dso_local global i32 0, align 4
@MCS_RSS = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_FILE_MAPPED = common dso_local global i32 0, align 4
@MCS_FILE_MAPPED = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_PGPGIN_COUNT = common dso_local global i32 0, align 4
@MCS_PGPGIN = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_PGPGOUT_COUNT = common dso_local global i32 0, align 4
@MCS_PGPGOUT = common dso_local global i64 0, align 8
@do_swap_account = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_SWAPOUT = common dso_local global i32 0, align 4
@MCS_SWAP = common dso_local global i64 0, align 8
@LRU_INACTIVE_ANON = common dso_local global i32 0, align 4
@MCS_INACTIVE_ANON = common dso_local global i64 0, align 8
@LRU_ACTIVE_ANON = common dso_local global i32 0, align 4
@MCS_ACTIVE_ANON = common dso_local global i64 0, align 8
@LRU_INACTIVE_FILE = common dso_local global i32 0, align 4
@MCS_INACTIVE_FILE = common dso_local global i64 0, align 8
@LRU_ACTIVE_FILE = common dso_local global i32 0, align 4
@MCS_ACTIVE_FILE = common dso_local global i64 0, align 8
@LRU_UNEVICTABLE = common dso_local global i32 0, align 4
@MCS_UNEVICTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, %struct.mcs_total_stat*)* @mem_cgroup_get_local_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_get_local_stat(%struct.mem_cgroup* %0, %struct.mcs_total_stat* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.mcs_total_stat*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.mcs_total_stat* %1, %struct.mcs_total_stat** %4, align 8
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %7 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %6, i32 0, i32 0
  %8 = load i32, i32* @MEM_CGROUP_STAT_CACHE, align 4
  %9 = call i32 @mem_cgroup_read_stat(i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %14 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @MCS_CACHE, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 0
  %22 = load i32, i32* @MEM_CGROUP_STAT_RSS, align 4
  %23 = call i32 @mem_cgroup_read_stat(i32* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %28 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MCS_RSS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %26
  store i32 %33, i32* %31, align 4
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %35 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %34, i32 0, i32 0
  %36 = load i32, i32* @MEM_CGROUP_STAT_FILE_MAPPED, align 4
  %37 = call i32 @mem_cgroup_read_stat(i32* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %42 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MCS_FILE_MAPPED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %40
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %49 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %48, i32 0, i32 0
  %50 = load i32, i32* @MEM_CGROUP_STAT_PGPGIN_COUNT, align 4
  %51 = call i32 @mem_cgroup_read_stat(i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %54 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @MCS_PGPGIN, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %52
  store i32 %59, i32* %57, align 4
  %60 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %61 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %60, i32 0, i32 0
  %62 = load i32, i32* @MEM_CGROUP_STAT_PGPGOUT_COUNT, align 4
  %63 = call i32 @mem_cgroup_read_stat(i32* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %66 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @MCS_PGPGOUT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* @do_swap_account, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %2
  %75 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %76 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %75, i32 0, i32 0
  %77 = load i32, i32* @MEM_CGROUP_STAT_SWAPOUT, align 4
  %78 = call i32 @mem_cgroup_read_stat(i32* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %83 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @MCS_SWAP, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %81
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %74, %2
  %90 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %91 = load i32, i32* @LRU_INACTIVE_ANON, align 4
  %92 = call i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %97 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MCS_INACTIVE_ANON, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %95
  store i32 %102, i32* %100, align 4
  %103 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %104 = load i32, i32* @LRU_ACTIVE_ANON, align 4
  %105 = call i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %110 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @MCS_ACTIVE_ANON, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %108
  store i32 %115, i32* %113, align 4
  %116 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %117 = load i32, i32* @LRU_INACTIVE_FILE, align 4
  %118 = call i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %123 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @MCS_INACTIVE_FILE, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %121
  store i32 %128, i32* %126, align 4
  %129 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %130 = load i32, i32* @LRU_ACTIVE_FILE, align 4
  %131 = call i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %136 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @MCS_ACTIVE_FILE, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %134
  store i32 %141, i32* %139, align 4
  %142 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %143 = load i32, i32* @LRU_UNEVICTABLE, align 4
  %144 = call i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load %struct.mcs_total_stat*, %struct.mcs_total_stat** %4, align 8
  %149 = getelementptr inbounds %struct.mcs_total_stat, %struct.mcs_total_stat* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @MCS_UNEVICTABLE, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %147
  store i32 %154, i32* %152, align 4
  ret void
}

declare dso_local i32 @mem_cgroup_read_stat(i32*, i32) #1

declare dso_local i32 @mem_cgroup_get_local_zonestat(%struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
