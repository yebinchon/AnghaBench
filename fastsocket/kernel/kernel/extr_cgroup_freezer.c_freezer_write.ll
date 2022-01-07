; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }

@freezer_state_strs = common dso_local global i32* null, align 8
@CGROUP_THAWED = common dso_local global i64 0, align 8
@CGROUP_FROZEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @freezer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezer_write(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32*, i32** @freezer_state_strs, align 8
  %12 = load i64, i64* @CGROUP_THAWED, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strcmp(i8* %10, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @CGROUP_THAWED, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** @freezer_state_strs, align 8
  %23 = load i64, i64* @CGROUP_FROZEN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i8* %21, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @CGROUP_FROZEN, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %37 = call i32 @cgroup_lock_live_group(%struct.cgroup* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %35
  %43 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @freezer_change_state(%struct.cgroup* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = call i32 (...) @cgroup_unlock()
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %39, %31
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local i32 @freezer_change_state(%struct.cgroup*, i32) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
