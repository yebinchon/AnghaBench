; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c___unmap_and_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c___unmap_and_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.anon_vma = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@MIGRATE_ASYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.page*, i32, i32, i32)* @__unmap_and_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__unmap_and_move(%struct.page* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mem_cgroup*, align 8
  %15 = alloca %struct.anon_vma*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %14, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %15, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PF_MEMALLOC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i32 @trylock_page(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MIGRATE_ASYNC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %165

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i32 @lock_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.page*, %struct.page** %6, align 8
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @mem_cgroup_prepare_migration(%struct.page* %43, %struct.page* %44, %struct.mem_cgroup** %14)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %162

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call i64 @PageWriteback(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MIGRATE_SYNC, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %150

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %150

70:                                               ; preds = %66
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @wait_on_page_writeback(%struct.page* %71)
  br label %73

73:                                               ; preds = %70, %53
  %74 = load %struct.page*, %struct.page** %6, align 8
  %75 = call i64 @PageAnon(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %6, align 8
  %79 = call i32 @PageKsm(%struct.page* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %77
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = call %struct.anon_vma* @page_lock_anon_vma(%struct.page* %82)
  store %struct.anon_vma* %83, %struct.anon_vma** %15, align 8
  %84 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  %85 = icmp ne %struct.anon_vma* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  %88 = call i32 @get_anon_vma(%struct.anon_vma* %87)
  %89 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  %90 = call i32 @page_unlock_anon_vma(%struct.anon_vma* %89)
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.page*, %struct.page** %6, align 8
  %93 = call i64 @PageSwapCache(%struct.page* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %12, align 4
  br label %97

96:                                               ; preds = %91
  br label %150

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %77, %73
  %100 = load %struct.page*, %struct.page** %6, align 8
  %101 = getelementptr inbounds %struct.page, %struct.page* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = call i64 @PageAnon(%struct.page* %105)
  %107 = call i32 @VM_BUG_ON(i64 %106)
  %108 = load %struct.page*, %struct.page** %6, align 8
  %109 = call i64 @page_has_private(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.page*, %struct.page** %6, align 8
  %113 = call i32 @try_to_free_buffers(%struct.page* %112)
  br label %150

114:                                              ; preds = %104
  br label %123

115:                                              ; preds = %99
  %116 = load %struct.page*, %struct.page** %6, align 8
  %117 = load i32, i32* @TTU_MIGRATION, align 4
  %118 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @try_to_unmap(%struct.page* %116, i32 %121)
  br label %123

123:                                              ; preds = %115, %114
  %124 = load %struct.page*, %struct.page** %6, align 8
  %125 = call i32 @page_mapped(%struct.page* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load %struct.page*, %struct.page** %7, align 8
  %129 = load %struct.page*, %struct.page** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @move_to_new_page(%struct.page* %128, %struct.page* %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.page*, %struct.page** %6, align 8
  %141 = load %struct.page*, %struct.page** %6, align 8
  %142 = call i32 @remove_migration_ptes(%struct.page* %140, %struct.page* %141)
  br label %143

143:                                              ; preds = %139, %136, %133
  %144 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  %145 = icmp ne %struct.anon_vma* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  %148 = call i32 @drop_anon_vma(%struct.anon_vma* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %111, %96, %69, %63
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %150
  %154 = load %struct.mem_cgroup*, %struct.mem_cgroup** %14, align 8
  %155 = load %struct.page*, %struct.page** %6, align 8
  %156 = load %struct.page*, %struct.page** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @mem_cgroup_end_migration(%struct.mem_cgroup* %154, %struct.page* %155, %struct.page* %156, i32 %159)
  br label %161

161:                                              ; preds = %153, %150
  br label %162

162:                                              ; preds = %161, %50
  %163 = load %struct.page*, %struct.page** %6, align 8
  %164 = call i32 @unlock_page(%struct.page* %163)
  br label %165

165:                                              ; preds = %162, %38
  %166 = load i32, i32* %11, align 4
  ret i32 %166
}

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @mem_cgroup_prepare_migration(%struct.page*, %struct.page*, %struct.mem_cgroup**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_lock_anon_vma(%struct.page*) #1

declare dso_local i32 @get_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @page_unlock_anon_vma(%struct.anon_vma*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i64) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @try_to_unmap(%struct.page*, i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @move_to_new_page(%struct.page*, %struct.page*, i32, i32) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*) #1

declare dso_local i32 @drop_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @mem_cgroup_end_migration(%struct.mem_cgroup*, %struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
