; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_clear_cap_atomic_open_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_clear_cap_atomic_open_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFS_CAP_ATOMIC_OPEN_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, i32, %struct.nfs4_exception*)* @nfs4_clear_cap_atomic_open_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_clear_cap_atomic_open_v1(%struct.nfs_server* %0, i32 %1, %struct.nfs4_exception* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_exception*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfs4_exception* %2, %struct.nfs4_exception** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFS_CAP_ATOMIC_OPEN_V1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %30

21:                                               ; preds = %13
  %22 = load i32, i32* @NFS_CAP_ATOMIC_OPEN_V1, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.nfs4_exception*, %struct.nfs4_exception** %7, align 8
  %29 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %20, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
