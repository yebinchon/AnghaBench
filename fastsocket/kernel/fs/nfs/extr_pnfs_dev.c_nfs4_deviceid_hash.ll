; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_deviceid_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_deviceid_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid = type { i64 }

@NFS4_DEVICEID4_SIZE = common dso_local global i32 0, align 4
@NFS4_DEVICE_ID_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_deviceid*)* @nfs4_deviceid_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_deviceid_hash(%struct.nfs4_deviceid* %0) #0 {
  %2 = alloca %struct.nfs4_deviceid*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs4_deviceid* %0, %struct.nfs4_deviceid** %2, align 8
  %6 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %2, align 8
  %7 = getelementptr inbounds %struct.nfs4_deviceid, %struct.nfs4_deviceid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* @NFS4_DEVICEID4_SIZE, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 37
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NFS4_DEVICE_ID_HASH_MASK, align 4
  %27 = and i32 %25, %26
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
