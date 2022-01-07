; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_get_new_cssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_get_new_cssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.css_id = type { i32, i32 }
%struct.cgroup_subsys = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@CSS_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.css_id* (%struct.cgroup_subsys*, i32)* @get_new_cssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.css_id* @get_new_cssid(%struct.cgroup_subsys* %0, i32 %1) #0 {
  %3 = alloca %struct.css_id*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.css_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %11 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 2, %19
  %21 = add i64 8, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.css_id* @kzalloc(i32 %23, i32 %24)
  store %struct.css_id* %25, %struct.css_id** %6, align 8
  %26 = load %struct.css_id*, %struct.css_id** %6, align 8
  %27 = icmp ne %struct.css_id* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.css_id* @ERR_PTR(i32 %30)
  store %struct.css_id* %31, %struct.css_id** %3, align 8
  br label %92

32:                                               ; preds = %2
  %33 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %34 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @idr_pre_get(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %87

45:                                               ; preds = %32
  %46 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %47 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %50 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %49, i32 0, i32 1
  %51 = load %struct.css_id*, %struct.css_id** %6, align 8
  %52 = call i32 @idr_get_new_above(i32* %50, %struct.css_id* %51, i32 1, i32* %7)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %54 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %87

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CSS_ID_MAX, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.css_id*, %struct.css_id** %6, align 8
  %69 = getelementptr inbounds %struct.css_id, %struct.css_id* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.css_id*, %struct.css_id** %6, align 8
  %72 = getelementptr inbounds %struct.css_id, %struct.css_id* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.css_id*, %struct.css_id** %6, align 8
  store %struct.css_id* %73, %struct.css_id** %3, align 8
  br label %92

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOSPC, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %78 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %81 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %80, i32 0, i32 1
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @idr_remove(i32* %81, i32 %82)
  %84 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %85 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %74, %58, %42
  %88 = load %struct.css_id*, %struct.css_id** %6, align 8
  %89 = call i32 @kfree(%struct.css_id* %88)
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.css_id* @ERR_PTR(i32 %90)
  store %struct.css_id* %91, %struct.css_id** %3, align 8
  br label %92

92:                                               ; preds = %87, %66, %28
  %93 = load %struct.css_id*, %struct.css_id** %3, align 8
  ret %struct.css_id* %93
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.css_id* @kzalloc(i32, i32) #1

declare dso_local %struct.css_id* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.css_id*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.css_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
