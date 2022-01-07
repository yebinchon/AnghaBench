; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_lock_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_lock_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32 }
%struct.file_lock = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64 }

@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@NFS_LOCK_RECLAIM = common dso_local global i32 0, align 4
@NFS4ERR_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, %struct.file_lock*)* @nfs4_lock_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_lock_reclaim(%struct.nfs4_state* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nfs_server* @NFS_SERVER(i32 %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %6, align 8
  %13 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %14
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %23 = load i32, i32* @F_SETLK, align 4
  %24 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %25 = load i32, i32* @NFS_LOCK_RECLAIM, align 4
  %26 = call i32 @_nfs4_do_setlk(%struct.nfs4_state* %22, i32 %23, %struct.file_lock* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NFS4ERR_DELAY, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nfs4_handle_exception(%struct.nfs_server* %33, i32 %34, %struct.nfs4_exception* %7)
  br label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %14, label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_nfs4_do_setlk(%struct.nfs4_state*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
