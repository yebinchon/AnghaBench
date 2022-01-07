; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_server_remove_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_server_remove_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.nfs_client* }
%struct.nfs_client = type { i32, i32 }

@nfs_client_lock = common dso_local global i32 0, align 4
@NFS_CS_STOP_RENEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*)* @nfs_server_remove_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_server_remove_lists(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  %3 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %4 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %4, i32 0, i32 2
  %6 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  store %struct.nfs_client* %6, %struct.nfs_client** %3, align 8
  %7 = call i32 @spin_lock(i32* @nfs_client_lock)
  %8 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 1
  %10 = call i32 @list_del_rcu(i32* %9)
  %11 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %12 = icmp ne %struct.nfs_client* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @NFS_CS_STOP_RENEW, align 4
  %20 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %13, %1
  %24 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @spin_unlock(i32* @nfs_client_lock)
  %28 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
