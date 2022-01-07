; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_unmap_and_move_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_unmap_and_move_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.anon_vma = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page* (%struct.page*, i64, i32**)*, i64, %struct.page*, i32, i32, i32)* @unmap_and_move_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_and_move_huge_page(%struct.page* (%struct.page*, i64, i32**)* %0, i64 %1, %struct.page* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.page* (%struct.page*, i64, i32**)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.anon_vma*, align 8
  store %struct.page* (%struct.page*, i64, i32**)* %0, %struct.page* (%struct.page*, i64, i32**)** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %18 = load %struct.page* (%struct.page*, i64, i32**)*, %struct.page* (%struct.page*, i64, i32**)** %8, align 8
  %19 = load %struct.page*, %struct.page** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call %struct.page* %18(%struct.page* %19, i64 %20, i32** %15)
  store %struct.page* %21, %struct.page** %16, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %17, align 8
  %22 = load %struct.page*, %struct.page** %16, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %120

27:                                               ; preds = %6
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = call i32 @trylock_page(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @MIGRATE_SYNC, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33
  br label %89

41:                                               ; preds = %36
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = call i32 @lock_page(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %27
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i64 @PageAnon(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call %struct.anon_vma* @page_lock_anon_vma(%struct.page* %49)
  store %struct.anon_vma* %50, %struct.anon_vma** %17, align 8
  %51 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %52 = icmp ne %struct.anon_vma* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %55 = call i32 @get_anon_vma(%struct.anon_vma* %54)
  %56 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %57 = call i32 @page_unlock_anon_vma(%struct.anon_vma* %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = load i32, i32* @TTU_MIGRATION, align 4
  %62 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @try_to_unmap(%struct.page* %60, i32 %65)
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = call i32 @page_mapped(%struct.page* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %59
  %71 = load %struct.page*, %struct.page** %16, align 8
  %72 = load %struct.page*, %struct.page** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @move_to_new_page(%struct.page* %71, %struct.page* %72, i32 1, i32 %73)
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %70, %59
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i32 @remove_migration_ptes(%struct.page* %79, %struct.page* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %84 = icmp ne %struct.anon_vma* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %87 = call i32 @drop_anon_vma(%struct.anon_vma* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %40
  %90 = load %struct.page*, %struct.page** %10, align 8
  %91 = call i32 @unlock_page(%struct.page* %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.page*, %struct.page** %10, align 8
  %98 = getelementptr inbounds %struct.page, %struct.page* %97, i32 0, i32 0
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.page*, %struct.page** %10, align 8
  %101 = call i32 @put_page(%struct.page* %100)
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.page*, %struct.page** %16, align 8
  %104 = call i32 @put_page(%struct.page* %103)
  %105 = load i32*, i32** %15, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %15, align 8
  store i32 %111, i32* %112, align 4
  br label %117

113:                                              ; preds = %107
  %114 = load %struct.page*, %struct.page** %16, align 8
  %115 = call i32 @page_to_nid(%struct.page* %114)
  %116 = load i32*, i32** %15, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %110
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %24
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_lock_anon_vma(%struct.page*) #1

declare dso_local i32 @get_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @page_unlock_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @try_to_unmap(%struct.page*, i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @move_to_new_page(%struct.page*, %struct.page*, i32, i32) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*) #1

declare dso_local i32 @drop_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
