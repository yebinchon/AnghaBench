; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_active_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_active_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_zone = type { %struct.zone* }
%struct.zone = type { i64, i32 }
%struct.scan_control = type { i32, i32 }
%struct.page = type { i32 }
%struct.zone_reclaim_stat = type { i64*, i64* }

@l_hold = common dso_local global i32 0, align 4
@l_active = common dso_local global i32 0, align 4
@l_inactive = common dso_local global i32 0, align 4
@COMPACTION_BUILD = common dso_local global i32 0, align 4
@ISOLATE_ACTIVE = common dso_local global i32 0, align 4
@PGREFILL = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i64 0, align 8
@NR_ACTIVE_ANON = common dso_local global i64 0, align 8
@NR_ISOLATED_ANON = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@LRU_ACTIVE = common dso_local global i64 0, align 8
@LRU_FILE = common dso_local global i32 0, align 4
@LRU_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.mem_cgroup_zone*, %struct.scan_control*, i32, i32)* @shrink_active_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_active_list(i64 %0, %struct.mem_cgroup_zone* %1, %struct.scan_control* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem_cgroup_zone*, align 8
  %8 = alloca %struct.scan_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.zone_reclaim_stat*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.zone*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.mem_cgroup_zone* %1, %struct.mem_cgroup_zone** %7, align 8
  store %struct.scan_control* %2, %struct.scan_control** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @l_hold, align 4
  %20 = call i32 @LIST_HEAD(i32 %19)
  %21 = load i32, i32* @l_active, align 4
  %22 = call i32 @LIST_HEAD(i32 %21)
  %23 = load i32, i32* @l_inactive, align 4
  %24 = call i32 @LIST_HEAD(i32 %23)
  %25 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %7, align 8
  %26 = call %struct.zone_reclaim_stat* @get_reclaim_stat(%struct.mem_cgroup_zone* %25)
  store %struct.zone_reclaim_stat* %26, %struct.zone_reclaim_stat** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %27 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %7, align 8
  %28 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %27, i32 0, i32 0
  %29 = load %struct.zone*, %struct.zone** %28, align 8
  store %struct.zone* %29, %struct.zone** %18, align 8
  %30 = load i32, i32* @COMPACTION_BUILD, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load %struct.scan_control*, %struct.scan_control** %8, align 8
  %34 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %32, %5
  %37 = call i32 (...) @lru_add_drain()
  %38 = load %struct.zone*, %struct.zone** %18, align 8
  %39 = getelementptr inbounds %struct.zone, %struct.zone* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %7, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @ISOLATE_ACTIVE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @isolate_pages(i64 %41, %struct.mem_cgroup_zone* %42, i32* @l_hold, i64* %12, i32 %43, i32 %44, i32 1, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.scan_control*, %struct.scan_control** %8, align 8
  %48 = call i64 @global_reclaim(%struct.scan_control* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.zone*, %struct.zone** %18, align 8
  %53 = getelementptr inbounds %struct.zone, %struct.zone* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %50, %36
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %15, align 8
  %59 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %57
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* @PGREFILL, align 4
  %67 = load %struct.zone*, %struct.zone** %18, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @__count_zone_vm_events(i32 %66, %struct.zone* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load %struct.zone*, %struct.zone** %18, align 8
  %74 = load i64, i64* @NR_ACTIVE_FILE, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 0, %75
  %77 = call i32 @__mod_zone_page_state(%struct.zone* %73, i64 %74, i64 %76)
  br label %84

78:                                               ; preds = %56
  %79 = load %struct.zone*, %struct.zone** %18, align 8
  %80 = load i64, i64* @NR_ACTIVE_ANON, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 0, %81
  %83 = call i32 @__mod_zone_page_state(%struct.zone* %79, i64 %80, i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.zone*, %struct.zone** %18, align 8
  %86 = load i64, i64* @NR_ISOLATED_ANON, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @__mod_zone_page_state(%struct.zone* %85, i64 %89, i64 %90)
  %92 = load %struct.zone*, %struct.zone** %18, align 8
  %93 = getelementptr inbounds %struct.zone, %struct.zone* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock_irq(i32* %93)
  br label %95

95:                                               ; preds = %140, %135, %112, %84
  %96 = call i32 @list_empty(i32* @l_hold)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = call i32 (...) @cond_resched()
  %101 = call %struct.page* @lru_to_page(i32* @l_hold)
  store %struct.page* %101, %struct.page** %14, align 8
  %102 = load %struct.page*, %struct.page** %14, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 0
  %104 = call i32 @list_del(i32* %103)
  %105 = load %struct.page*, %struct.page** %14, align 8
  %106 = call i32 @page_evictable(%struct.page* %105, i32* null)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load %struct.page*, %struct.page** %14, align 8
  %114 = call i32 @putback_lru_page(%struct.page* %113)
  br label %95

115:                                              ; preds = %99
  %116 = load %struct.page*, %struct.page** %14, align 8
  %117 = load %struct.scan_control*, %struct.scan_control** %8, align 8
  %118 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @page_referenced(%struct.page* %116, i32 0, i32 %119, i64* %13)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load %struct.page*, %struct.page** %14, align 8
  %124 = call i64 @hpage_nr_pages(%struct.page* %123)
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @VM_EXEC, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %122
  %132 = load %struct.page*, %struct.page** %14, align 8
  %133 = call i64 @page_is_file_cache(%struct.page* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.page*, %struct.page** %14, align 8
  %137 = getelementptr inbounds %struct.page, %struct.page* %136, i32 0, i32 0
  %138 = call i32 @list_add(i32* %137, i32* @l_active)
  br label %95

139:                                              ; preds = %131, %122
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.page*, %struct.page** %14, align 8
  %142 = call i32 @ClearPageActive(%struct.page* %141)
  %143 = load %struct.page*, %struct.page** %14, align 8
  %144 = getelementptr inbounds %struct.page, %struct.page* %143, i32 0, i32 0
  %145 = call i32 @list_add(i32* %144, i32* @l_inactive)
  br label %95

146:                                              ; preds = %95
  %147 = load %struct.zone*, %struct.zone** %18, align 8
  %148 = getelementptr inbounds %struct.zone, %struct.zone* %147, i32 0, i32 1
  %149 = call i32 @spin_lock_irq(i32* %148)
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %15, align 8
  %152 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, %150
  store i64 %158, i64* %156, align 8
  %159 = load %struct.zone*, %struct.zone** %18, align 8
  %160 = load i64, i64* @LRU_ACTIVE, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @LRU_FILE, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = call i32 @move_active_pages_to_lru(%struct.zone* %159, i32* @l_active, i64 %165)
  %167 = load %struct.zone*, %struct.zone** %18, align 8
  %168 = load i64, i64* @LRU_BASE, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @LRU_FILE, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %168, %172
  %174 = call i32 @move_active_pages_to_lru(%struct.zone* %167, i32* @l_inactive, i64 %173)
  %175 = load %struct.zone*, %struct.zone** %18, align 8
  %176 = load i64, i64* @NR_ISOLATED_ANON, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = load i64, i64* %11, align 8
  %181 = sub i64 0, %180
  %182 = call i32 @__mod_zone_page_state(%struct.zone* %175, i64 %179, i64 %181)
  %183 = load %struct.zone*, %struct.zone** %18, align 8
  %184 = getelementptr inbounds %struct.zone, %struct.zone* %183, i32 0, i32 1
  %185 = call i32 @spin_unlock_irq(i32* %184)
  %186 = load i64, i64* %12, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @trace_mm_pagereclaim_shrinkactive(i64 %186, i32 %187, i32 %188)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.zone_reclaim_stat* @get_reclaim_stat(%struct.mem_cgroup_zone*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @isolate_pages(i64, %struct.mem_cgroup_zone*, i32*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @global_reclaim(%struct.scan_control*) #1

declare dso_local i32 @__count_zone_vm_events(i32, %struct.zone*, i64) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i64, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.page* @lru_to_page(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_evictable(%struct.page*, i32*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

declare dso_local i64 @page_referenced(%struct.page*, i32, i32, i64*) #1

declare dso_local i64 @hpage_nr_pages(%struct.page*) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @move_active_pages_to_lru(%struct.zone*, i32*, i64) #1

declare dso_local i32 @trace_mm_pagereclaim_shrinkactive(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
