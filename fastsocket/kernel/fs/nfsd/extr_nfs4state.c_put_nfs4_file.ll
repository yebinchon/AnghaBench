; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_put_nfs4_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_put_nfs4_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32, i32, i32 }

@recall_lock = common dso_local global i32 0, align 4
@file_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_file*)* @put_nfs4_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_nfs4_file(%struct.nfs4_file* %0) #0 {
  %2 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %2, align 8
  %3 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %3, i32 0, i32 2
  %5 = call i64 @atomic_dec_and_lock(i32* %4, i32* @recall_lock)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %8, i32 0, i32 1
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @spin_unlock(i32* @recall_lock)
  %12 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %13 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iput(i32 %14)
  %16 = load i32, i32* @file_slab, align 4
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  %18 = call i32 @kmem_cache_free(i32 %16, %struct.nfs4_file* %17)
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
