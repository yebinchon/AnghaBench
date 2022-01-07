; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data* }
%struct.ipcomp_data = type { i32 }

@ipcomp_resource_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcomp_destroy(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.ipcomp_data*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %4, i32 0, i32 0
  %6 = load %struct.ipcomp_data*, %struct.ipcomp_data** %5, align 8
  store %struct.ipcomp_data* %6, %struct.ipcomp_data** %3, align 8
  %7 = load %struct.ipcomp_data*, %struct.ipcomp_data** %3, align 8
  %8 = icmp ne %struct.ipcomp_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %12 = call i32 @xfrm_state_delete_tunnel(%struct.xfrm_state* %11)
  %13 = call i32 @mutex_lock(i32* @ipcomp_resource_mutex)
  %14 = load %struct.ipcomp_data*, %struct.ipcomp_data** %3, align 8
  %15 = call i32 @ipcomp_free_data(%struct.ipcomp_data* %14)
  %16 = call i32 @mutex_unlock(i32* @ipcomp_resource_mutex)
  %17 = load %struct.ipcomp_data*, %struct.ipcomp_data** %3, align 8
  %18 = call i32 @kfree(%struct.ipcomp_data* %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @xfrm_state_delete_tunnel(%struct.xfrm_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipcomp_free_data(%struct.ipcomp_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ipcomp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
