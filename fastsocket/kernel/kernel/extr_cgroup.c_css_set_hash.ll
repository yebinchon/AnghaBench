; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_set_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_set_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.cgroup_subsys_state = type { i32 }

@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@CSS_SET_HASH_BITS = common dso_local global i32 0, align 4
@css_set_table = common dso_local global %struct.hlist_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.cgroup_subsys_state**)* @css_set_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @css_set_hash(%struct.cgroup_subsys_state** %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cgroup_subsys_state** %0, %struct.cgroup_subsys_state*** %2, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.cgroup_subsys_state**, %struct.cgroup_subsys_state*** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %11, i64 %13
  %15 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %14, align 8
  %16 = ptrtoint %struct.cgroup_subsys_state* %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i64, i64* %5, align 8
  %24 = lshr i64 %23, 16
  %25 = load i64, i64* %5, align 8
  %26 = xor i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @CSS_SET_HASH_BITS, align 4
  %29 = call i32 @hash_long(i64 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.hlist_head*, %struct.hlist_head** @css_set_table, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %30, i64 %32
  ret %struct.hlist_head* %33
}

declare dso_local i32 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
