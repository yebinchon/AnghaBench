; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_getlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs4_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @nfs4_proc_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_getlk(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  br label %10

10:                                               ; preds = %20, %3
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NFS_SERVER(i32 %13)
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %18 = call i32 @_nfs4_proc_getlk(%struct.nfs4_state* %15, i32 %16, %struct.file_lock* %17)
  %19 = call i32 @nfs4_handle_exception(i32 %14, i32 %18, %struct.nfs4_exception* %7)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %10, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(i32) #2

declare dso_local i32 @_nfs4_proc_getlk(%struct.nfs4_state*, i32, %struct.file_lock*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
