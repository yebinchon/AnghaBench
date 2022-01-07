; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_in_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_in_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DLM_RECO_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_in_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_in_recovery(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %4 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DLM_RECO_STATE_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
