; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_increase_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_increase_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }
%struct.xen_memory_reservation = type { i64, i32, i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@frame_list = common dso_local global i8** null, align 8
@XENMEM_populate_physmap = common dso_local global i32 0, align 4
@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@balloon_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @increase_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increase_reservation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xen_memory_reservation, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = bitcast %struct.xen_memory_reservation* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 2
  %11 = load i32, i32* @DOMID_SELF, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %2, align 8
  %13 = load i8**, i8*** @frame_list, align 8
  %14 = call i64 @ARRAY_SIZE(i8** %13)
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8**, i8*** @frame_list, align 8
  %18 = call i64 @ARRAY_SIZE(i8** %17)
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = call %struct.page* (...) @balloon_first_page()
  store %struct.page* %20, %struct.page** %5, align 8
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %37, %19
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = icmp eq %struct.page* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i8* @page_to_pfn(%struct.page* %30)
  %32 = load i8**, i8*** @frame_list, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %31, i8** %34, align 8
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call %struct.page* @balloon_next_page(%struct.page* %35)
  store %struct.page* %36, %struct.page** %5, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %21

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8**, i8*** @frame_list, align 8
  %44 = call i32 @set_xen_guest_handle(i32 %42, i8** %43)
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @XENMEM_populate_physmap, align 4
  %48 = call i64 @HYPERVISOR_memory_op(i32 %47, %struct.xen_memory_reservation* %7)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %114

52:                                               ; preds = %40
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %107, %52
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = call %struct.page* (...) @balloon_retrieve()
  store %struct.page* %58, %struct.page** %5, align 8
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = icmp eq %struct.page* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call i8* @page_to_pfn(%struct.page* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %3, align 8
  %66 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %67 = call i32 @xen_feature(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @phys_to_machine_mapping_valid(i64 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %57
  %74 = phi i1 [ false, %57 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load i64, i64* %3, align 8
  %78 = load i8**, i8*** @frame_list, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @set_phys_to_machine(i64 %77, i8* %81)
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @PageHighMem(%struct.page* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @PAGE_SHIFT, align 8
  %89 = shl i64 %87, %88
  %90 = call i64 @__va(i64 %89)
  %91 = load i8**, i8*** @frame_list, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @PAGE_KERNEL, align 4
  %96 = call i32 @mfn_pte(i8* %94, i32 %95)
  %97 = call i32 @HYPERVISOR_update_va_mapping(i64 %90, i32 %96, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @BUG_ON(i32 %98)
  br label %100

100:                                              ; preds = %86, %73
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i32 @ClearPageReserved(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %5, align 8
  %104 = call i32 @init_page_count(%struct.page* %103)
  %105 = load %struct.page*, %struct.page** %5, align 8
  %106 = call i32 @__free_page(%struct.page* %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %4, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %4, align 8
  br label %53

110:                                              ; preds = %53
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 8
  br label %114

114:                                              ; preds = %110, %51
  %115 = load i64, i64* %6, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* %6, align 8
  br label %125

119:                                              ; preds = %114
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %2, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  br label %125

125:                                              ; preds = %119, %117
  %126 = phi i64 [ %118, %117 ], [ %124, %119 ]
  %127 = trunc i64 %126 to i32
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local %struct.page* @balloon_first_page(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i8* @page_to_pfn(%struct.page*) #2

declare dso_local %struct.page* @balloon_next_page(%struct.page*) #2

declare dso_local i32 @set_xen_guest_handle(i32, i8**) #2

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_memory_reservation*) #2

declare dso_local %struct.page* @balloon_retrieve(...) #2

declare dso_local i32 @xen_feature(i32) #2

declare dso_local i64 @phys_to_machine_mapping_valid(i64) #2

declare dso_local i32 @set_phys_to_machine(i64, i8*) #2

declare dso_local i32 @PageHighMem(%struct.page*) #2

declare dso_local i32 @HYPERVISOR_update_va_mapping(i64, i32, i32) #2

declare dso_local i64 @__va(i64) #2

declare dso_local i32 @mfn_pte(i8*, i32) #2

declare dso_local i32 @ClearPageReserved(%struct.page*) #2

declare dso_local i32 @init_page_count(%struct.page*) #2

declare dso_local i32 @__free_page(%struct.page*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
