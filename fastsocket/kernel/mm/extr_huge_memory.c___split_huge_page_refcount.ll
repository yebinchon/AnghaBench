; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c___split_huge_page_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c___split_huge_page_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, i32, i64, i32 }
%struct.zone = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@PAGE_FLAGS_CHECK_AT_PREP = common dso_local global i32 0, align 4
@__PG_HWPOISON = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i64 0, align 8
@PG_swapbacked = common dso_local global i64 0, align 8
@PG_mlocked = common dso_local global i64 0, align 8
@PG_uptodate = common dso_local global i64 0, align 8
@PG_dirty = common dso_local global i64 0, align 8
@NR_ANON_TRANSPARENT_HUGEPAGES = common dso_local global i32 0, align 4
@NR_ANON_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @__split_huge_page_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_huge_page_refcount(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call %struct.zone* @page_zone(%struct.page* %8)
  store %struct.zone* %9, %struct.zone** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.zone*, %struct.zone** %4, align 8
  %11 = getelementptr inbounds %struct.zone, %struct.zone* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @compound_lock(%struct.page* %13)
  %15 = load i32, i32* @HPAGE_PMD_NR, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %148, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %151

20:                                               ; preds = %17
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page, %struct.page* %21, i64 %23
  store %struct.page* %24, %struct.page** %6, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i64 @page_mapcount(%struct.page* %25)
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i64 @page_mapcount(%struct.page* %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 2
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = call i64 @page_mapcount(%struct.page* %46)
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i64 @page_mapcount(%struct.page* %48)
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 1
  %52 = load %struct.page*, %struct.page** %6, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 2
  %54 = call i32 @atomic_add(i64 %51, i32* %53)
  %55 = call i32 (...) @smp_mb()
  %56 = load i32, i32* @PAGE_FLAGS_CHECK_AT_PREP, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* @__PG_HWPOISON, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.page*, %struct.page** %2, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @PG_referenced, align 8
  %69 = shl i64 1, %68
  %70 = load i64, i64* @PG_swapbacked, align 8
  %71 = shl i64 1, %70
  %72 = or i64 %69, %71
  %73 = load i64, i64* @PG_mlocked, align 8
  %74 = shl i64 1, %73
  %75 = or i64 %72, %74
  %76 = load i64, i64* @PG_uptodate, align 8
  %77 = shl i64 1, %76
  %78 = or i64 %75, %77
  %79 = and i64 %67, %78
  %80 = load %struct.page*, %struct.page** %6, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = or i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  %86 = load i64, i64* @PG_dirty, align 8
  %87 = shl i64 1, %86
  %88 = load %struct.page*, %struct.page** %6, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = or i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  %94 = call i32 (...) @smp_wmb()
  %95 = load %struct.page*, %struct.page** %2, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.page*, %struct.page** %6, align 8
  %99 = getelementptr inbounds %struct.page, %struct.page* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.page*, %struct.page** %6, align 8
  %101 = getelementptr inbounds %struct.page, %struct.page* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.page*, %struct.page** %2, align 8
  %105 = getelementptr inbounds %struct.page, %struct.page* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.page*, %struct.page** %6, align 8
  %108 = getelementptr inbounds %struct.page, %struct.page* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.page*, %struct.page** %2, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.page*, %struct.page** %6, align 8
  %116 = getelementptr inbounds %struct.page, %struct.page* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load %struct.page*, %struct.page** %6, align 8
  %118 = call i32 @PageAnon(%struct.page* %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @BUG_ON(i32 %121)
  %123 = load %struct.page*, %struct.page** %6, align 8
  %124 = call i32 @PageUptodate(%struct.page* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @BUG_ON(i32 %127)
  %129 = load %struct.page*, %struct.page** %6, align 8
  %130 = call i32 @PageDirty(%struct.page* %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @BUG_ON(i32 %133)
  %135 = load %struct.page*, %struct.page** %6, align 8
  %136 = call i32 @PageSwapBacked(%struct.page* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @BUG_ON(i32 %139)
  %141 = load %struct.page*, %struct.page** %6, align 8
  %142 = load %struct.page*, %struct.page** %2, align 8
  %143 = call i32 @mem_cgroup_split_hugepage_commit(%struct.page* %141, %struct.page* %142)
  %144 = load %struct.zone*, %struct.zone** %4, align 8
  %145 = load %struct.page*, %struct.page** %2, align 8
  %146 = load %struct.page*, %struct.page** %6, align 8
  %147 = call i32 @lru_add_page_tail(%struct.zone* %144, %struct.page* %145, %struct.page* %146)
  br label %148

148:                                              ; preds = %20
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %3, align 4
  br label %17

151:                                              ; preds = %17
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.page*, %struct.page** %2, align 8
  %154 = getelementptr inbounds %struct.page, %struct.page* %153, i32 0, i32 2
  %155 = call i32 @atomic_sub(i32 %152, i32* %154)
  %156 = load %struct.page*, %struct.page** %2, align 8
  %157 = getelementptr inbounds %struct.page, %struct.page* %156, i32 0, i32 2
  %158 = call i64 @atomic_read(i32* %157)
  %159 = icmp sle i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load %struct.page*, %struct.page** %2, align 8
  %163 = load i32, i32* @NR_ANON_TRANSPARENT_HUGEPAGES, align 4
  %164 = call i32 @__dec_zone_page_state(%struct.page* %162, i32 %163)
  %165 = load %struct.zone*, %struct.zone** %4, align 8
  %166 = load i32, i32* @NR_ANON_PAGES, align 4
  %167 = load i32, i32* @HPAGE_PMD_NR, align 4
  %168 = call i32 @__mod_zone_page_state(%struct.zone* %165, i32 %166, i32 %167)
  %169 = load %struct.page*, %struct.page** %2, align 8
  %170 = call i32 @ClearPageCompound(%struct.page* %169)
  %171 = load %struct.page*, %struct.page** %2, align 8
  %172 = call i32 @compound_unlock(%struct.page* %171)
  %173 = load %struct.zone*, %struct.zone** %4, align 8
  %174 = getelementptr inbounds %struct.zone, %struct.zone* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock_irq(i32* %174)
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %192, %151
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @HPAGE_PMD_NR, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load %struct.page*, %struct.page** %2, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.page, %struct.page* %181, i64 %183
  store %struct.page* %184, %struct.page** %7, align 8
  %185 = load %struct.page*, %struct.page** %7, align 8
  %186 = call i64 @page_count(%struct.page* %185)
  %187 = icmp sle i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @BUG_ON(i32 %188)
  %190 = load %struct.page*, %struct.page** %7, align 8
  %191 = call i32 @put_page(%struct.page* %190)
  br label %192

192:                                              ; preds = %180
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %3, align 4
  br label %176

195:                                              ; preds = %176
  %196 = load %struct.page*, %struct.page** %2, align 8
  %197 = call i64 @page_count(%struct.page* %196)
  %198 = icmp sle i64 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @BUG_ON(i32 %199)
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @compound_lock(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @mem_cgroup_split_hugepage_commit(%struct.page*, %struct.page*) #1

declare dso_local i32 @lru_add_page_tail(%struct.zone*, %struct.page*, %struct.page*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @__dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i32) #1

declare dso_local i32 @ClearPageCompound(%struct.page*) #1

declare dso_local i32 @compound_unlock(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
