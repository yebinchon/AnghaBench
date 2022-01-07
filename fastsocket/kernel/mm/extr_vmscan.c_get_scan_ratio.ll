; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_get_scan_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_get_scan_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_zone = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scan_control = type { i64 }
%struct.zone_reclaim_stat = type { i64*, i32* }

@LRU_ACTIVE_ANON = common dso_local global i32 0, align 4
@LRU_INACTIVE_ANON = common dso_local global i32 0, align 4
@LRU_ACTIVE_FILE = common dso_local global i32 0, align 4
@LRU_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup_zone*, %struct.scan_control*, i64*)* @get_scan_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_scan_ratio(%struct.mem_cgroup_zone* %0, %struct.scan_control* %1, i64* %2) #0 {
  %4 = alloca %struct.mem_cgroup_zone*, align 8
  %5 = alloca %struct.scan_control*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.zone_reclaim_stat*, align 8
  store %struct.mem_cgroup_zone* %0, %struct.mem_cgroup_zone** %4, align 8
  store %struct.scan_control* %1, %struct.scan_control** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %16 = call %struct.zone_reclaim_stat* @get_reclaim_stat(%struct.mem_cgroup_zone* %15)
  store %struct.zone_reclaim_stat* %16, %struct.zone_reclaim_stat** %14, align 8
  %17 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %18 = load i32, i32* @LRU_ACTIVE_ANON, align 4
  %19 = call i64 @zone_nr_lru_pages(%struct.mem_cgroup_zone* %17, i32 %18)
  %20 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %21 = load i32, i32* @LRU_INACTIVE_ANON, align 4
  %22 = call i64 @zone_nr_lru_pages(%struct.mem_cgroup_zone* %20, i32 %21)
  %23 = add i64 %19, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %25 = load i32, i32* @LRU_ACTIVE_FILE, align 4
  %26 = call i64 @zone_nr_lru_pages(%struct.mem_cgroup_zone* %24, i32 %25)
  %27 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %28 = load i32, i32* @LRU_INACTIVE_FILE, align 4
  %29 = call i64 @zone_nr_lru_pages(%struct.mem_cgroup_zone* %27, i32 %28)
  %30 = add i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %32 = call i64 @global_reclaim(%struct.scan_control* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %3
  %35 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @NR_FREE_PAGES, align 4
  %39 = call i64 @zone_page_state(%struct.TYPE_3__* %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %44 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i64 @high_wmark_pages(%struct.TYPE_3__* %45)
  %47 = icmp ule i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 100, i64* %53, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 0, i64* %55, align 8
  br label %184

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %3
  %58 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %59 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = udiv i64 %63, 4
  %65 = icmp ugt i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %57
  %70 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %71 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_irq(i32* %73)
  %75 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %76 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = udiv i64 %79, 2
  store i64 %80, i64* %78, align 8
  %81 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %82 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 2
  store i32 %86, i32* %84, align 4
  %87 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %88 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_irq(i32* %90)
  br label %92

92:                                               ; preds = %69, %57
  %93 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %94 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = udiv i64 %98, 4
  %100 = icmp ugt i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %92
  %105 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %106 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_irq(i32* %108)
  %110 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %111 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = udiv i64 %114, 2
  store i64 %115, i64* %113, align 8
  %116 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %117 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %119, align 4
  %122 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %4, align 8
  %123 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = call i32 @spin_unlock_irq(i32* %125)
  br label %127

127:                                              ; preds = %104, %92
  %128 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %129 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %10, align 8
  %131 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %132 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 200, %133
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %137 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 1
  %142 = mul i64 %135, %141
  store i64 %142, i64* %12, align 8
  %143 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %144 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %12, align 8
  %151 = udiv i64 %150, %149
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %154 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  %159 = mul i64 %152, %158
  store i64 %159, i64* %13, align 8
  %160 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %14, align 8
  %161 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %13, align 8
  %168 = udiv i64 %167, %166
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %12, align 8
  %170 = mul i64 100, %169
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %171, %172
  %174 = add i64 %173, 1
  %175 = udiv i64 %170, %174
  %176 = load i64*, i64** %6, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 %175, i64* %177, align 8
  %178 = load i64*, i64** %6, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 100, %180
  %182 = load i64*, i64** %6, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 1
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %127, %51
  ret void
}

declare dso_local %struct.zone_reclaim_stat* @get_reclaim_stat(%struct.mem_cgroup_zone*) #1

declare dso_local i64 @zone_nr_lru_pages(%struct.mem_cgroup_zone*, i32) #1

declare dso_local i64 @global_reclaim(%struct.scan_control*) #1

declare dso_local i64 @zone_page_state(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @high_wmark_pages(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
