; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_copy_one_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_copy_one_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i64 }

@mmlist_lock = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i32*)* @copy_one_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_one_pte(%struct.mm_struct* %0, %struct.mm_struct* %1, i32* %2, i32* %3, %struct.vm_area_struct* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @pte_present(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %99

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @pte_file(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %98, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %17, align 4
  %38 = call i64 @pte_to_swp_entry(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @swap_duplicate(i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  br label %145

47:                                               ; preds = %36
  %48 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = call i32 @list_empty(i32* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = call i32 @spin_lock(i32* @mmlist_lock)
  %55 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  %64 = call i32 @list_add(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = call i32 @spin_unlock(i32* @mmlist_lock)
  br label %67

67:                                               ; preds = %65, %47
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @is_migration_entry(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %97

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @is_write_migration_entry(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i64, i64* %16, align 8
  %84 = call i64 @is_cow_mapping(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = call i32 @make_migration_entry_read(%struct.TYPE_8__* %19)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @swp_entry_to_pte(i64 %89)
  store i32 %90, i32* %17, align 4
  %91 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @set_pte_at(%struct.mm_struct* %91, i64 %92, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %82, %77
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %32
  br label %139

99:                                               ; preds = %7
  %100 = load i64, i64* %16, align 8
  %101 = call i64 @is_cow_mapping(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @ptep_set_wrprotect(%struct.mm_struct* %104, i64 %105, i32* %106)
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @pte_wrprotect(i32 %108)
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %103, %99
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* @VM_SHARED, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @pte_mkclean(i32 %116)
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @pte_mkold(i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %121, i64 %122, i32 %123)
  store %struct.page* %124, %struct.page** %18, align 8
  %125 = load %struct.page*, %struct.page** %18, align 8
  %126 = icmp ne %struct.page* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load %struct.page*, %struct.page** %18, align 8
  %129 = call i32 @get_page(%struct.page* %128)
  %130 = load %struct.page*, %struct.page** %18, align 8
  %131 = call i32 @page_dup_rmap(%struct.page* %130)
  %132 = load i32*, i32** %15, align 8
  %133 = load %struct.page*, %struct.page** %18, align 8
  %134 = call i64 @PageAnon(%struct.page* %133)
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %127, %118
  br label %139

139:                                              ; preds = %138, %98
  %140 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @set_pte_at(%struct.mm_struct* %140, i64 %141, i32* %142, i32 %143)
  store i64 0, i64* %8, align 8
  br label %145

145:                                              ; preds = %139, %44
  %146 = load i64, i64* %8, align 8
  ret i64 %146
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_file(i32) #1

declare dso_local i64 @pte_to_swp_entry(i32) #1

declare dso_local i64 @swap_duplicate(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @is_migration_entry(i64) #1

declare dso_local i64 @is_write_migration_entry(i64) #1

declare dso_local i64 @is_cow_mapping(i64) #1

declare dso_local i32 @make_migration_entry_read(%struct.TYPE_8__*) #1

declare dso_local i32 @swp_entry_to_pte(i64) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @ptep_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_mkclean(i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
