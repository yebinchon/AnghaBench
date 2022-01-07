; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_upgrade_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_upgrade_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs4_file = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_stateid = type { i32, i32 }
%struct.nfsd4_open = type { i32, i32 }

@NFS4_SHARE_WANT_MASK = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_stateid*, %struct.nfsd4_open*)* @nfs4_upgrade_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_upgrade_open(%struct.svc_rqst* %0, %struct.nfs4_file* %1, %struct.svc_fh* %2, %struct.nfs4_stateid* %3, %struct.nfsd4_open* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nfs4_file*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca %struct.nfs4_stateid*, align 8
  %11 = alloca %struct.nfsd4_open*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %8, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %9, align 8
  store %struct.nfs4_stateid* %3, %struct.nfs4_stateid** %10, align 8
  store %struct.nfsd4_open* %4, %struct.nfsd4_open** %11, align 8
  %16 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %17 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NFS4_SHARE_WANT_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %24 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %5
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %33 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %34 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @nfs4_get_vfs_file(%struct.svc_rqst* %32, %struct.nfs4_file* %33, %struct.svc_fh* %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %14, align 8
  store i64 %40, i64* %6, align 8
  br label %72

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %5
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %44 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %45 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %46 = call i64 @nfsd4_truncate(%struct.svc_rqst* %43, %struct.svc_fh* %44, %struct.nfsd4_open* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @nfs4_access_to_omode(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @nfs4_file_put_access(%struct.nfs4_file* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %6, align 8
  br label %72

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %62, i32 0, i32 1
  %64 = call i32 @__set_bit(i32 %61, i32* %63)
  %65 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %66 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %69 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %68, i32 0, i32 0
  %70 = call i32 @__set_bit(i32 %67, i32* %69)
  %71 = load i64, i64* @nfs_ok, align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %60, %58, %39
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @nfs4_get_vfs_file(%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, i32) #1

declare dso_local i64 @nfsd4_truncate(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*) #1

declare dso_local i32 @nfs4_access_to_omode(i32) #1

declare dso_local i32 @nfs4_file_put_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
