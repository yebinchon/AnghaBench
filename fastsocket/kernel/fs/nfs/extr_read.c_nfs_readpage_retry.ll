; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_read_data = type { i32, %struct.TYPE_2__*, %struct.nfs_readres, %struct.nfs_readargs }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_readres = type { i64 }
%struct.nfs_readargs = type { i32, i32, i32 }

@NFSIOS_SHORTREAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_read_data*)* @nfs_readpage_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_retry(%struct.rpc_task* %0, %struct.nfs_read_data* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_read_data*, align 8
  %5 = alloca %struct.nfs_readargs*, align 8
  %6 = alloca %struct.nfs_readres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_read_data* %1, %struct.nfs_read_data** %4, align 8
  %7 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %7, i32 0, i32 3
  store %struct.nfs_readargs* %8, %struct.nfs_readargs** %5, align 8
  %9 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %9, i32 0, i32 2
  store %struct.nfs_readres* %10, %struct.nfs_readres** %6, align 8
  %11 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NFSIOS_SHORTREAD, align 4
  %17 = call i32 @nfs_inc_stats(i32 %15, i32 %16)
  %18 = load %struct.nfs_readres*, %struct.nfs_readres** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfs_set_pgio_error(%struct.TYPE_2__* %25, i32 %27, i32 %30)
  br label %71

32:                                               ; preds = %2
  %33 = load %struct.nfs_readres*, %struct.nfs_readres** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.nfs_readres*, %struct.nfs_readres** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.nfs_readres*, %struct.nfs_readres** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.nfs_readres*, %struct.nfs_readres** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %70 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %69)
  br label %71

71:                                               ; preds = %32, %22
  ret void
}

declare dso_local i32 @nfs_inc_stats(i32, i32) #1

declare dso_local i32 @nfs_set_pgio_error(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
