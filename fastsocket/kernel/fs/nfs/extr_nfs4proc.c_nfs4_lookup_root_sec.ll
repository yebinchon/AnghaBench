; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_lookup_root_sec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_lookup_root_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.rpc_auth = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*, i32)* @nfs4_lookup_root_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_lookup_root_sec(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fsinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpc_auth*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rpc_auth* @rpcauth_create(i32 %11, i32 %14)
  store %struct.rpc_auth* %15, %struct.rpc_auth** %9, align 8
  %16 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %17 = icmp ne %struct.rpc_auth* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %23 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %24 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %25 = call i32 @nfs4_lookup_root(%struct.nfs_server* %22, %struct.nfs_fh* %23, %struct.nfs_fsinfo* %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %10, align 4
  ret i32 %27
}

declare dso_local %struct.rpc_auth* @rpcauth_create(i32, i32) #1

declare dso_local i32 @nfs4_lookup_root(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
