; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c___dlm_reset_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c___dlm_reset_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@O2NM_INVALID_NODE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*)* @__dlm_reset_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_reset_recovery(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %3 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %3, i32 0, i32 2
  %5 = call i32 @assert_spin_locked(i32* %4)
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clear_bit(i32 %9, i32 %12)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %15 = load i32, i32* @O2NM_INVALID_NODE_NUM, align 4
  %16 = call i32 @dlm_set_reco_dead_node(%struct.dlm_ctxt* %14, i32 %15)
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %18 = load i32, i32* @O2NM_INVALID_NODE_NUM, align 4
  %19 = call i32 @dlm_set_reco_master(%struct.dlm_ctxt* %17, i32 %18)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dlm_set_reco_dead_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_set_reco_master(%struct.dlm_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
