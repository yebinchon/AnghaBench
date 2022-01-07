; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_same_client_deleg_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_same_client_deleg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64 }
%struct.nfs4_delegation = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @nfsd_same_client_deleg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_same_client_deleg_cb(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs4_delegation*, align 8
  %7 = alloca %struct.nfs4_delegation*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %9 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.nfs4_delegation*
  store %struct.nfs4_delegation* %11, %struct.nfs4_delegation** %6, align 8
  %12 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.nfs4_delegation*
  store %struct.nfs4_delegation* %15, %struct.nfs4_delegation** %7, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %6, align 8
  %26 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %7, align 8
  %29 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
