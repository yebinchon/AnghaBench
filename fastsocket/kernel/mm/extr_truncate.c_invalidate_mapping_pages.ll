; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_mapping_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_mapping_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@PAGEVEC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @invalidate_mapping_pages(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pagevec, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %14 = call i32 @pagevec_init(%struct.pagevec* %7, i32 0)
  br label %15

15:                                               ; preds = %82, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* @PAGEVEC_SIZE, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i64 @min(i64 %24, i64 %26)
  %28 = add nsw i64 %27, 1
  %29 = call i64 @pagevec_lookup(%struct.pagevec* %7, %struct.address_space* %20, i64 %21, i64 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %19, %15
  %32 = phi i1 [ false, %15 ], [ %30, %19 ]
  br i1 %32, label %33, label %88

33:                                               ; preds = %31
  %34 = call i32 (...) @mem_cgroup_uncharge_start()
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %79, %33
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @pagevec_count(%struct.pagevec* %7)
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %82

53:                                               ; preds = %39
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = call i32 @trylock_page(%struct.page* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %79

58:                                               ; preds = %53
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = getelementptr inbounds %struct.page, %struct.page* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = call i64 @invalidate_inode_page(%struct.page* %66)
  store i64 %67, i64* %9, align 8
  %68 = load %struct.page*, %struct.page** %12, align 8
  %69 = call i32 @unlock_page(%struct.page* %68)
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load %struct.page*, %struct.page** %12, align 8
  %74 = call i32 @deactivate_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %75, %57
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %35

82:                                               ; preds = %52, %35
  %83 = call i32 @pagevec_release(%struct.pagevec* %7)
  %84 = call i32 (...) @mem_cgroup_uncharge_end()
  %85 = call i32 (...) @cond_resched()
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %15

88:                                               ; preds = %31
  %89 = load i64, i64* %10, align 8
  ret i64 %89
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i64 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mem_cgroup_uncharge_start(...) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @invalidate_inode_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @deactivate_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @mem_cgroup_uncharge_end(...) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
