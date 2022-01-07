; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_put_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_put_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"NFSD: freeing dp %p\0A\00", align 1
@deleg_slab = common dso_local global i32 0, align 4
@num_delegations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_put_delegation(%struct.nfs4_delegation* %0) #0 {
  %2 = alloca %struct.nfs4_delegation*, align 8
  store %struct.nfs4_delegation* %0, %struct.nfs4_delegation** %2, align 8
  %3 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %3, i32 0, i32 1
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.nfs4_delegation* %8)
  %10 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @put_nfs4_file(i32 %12)
  %14 = load i32, i32* @deleg_slab, align 4
  %15 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %16 = call i32 @kmem_cache_free(i32 %14, %struct.nfs4_delegation* %15)
  %17 = load i32, i32* @num_delegations, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @num_delegations, align 4
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.nfs4_delegation*) #1

declare dso_local i32 @put_nfs4_file(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
