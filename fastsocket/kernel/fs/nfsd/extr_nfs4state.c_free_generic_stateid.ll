; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_free_generic_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_free_generic_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateid = type { i32, i32 }

@stateid_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stateid*)* @free_generic_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_generic_stateid(%struct.nfs4_stateid* %0) #0 {
  %2 = alloca %struct.nfs4_stateid*, align 8
  %3 = alloca i32, align 4
  store %struct.nfs4_stateid* %0, %struct.nfs4_stateid** %2, align 8
  %4 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @nfs4_access_to_omode(i32 %22)
  %24 = call i32 @nfs4_file_put_access(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %18, %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %2, align 8
  %32 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_nfs4_file(i32 %33)
  %35 = load i32, i32* @stateid_slab, align 4
  %36 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %2, align 8
  %37 = call i32 @kmem_cache_free(i32 %35, %struct.nfs4_stateid* %36)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_file_put_access(i32, i32) #1

declare dso_local i32 @nfs4_access_to_omode(i32) #1

declare dso_local i32 @put_nfs4_file(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
