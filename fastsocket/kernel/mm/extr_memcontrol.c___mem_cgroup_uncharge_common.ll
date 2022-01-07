; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_uncharge_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_uncharge_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }
%struct.page_cgroup = type { %struct.mem_cgroup* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@do_swap_account = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_cgroup* (%struct.page*, i32)* @__mem_cgroup_uncharge_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_cgroup* @__mem_cgroup_uncharge_common(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page_cgroup*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i64 (...) @mem_cgroup_disabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %3, align 8
  br label %136

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i64 @PageSwapCache(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %3, align 8
  br label %136

18:                                               ; preds = %13
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i64 @PageTransHuge(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @compound_order(%struct.page* %23)
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i64 @PageTransHuge(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @VM_BUG_ON(i32 %31)
  br label %33

33:                                               ; preds = %22, %18
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %34)
  store %struct.page_cgroup* %35, %struct.page_cgroup** %6, align 8
  %36 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %37 = icmp ne %struct.page_cgroup* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %40 = call i32 @PageCgroupUsed(%struct.page_cgroup* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %3, align 8
  br label %136

49:                                               ; preds = %43
  %50 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %51 = call i32 @lock_page_cgroup(%struct.page_cgroup* %50)
  %52 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %53 = getelementptr inbounds %struct.page_cgroup, %struct.page_cgroup* %52, i32 0, i32 0
  %54 = load %struct.mem_cgroup*, %struct.mem_cgroup** %53, align 8
  store %struct.mem_cgroup* %54, %struct.mem_cgroup** %7, align 8
  %55 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %56 = call i32 @PageCgroupUsed(%struct.page_cgroup* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %133

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %93 [
    i32 129, label %61
    i32 130, label %61
    i32 128, label %71
  ]

61:                                               ; preds = %59, %59
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @page_mapped(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %67 = call i32 @PageCgroupMigration(%struct.page_cgroup* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  br label %133

70:                                               ; preds = %65
  br label %94

71:                                               ; preds = %59
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = call i32 @PageAnon(%struct.page* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = call i32 @page_is_file_cache(%struct.page* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %133

85:                                               ; preds = %80, %75
  br label %92

86:                                               ; preds = %71
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = call i32 @page_mapped(%struct.page* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %133

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %85
  br label %94

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93, %92, %70
  %95 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %96 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup* %95, %struct.page_cgroup* %96, i32 %98)
  %100 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %101 = call i32 @ClearPageCgroupUsed(%struct.page_cgroup* %100)
  %102 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %103 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %102)
  %104 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %105 = call i64 @mem_cgroup_soft_limit_check(%struct.mem_cgroup* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %109 = load %struct.page*, %struct.page** %4, align 8
  %110 = call i32 @mem_cgroup_update_tree(%struct.mem_cgroup* %108, %struct.page* %109)
  br label %111

111:                                              ; preds = %107, %94
  %112 = load i64, i64* @do_swap_account, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %119 = call i32 @mem_cgroup_swap_statistics(%struct.mem_cgroup* %118, i32 1)
  %120 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %121 = call i32 @mem_cgroup_get(%struct.mem_cgroup* %120)
  br label %122

122:                                              ; preds = %117, %114, %111
  %123 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %124 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @__do_uncharge(%struct.mem_cgroup* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %122
  %132 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  store %struct.mem_cgroup* %132, %struct.mem_cgroup** %3, align 8
  br label %136

133:                                              ; preds = %90, %84, %69, %58
  %134 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %135 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %134)
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %3, align 8
  br label %136

136:                                              ; preds = %133, %131, %48, %17, %12
  %137 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  ret %struct.mem_cgroup* %137
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageCgroupUsed(%struct.page_cgroup*) #1

declare dso_local i32 @lock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @PageCgroupMigration(%struct.page_cgroup*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @mem_cgroup_charge_statistics(%struct.mem_cgroup*, %struct.page_cgroup*, i32) #1

declare dso_local i32 @ClearPageCgroupUsed(%struct.page_cgroup*) #1

declare dso_local i32 @unlock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i64 @mem_cgroup_soft_limit_check(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_update_tree(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i32 @mem_cgroup_swap_statistics(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @mem_cgroup_get(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @__do_uncharge(%struct.mem_cgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
