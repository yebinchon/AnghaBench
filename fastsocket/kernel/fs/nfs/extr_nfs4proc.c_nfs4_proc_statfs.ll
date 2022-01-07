; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsstat = type { i32 }
%struct.nfs4_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsstat*)* @nfs4_proc_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_statfs(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsstat* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsstat*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsstat* %2, %struct.nfs_fsstat** %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  br label %10

10:                                               ; preds = %17, %3
  %11 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %13 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %14 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %6, align 8
  %15 = call i32 @_nfs4_proc_statfs(%struct.nfs_server* %12, %struct.nfs_fh* %13, %struct.nfs_fsstat* %14)
  %16 = call i32 @nfs4_handle_exception(%struct.nfs_server* %11, i32 %15, %struct.nfs4_exception* %7)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @_nfs4_proc_statfs(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsstat*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
