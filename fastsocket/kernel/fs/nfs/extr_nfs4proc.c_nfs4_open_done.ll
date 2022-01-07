; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs4_opendata = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@NFS4_OPEN_RESULT_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_open_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_opendata*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %7, %struct.nfs4_opendata** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = call i32 @nfs4_sequence_done(%struct.rpc_task* %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %87

20:                                               ; preds = %2
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %20
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @S_IFMT, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %55 [
    i32 128, label %44
    i32 129, label %45
    i32 130, label %50
  ]

44:                                               ; preds = %35
  br label %60

45:                                               ; preds = %35
  %46 = load i64, i64* @ELOOP, align 8
  %47 = sub nsw i64 0, %46
  %48 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %49 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %60

50:                                               ; preds = %35
  %51 = load i64, i64* @EISDIR, align 8
  %52 = sub nsw i64 0, %51
  %53 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %54 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %60

55:                                               ; preds = %35
  %56 = load i64, i64* @ENOTDIR, align 8
  %57 = sub nsw i64 0, %56
  %58 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %59 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %50, %45, %44
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %63 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @renew_lease(i32 %65, i32 %68)
  %70 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %71 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NFS4_OPEN_RESULT_CONFIRM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %61
  %78 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %79 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @nfs_confirm_seqid(i32* %81, i32 0)
  br label %83

83:                                               ; preds = %77, %61
  br label %84

84:                                               ; preds = %83, %20
  %85 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %86 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %85, i32 0, i32 1
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %19
  ret void
}

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

declare dso_local i32 @renew_lease(i32, i32) #1

declare dso_local i32 @nfs_confirm_seqid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
