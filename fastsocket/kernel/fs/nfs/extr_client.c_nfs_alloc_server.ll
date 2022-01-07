; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_alloc_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_alloc_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_server* ()* @nfs_alloc_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_server* @nfs_alloc_server() #0 {
  %1 = alloca %struct.nfs_server*, align 8
  %2 = alloca %struct.nfs_server*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.nfs_server* @kzalloc(i32 40, i32 %3)
  store %struct.nfs_server* %4, %struct.nfs_server** %2, align 8
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = icmp ne %struct.nfs_server* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nfs_server* null, %struct.nfs_server** %1, align 8
  br label %60

8:                                                ; preds = %0
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call i32 @ERR_PTR(i32 %10)
  %12 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 9
  store i32 %11, i32* %15, align 4
  %16 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 2
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = call i32 (...) @nfs_alloc_iostats()
  %35 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %8
  %42 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %43 = call i32 @kfree(%struct.nfs_server* %42)
  store %struct.nfs_server* null, %struct.nfs_server** %1, align 8
  br label %60

44:                                               ; preds = %8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 1
  %47 = call i64 @bdi_init(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %51 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nfs_free_iostats(i32 %52)
  %54 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %55 = call i32 @kfree(%struct.nfs_server* %54)
  store %struct.nfs_server* null, %struct.nfs_server** %1, align 8
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %58 = call i32 @pnfs_init_server(%struct.nfs_server* %57)
  %59 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  store %struct.nfs_server* %59, %struct.nfs_server** %1, align 8
  br label %60

60:                                               ; preds = %56, %49, %41, %7
  %61 = load %struct.nfs_server*, %struct.nfs_server** %1, align 8
  ret %struct.nfs_server* %61
}

declare dso_local %struct.nfs_server* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfs_alloc_iostats(...) #1

declare dso_local i32 @kfree(%struct.nfs_server*) #1

declare dso_local i64 @bdi_init(i32*) #1

declare dso_local i32 @nfs_free_iostats(i32) #1

declare dso_local i32 @pnfs_init_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
