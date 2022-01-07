; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_set_lock_denied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_set_lock_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64, i64, i64, i32* }
%struct.nfsd4_lock_denied = type { i64, i64, i32, %struct.TYPE_4__, %struct.nfs4_stateowner* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nfs4_stateowner = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@nfsd_posix_mng_ops = common dso_local global i32 0, align 4
@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@NFS4_READ_LT = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@NFS4_WRITE_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*, %struct.nfsd4_lock_denied*)* @nfs4_set_lock_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_set_lock_denied(%struct.file_lock* %0, %struct.nfsd4_lock_denied* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.nfsd4_lock_denied*, align 8
  %5 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.nfsd4_lock_denied* %1, %struct.nfsd4_lock_denied** %4, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @nfsd_posix_mng_ops
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nfs4_stateowner*
  store %struct.nfs4_stateowner* %14, %struct.nfs4_stateowner** %5, align 8
  %15 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  %16 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %15, i32 0, i32 1
  %17 = call i32 @kref_get(i32* %16)
  %18 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  %19 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %19, i32 0, i32 4
  store %struct.nfs4_stateowner* %18, %struct.nfs4_stateowner** %20, align 8
  %21 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %21, i32 0, i32 3
  %23 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  %24 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_4__* %22 to i8*
  %28 = bitcast %struct.TYPE_4__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %31 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %30, i32 0, i32 4
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %31, align 8
  %32 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %10
  %39 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %43 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %45 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %46 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %38
  %53 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = add nsw i64 %59, 1
  %61 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %62 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %52, %38
  %64 = load i32, i32* @NFS4_READ_LT, align 4
  %65 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %66 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @F_RDLCK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @NFS4_WRITE_LT, align 4
  %74 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %75 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %63
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
