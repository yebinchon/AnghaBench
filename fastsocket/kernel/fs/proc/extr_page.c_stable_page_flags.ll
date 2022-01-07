; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_page.c_stable_page_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_page.c_stable_page_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KPF_NOPAGE = common dso_local global i32 0, align 4
@KPF_MMAP = common dso_local global i32 0, align 4
@KPF_ANON = common dso_local global i32 0, align 4
@KPF_KSM = common dso_local global i32 0, align 4
@KPF_COMPOUND_HEAD = common dso_local global i32 0, align 4
@KPF_COMPOUND_TAIL = common dso_local global i32 0, align 4
@KPF_HUGE = common dso_local global i32 0, align 4
@KPF_LOCKED = common dso_local global i32 0, align 4
@PG_locked = common dso_local global i32 0, align 4
@KPF_SLAB = common dso_local global i32 0, align 4
@PG_slab = common dso_local global i32 0, align 4
@KPF_BUDDY = common dso_local global i32 0, align 4
@PG_buddy = common dso_local global i32 0, align 4
@KPF_ERROR = common dso_local global i32 0, align 4
@PG_error = common dso_local global i32 0, align 4
@KPF_DIRTY = common dso_local global i32 0, align 4
@PG_dirty = common dso_local global i32 0, align 4
@KPF_UPTODATE = common dso_local global i32 0, align 4
@PG_uptodate = common dso_local global i32 0, align 4
@KPF_WRITEBACK = common dso_local global i32 0, align 4
@PG_writeback = common dso_local global i32 0, align 4
@KPF_LRU = common dso_local global i32 0, align 4
@PG_lru = common dso_local global i32 0, align 4
@KPF_REFERENCED = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i32 0, align 4
@KPF_ACTIVE = common dso_local global i32 0, align 4
@PG_active = common dso_local global i32 0, align 4
@KPF_RECLAIM = common dso_local global i32 0, align 4
@PG_reclaim = common dso_local global i32 0, align 4
@KPF_SWAPCACHE = common dso_local global i32 0, align 4
@PG_swapcache = common dso_local global i32 0, align 4
@KPF_SWAPBACKED = common dso_local global i32 0, align 4
@PG_swapbacked = common dso_local global i32 0, align 4
@KPF_UNEVICTABLE = common dso_local global i32 0, align 4
@PG_unevictable = common dso_local global i32 0, align 4
@KPF_MLOCKED = common dso_local global i32 0, align 4
@PG_mlocked = common dso_local global i32 0, align 4
@KPF_RESERVED = common dso_local global i32 0, align 4
@PG_reserved = common dso_local global i32 0, align 4
@KPF_MAPPEDTODISK = common dso_local global i32 0, align 4
@PG_mappedtodisk = common dso_local global i32 0, align 4
@KPF_PRIVATE = common dso_local global i32 0, align 4
@PG_private = common dso_local global i32 0, align 4
@KPF_PRIVATE_2 = common dso_local global i32 0, align 4
@PG_private_2 = common dso_local global i32 0, align 4
@KPF_OWNER_PRIVATE = common dso_local global i32 0, align 4
@PG_owner_priv_1 = common dso_local global i32 0, align 4
@KPF_ARCH = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4
@KPF_HWPOISON = common dso_local global i32 0, align 4
@KPF_UNCACHED = common dso_local global i32 0, align 4
@PG_hwpoison = common dso_local global i32 0, align 4
@PG_uncached = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stable_page_flags(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = icmp ne %struct.page* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @KPF_NOPAGE, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %2, align 4
  br label %200

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @PageSlab(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i64 @page_mapped(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @KPF_MMAP, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18, %11
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i64 @PageAnon(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @KPF_ANON, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i64 @PageKsm(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @KPF_KSM, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i64 @PageHead(%struct.page* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @KPF_COMPOUND_HEAD, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = call i64 @PageTail(%struct.page* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @KPF_COMPOUND_TAIL, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.page*, %struct.page** %3, align 8
  %65 = call i64 @PageHuge(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @KPF_HUGE, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @KPF_LOCKED, align 4
  %75 = load i32, i32* @PG_locked, align 4
  %76 = call i32 @kpf_copy_bit(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @KPF_SLAB, align 4
  %81 = load i32, i32* @PG_slab, align 4
  %82 = call i32 @kpf_copy_bit(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @KPF_BUDDY, align 4
  %87 = load i32, i32* @PG_buddy, align 4
  %88 = call i32 @kpf_copy_bit(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @KPF_ERROR, align 4
  %93 = load i32, i32* @PG_error, align 4
  %94 = call i32 @kpf_copy_bit(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @KPF_DIRTY, align 4
  %99 = load i32, i32* @PG_dirty, align 4
  %100 = call i32 @kpf_copy_bit(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @KPF_UPTODATE, align 4
  %105 = load i32, i32* @PG_uptodate, align 4
  %106 = call i32 @kpf_copy_bit(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @KPF_WRITEBACK, align 4
  %111 = load i32, i32* @PG_writeback, align 4
  %112 = call i32 @kpf_copy_bit(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @KPF_LRU, align 4
  %117 = load i32, i32* @PG_lru, align 4
  %118 = call i32 @kpf_copy_bit(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @KPF_REFERENCED, align 4
  %123 = load i32, i32* @PG_referenced, align 4
  %124 = call i32 @kpf_copy_bit(i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @KPF_ACTIVE, align 4
  %129 = load i32, i32* @PG_active, align 4
  %130 = call i32 @kpf_copy_bit(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @KPF_RECLAIM, align 4
  %135 = load i32, i32* @PG_reclaim, align 4
  %136 = call i32 @kpf_copy_bit(i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @KPF_SWAPCACHE, align 4
  %141 = load i32, i32* @PG_swapcache, align 4
  %142 = call i32 @kpf_copy_bit(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @KPF_SWAPBACKED, align 4
  %147 = load i32, i32* @PG_swapbacked, align 4
  %148 = call i32 @kpf_copy_bit(i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @KPF_UNEVICTABLE, align 4
  %153 = load i32, i32* @PG_unevictable, align 4
  %154 = call i32 @kpf_copy_bit(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @KPF_MLOCKED, align 4
  %159 = load i32, i32* @PG_mlocked, align 4
  %160 = call i32 @kpf_copy_bit(i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @KPF_RESERVED, align 4
  %165 = load i32, i32* @PG_reserved, align 4
  %166 = call i32 @kpf_copy_bit(i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @KPF_MAPPEDTODISK, align 4
  %171 = load i32, i32* @PG_mappedtodisk, align 4
  %172 = call i32 @kpf_copy_bit(i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @KPF_PRIVATE, align 4
  %177 = load i32, i32* @PG_private, align 4
  %178 = call i32 @kpf_copy_bit(i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @KPF_PRIVATE_2, align 4
  %183 = load i32, i32* @PG_private_2, align 4
  %184 = call i32 @kpf_copy_bit(i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %5, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @KPF_OWNER_PRIVATE, align 4
  %189 = load i32, i32* @PG_owner_priv_1, align 4
  %190 = call i32 @kpf_copy_bit(i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @KPF_ARCH, align 4
  %195 = load i32, i32* @PG_arch_1, align 4
  %196 = call i32 @kpf_copy_bit(i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %5, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %72, %8
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageKsm(%struct.page*) #1

declare dso_local i64 @PageHead(%struct.page*) #1

declare dso_local i64 @PageTail(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @kpf_copy_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
