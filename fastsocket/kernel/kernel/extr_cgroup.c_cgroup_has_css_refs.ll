; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_has_css_refs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_has_css_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i64, i64 }
%struct.cgroup = type { i64, %struct.cgroup_subsys_state** }
%struct.cgroup_subsys_state = type { i32 }

@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@subsys = common dso_local global %struct.cgroup_subsys** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*)* @cgroup_has_css_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_has_css_refs(%struct.cgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.cgroup_subsys**, %struct.cgroup_subsys*** @subsys, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cgroup_subsys*, %struct.cgroup_subsys** %12, i64 %14
  %16 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %15, align 8
  store %struct.cgroup_subsys* %16, %struct.cgroup_subsys** %5, align 8
  %17 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %18 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %43

25:                                               ; preds = %11
  %26 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %27 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %26, i32 0, i32 1
  %28 = load %struct.cgroup_subsys_state**, %struct.cgroup_subsys_state*** %27, align 8
  %29 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %30 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %28, i64 %31
  %33 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %32, align 8
  store %struct.cgroup_subsys_state* %33, %struct.cgroup_subsys_state** %6, align 8
  %34 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %35 = icmp ne %struct.cgroup_subsys_state* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %38 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %37, i32 0, i32 0
  %39 = call i32 @atomic_read(i32* %38)
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %47

42:                                               ; preds = %36, %25
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
