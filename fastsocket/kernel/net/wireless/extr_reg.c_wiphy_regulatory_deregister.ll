; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_regulatory_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_regulatory_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32 }

@reg_mutex = common dso_local global i32 0, align 4
@reg_num_devs_support_basehint = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i32 0, align 4
@ENVIRON_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_regulatory_deregister(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  store %struct.wiphy* null, %struct.wiphy** %3, align 8
  %5 = call i32 @mutex_lock(i32* @reg_mutex)
  %6 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %6, %struct.regulatory_request** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %8 = call i32 @reg_dev_ignore_cell_hint(%struct.wiphy* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @reg_num_devs_support_basehint, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @reg_num_devs_support_basehint, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %15 = call i32 @get_wiphy_regdom(%struct.wiphy* %14)
  %16 = call i32 @rcu_free_regdom(i32 %15)
  %17 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rcu_assign_pointer(i32 %19, i32* null)
  %21 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %22 = icmp ne %struct.regulatory_request* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %25 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %26)
  store %struct.wiphy* %27, %struct.wiphy** %3, align 8
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %30 = icmp ne %struct.wiphy* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %33 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %34 = icmp ne %struct.wiphy* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28
  br label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @WIPHY_IDX_INVALID, align 4
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ENVIRON_ANY, align 4
  %41 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %42 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %35
  %44 = call i32 @mutex_unlock(i32* @reg_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @reg_dev_ignore_cell_hint(%struct.wiphy*) #1

declare dso_local i32 @rcu_free_regdom(i32) #1

declare dso_local i32 @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
