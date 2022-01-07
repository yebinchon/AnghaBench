; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_server_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_server_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs4_exception = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_server_capabilities(%struct.nfs_server* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_fh*, align 8
  %5 = alloca %struct.nfs4_exception, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %4, align 8
  %7 = bitcast %struct.nfs4_exception* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  br label %8

8:                                                ; preds = %14, %2
  %9 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %10 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %4, align 8
  %12 = call i32 @_nfs4_server_capabilities(%struct.nfs_server* %10, %struct.nfs_fh* %11)
  %13 = call i32 @nfs4_handle_exception(%struct.nfs_server* %9, i32 %12, %struct.nfs4_exception* %5)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %8, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @_nfs4_server_capabilities(%struct.nfs_server*, %struct.nfs_fh*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
