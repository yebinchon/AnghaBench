; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_remove_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_remove_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans_dst = type { %struct.netfs_state* }
%struct.netfs_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfs_trans_dst*)* @netfs_trans_remove_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfs_trans_remove_state(%struct.netfs_trans_dst* %0) #0 {
  %2 = alloca %struct.netfs_trans_dst*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfs_state*, align 8
  store %struct.netfs_trans_dst* %0, %struct.netfs_trans_dst** %2, align 8
  %5 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %2, align 8
  %6 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %5, i32 0, i32 0
  %7 = load %struct.netfs_state*, %struct.netfs_state** %6, align 8
  store %struct.netfs_state* %7, %struct.netfs_state** %4, align 8
  %8 = load %struct.netfs_state*, %struct.netfs_state** %4, align 8
  %9 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %2, align 8
  %12 = load %struct.netfs_state*, %struct.netfs_state** %4, align 8
  %13 = call i32 @netfs_trans_remove_nolock(%struct.netfs_trans_dst* %11, %struct.netfs_state* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.netfs_state*, %struct.netfs_state** %4, align 8
  %15 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netfs_trans_remove_nolock(%struct.netfs_trans_dst*, %struct.netfs_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
