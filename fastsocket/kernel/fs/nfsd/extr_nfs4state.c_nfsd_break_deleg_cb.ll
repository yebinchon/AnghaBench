; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_break_deleg_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd_break_deleg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64 }
%struct.nfs4_delegation = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"NFSD nfsd_break_deleg_cb: dp %p fl %p\0A\00", align 1
@recall_lock = common dso_local global i32 0, align 4
@del_recall_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*)* @nfsd_break_deleg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_break_deleg_cb(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca %struct.nfs4_delegation*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %4 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.nfs4_delegation*
  store %struct.nfs4_delegation* %7, %struct.nfs4_delegation** %3, align 8
  %8 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %9 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.nfs4_delegation* %8, %struct.file_lock* %9)
  %11 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %12 = icmp ne %struct.nfs4_delegation* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %15, i32 0, i32 3
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = call i32 @spin_lock(i32* @recall_lock)
  %19 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %19, i32 0, i32 2
  %21 = call i32 @list_add_tail(i32* %20, i32* @del_recall_lru)
  %22 = call i32 @spin_unlock(i32* @recall_lock)
  %23 = call i32 (...) @get_seconds()
  %24 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %25 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %33 = call i32 @nfsd4_cb_recall(%struct.nfs4_delegation* %32)
  br label %34

34:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.nfs4_delegation*, %struct.file_lock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @nfsd4_cb_recall(%struct.nfs4_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
