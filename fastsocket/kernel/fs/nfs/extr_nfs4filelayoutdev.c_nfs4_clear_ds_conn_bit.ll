; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayoutdev.c_nfs4_clear_ds_conn_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayoutdev.c_nfs4_clear_ds_conn_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_pnfs_ds = type { i32 }

@NFS4DS_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_pnfs_ds*)* @nfs4_clear_ds_conn_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_clear_ds_conn_bit(%struct.nfs4_pnfs_ds* %0) #0 {
  %2 = alloca %struct.nfs4_pnfs_ds*, align 8
  store %struct.nfs4_pnfs_ds* %0, %struct.nfs4_pnfs_ds** %2, align 8
  %3 = call i32 (...) @smp_mb__before_clear_bit()
  %4 = load i32, i32* @NFS4DS_CONNECTING, align 4
  %5 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %5, i32 0, i32 0
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = call i32 (...) @smp_mb__after_clear_bit()
  %9 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %2, align 8
  %10 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %9, i32 0, i32 0
  %11 = load i32, i32* @NFS4DS_CONNECTING, align 4
  %12 = call i32 @wake_up_bit(i32* %10, i32 %11)
  ret void
}

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
