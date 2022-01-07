; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_try_charge_swapin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_try_charge_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@do_swap_account = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_try_charge_swapin(%struct.mm_struct* %0, %struct.page* %1, i32 %2, %struct.mem_cgroup** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup**, align 8
  %10 = alloca %struct.mem_cgroup*, align 8
  %11 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mem_cgroup** %3, %struct.mem_cgroup*** %9, align 8
  %12 = call i64 (...) @mem_cgroup_disabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

15:                                               ; preds = %4
  %16 = load i32, i32* @do_swap_account, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %42

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i32 @PageSwapCache(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %42

24:                                               ; preds = %19
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = call %struct.mem_cgroup* @try_get_mem_cgroup_from_page(%struct.page* %25)
  store %struct.mem_cgroup* %26, %struct.mem_cgroup** %10, align 8
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %28 = icmp ne %struct.mem_cgroup* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %42

30:                                               ; preds = %24
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %32 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  store %struct.mem_cgroup* %31, %struct.mem_cgroup** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @__mem_cgroup_try_charge(%struct.mm_struct* null, i32 %33, %struct.mem_cgroup** %34, i32 1, %struct.page* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %39 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %38, i32 0, i32 0
  %40 = call i32 @css_put(i32* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %57

42:                                               ; preds = %29, %23, %18
  %43 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %44 = icmp ne %struct.mm_struct* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %6, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @__mem_cgroup_try_charge(%struct.mm_struct* %51, i32 %52, %struct.mem_cgroup** %53, i32 1, %struct.page* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %30, %14
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local %struct.mem_cgroup* @try_get_mem_cgroup_from_page(%struct.page*) #1

declare dso_local i32 @__mem_cgroup_try_charge(%struct.mm_struct*, i32, %struct.mem_cgroup**, i32, %struct.page*, i32) #1

declare dso_local i32 @css_put(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
