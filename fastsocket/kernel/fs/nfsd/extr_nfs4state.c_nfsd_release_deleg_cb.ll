; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_release_deleg_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_release_deleg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i64 }
%struct.nfs4_delegation = type { i32*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"NFSD nfsd_release_deleg_cb: fl %p dp %p dl_count %d\0A\00", align 1
@FL_LEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*)* @nfsd_release_deleg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_release_deleg_cb(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca %struct.nfs4_delegation*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %4 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.nfs4_delegation*
  store %struct.nfs4_delegation* %7, %struct.nfs4_delegation** %3, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %9 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %10 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %10, i32 0, i32 1
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.file_lock* %8, %struct.nfs4_delegation* %9, i32 %12)
  %14 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FL_LEASE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %22 = icmp ne %struct.nfs4_delegation* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %1
  br label %27

24:                                               ; preds = %20
  %25 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.file_lock*, %struct.nfs4_delegation*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
