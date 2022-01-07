; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_decrease_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_decrease_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }
%struct.xen_memory_reservation = type { i64, i32, i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@frame_list = common dso_local global i32* null, align 8
@GFP_BALLOON = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@INVALID_P2M_ENTRY = common dso_local global i32 0, align 4
@XENMEM_decrease_reservation = common dso_local global i32 0, align 4
@balloon_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @decrease_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrease_reservation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_memory_reservation, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast %struct.xen_memory_reservation* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 2
  %11 = load i32, i32* @DOMID_SELF, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %2, align 8
  %13 = load i32*, i32** @frame_list, align 8
  %14 = call i64 @ARRAY_SIZE(i32* %13)
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** @frame_list, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %16, %1
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_BALLOON, align 4
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %5, align 8
  %27 = icmp eq %struct.page* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  store i32 1, i32* %6, align 4
  br label %56

30:                                               ; preds = %24
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i64 @page_to_pfn(%struct.page* %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @pfn_to_mfn(i64 %33)
  %35 = load i32*, i32** @frame_list, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @scrub_page(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @PageHighMem(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = shl i64 %44, %45
  %47 = call i64 @__va(i64 %46)
  %48 = call i32 @__pte_ma(i32 0)
  %49 = call i32 @HYPERVISOR_update_va_mapping(i64 %47, i32 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @BUG_ON(i32 %50)
  br label %52

52:                                               ; preds = %43, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %20

56:                                               ; preds = %28, %20
  %57 = call i32 (...) @kmap_flush_unused()
  %58 = call i32 (...) @flush_tlb_all()
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %75, %56
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %2, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32*, i32** @frame_list, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @mfn_to_pfn(i32 %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* @INVALID_P2M_ENTRY, align 4
  %71 = call i32 @__set_phys_to_machine(i64 %69, i32 %70)
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @pfn_to_page(i64 %72)
  %74 = call i32 @balloon_append(i32 %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %59

78:                                               ; preds = %59
  %79 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** @frame_list, align 8
  %82 = call i32 @set_xen_guest_handle(i32 %80, i32* %81)
  %83 = load i64, i64* %2, align 8
  %84 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @XENMEM_decrease_reservation, align 4
  %86 = call i32 @HYPERVISOR_memory_op(i32 %85, %struct.xen_memory_reservation* %8)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %2, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load i64, i64* %2, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 8
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i64 @page_to_pfn(%struct.page*) #2

declare dso_local i32 @pfn_to_mfn(i64) #2

declare dso_local i32 @scrub_page(%struct.page*) #2

declare dso_local i32 @PageHighMem(%struct.page*) #2

declare dso_local i32 @HYPERVISOR_update_va_mapping(i64, i32, i32) #2

declare dso_local i64 @__va(i64) #2

declare dso_local i32 @__pte_ma(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @kmap_flush_unused(...) #2

declare dso_local i32 @flush_tlb_all(...) #2

declare dso_local i64 @mfn_to_pfn(i32) #2

declare dso_local i32 @__set_phys_to_machine(i64, i32) #2

declare dso_local i32 @balloon_append(i32) #2

declare dso_local i32 @pfn_to_page(i64) #2

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #2

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_memory_reservation*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
