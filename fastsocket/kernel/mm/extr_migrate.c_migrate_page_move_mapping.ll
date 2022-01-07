; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_page_move_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_page_move_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MIGRATE_ASYNC = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@NR_SHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, %struct.page*, %struct.buffer_head*, i32)* @migrate_page_move_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_page_move_mapping(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.address_space*, %struct.address_space** %7, align 8
  %15 = icmp ne %struct.address_space* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = call i32 @page_count(%struct.page* %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %130

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %130

24:                                               ; preds = %5
  %25 = load %struct.address_space*, %struct.address_space** %7, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.address_space*, %struct.address_space** %7, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 1
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i32 @page_index(%struct.page* %30)
  %32 = call i8** @radix_tree_lookup_slot(i32* %29, i32 %31)
  store i8** %32, i8*** %13, align 8
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = call i32 @page_has_private(%struct.page* %33)
  %35 = add nsw i32 2, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i32 @page_count(%struct.page* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %24
  %41 = load i8**, i8*** %13, align 8
  %42 = call i64 @radix_tree_deref_slot(i8** %41)
  %43 = inttoptr i64 %42 to %struct.page*
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = icmp ne %struct.page* %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %24
  %47 = load %struct.address_space*, %struct.address_space** %7, align 8
  %48 = getelementptr inbounds %struct.address_space, %struct.address_space* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %130

52:                                               ; preds = %40
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @page_freeze_refs(%struct.page* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.address_space*, %struct.address_space** %7, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %130

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MIGRATE_ASYNC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @buffer_migrate_lock_buffers(%struct.buffer_head* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load %struct.page*, %struct.page** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @page_unfreeze_refs(%struct.page* %76, i32 %77)
  %79 = load %struct.address_space*, %struct.address_space** %7, align 8
  %80 = getelementptr inbounds %struct.address_space, %struct.address_space* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %130

84:                                               ; preds = %70, %67, %63
  %85 = load %struct.page*, %struct.page** %8, align 8
  %86 = call i32 @get_page(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %9, align 8
  %88 = call i64 @PageSwapCache(%struct.page* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.page*, %struct.page** %8, align 8
  %92 = call i32 @SetPageSwapCache(%struct.page* %91)
  %93 = load %struct.page*, %struct.page** %8, align 8
  %94 = load %struct.page*, %struct.page** %9, align 8
  %95 = call i32 @page_private(%struct.page* %94)
  %96 = call i32 @set_page_private(%struct.page* %93, i32 %95)
  br label %97

97:                                               ; preds = %90, %84
  %98 = load i8**, i8*** %13, align 8
  %99 = load %struct.page*, %struct.page** %8, align 8
  %100 = call i32 @radix_tree_replace_slot(i8** %98, %struct.page* %99)
  %101 = load %struct.page*, %struct.page** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @page_unfreeze_refs(%struct.page* %101, i32 %102)
  %104 = load %struct.page*, %struct.page** %9, align 8
  %105 = call i32 @__put_page(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %9, align 8
  %107 = load i32, i32* @NR_FILE_PAGES, align 4
  %108 = call i32 @__dec_zone_page_state(%struct.page* %106, i32 %107)
  %109 = load %struct.page*, %struct.page** %8, align 8
  %110 = load i32, i32* @NR_FILE_PAGES, align 4
  %111 = call i32 @__inc_zone_page_state(%struct.page* %109, i32 %110)
  %112 = load %struct.page*, %struct.page** %9, align 8
  %113 = call i64 @PageSwapCache(%struct.page* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %97
  %116 = load %struct.page*, %struct.page** %9, align 8
  %117 = call i64 @PageSwapBacked(%struct.page* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.page*, %struct.page** %9, align 8
  %121 = load i32, i32* @NR_SHMEM, align 4
  %122 = call i32 @__dec_zone_page_state(%struct.page* %120, i32 %121)
  %123 = load %struct.page*, %struct.page** %8, align 8
  %124 = load i32, i32* @NR_SHMEM, align 4
  %125 = call i32 @__inc_zone_page_state(%struct.page* %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %115, %97
  %127 = load %struct.address_space*, %struct.address_space** %7, align 8
  %128 = getelementptr inbounds %struct.address_space, %struct.address_space* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_irq(i32* %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %75, %57, %46, %23, %20
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8** @radix_tree_lookup_slot(i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @page_has_private(%struct.page*) #1

declare dso_local i64 @radix_tree_deref_slot(i8**) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @page_freeze_refs(%struct.page*, i32) #1

declare dso_local i32 @buffer_migrate_lock_buffers(%struct.buffer_head*, i32) #1

declare dso_local i32 @page_unfreeze_refs(%struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @SetPageSwapCache(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @radix_tree_replace_slot(i8**, %struct.page*) #1

declare dso_local i32 @__put_page(%struct.page*) #1

declare dso_local i32 @__dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
