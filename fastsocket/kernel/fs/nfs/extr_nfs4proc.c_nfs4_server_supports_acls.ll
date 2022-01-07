; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_server_supports_acls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_server_supports_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32 }

@NFS_CAP_ACLS = common dso_local global i32 0, align 4
@ACL4_SUPPORT_ALLOW_ACL = common dso_local global i32 0, align 4
@ACL4_SUPPORT_DENY_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*)* @nfs4_server_supports_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_server_supports_acls(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NFS_CAP_ACLS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ACL4_SUPPORT_ALLOW_ACL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ACL4_SUPPORT_DENY_ACL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = phi i1 [ false, %9 ], [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
