; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_open_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_open_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64 }

@NFS4ERR_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.nfs4_state*)* @nfs4_do_open_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_do_open_reclaim(%struct.nfs_open_context* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs4_exception, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nfs_server* @NFS_SERVER(i32 %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %5, align 8
  %12 = bitcast %struct.nfs4_exception* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  br label %13

13:                                               ; preds = %32, %2
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = call i32 @_nfs4_do_open_reclaim(%struct.nfs_open_context* %14, %struct.nfs4_state* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @nfs4_clear_cap_atomic_open_v1(%struct.nfs_server* %17, i32 %18, %struct.nfs4_exception* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NFS4ERR_DELAY, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %36

28:                                               ; preds = %22
  %29 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nfs4_handle_exception(%struct.nfs_server* %29, i32 %30, %struct.nfs4_exception* %6)
  br label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %13, label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_nfs4_do_open_reclaim(%struct.nfs_open_context*, %struct.nfs4_state*) #1

declare dso_local i64 @nfs4_clear_cap_atomic_open_v1(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
