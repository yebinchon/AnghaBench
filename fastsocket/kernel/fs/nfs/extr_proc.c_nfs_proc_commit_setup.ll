; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_commit_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_commit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { i32 }
%struct.rpc_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*, %struct.rpc_message*)* @nfs_proc_commit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_proc_commit_setup(%struct.nfs_commit_data* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.nfs_commit_data*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %5 = call i32 (...) @BUG()
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
