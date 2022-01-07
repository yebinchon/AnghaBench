; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_do_alloc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_do_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i8*, i32, i32, i32, i32, %struct.smb_sb_info* }
%struct.smb_sb_info = type { i32 }

@req_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"allocating request: %p\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smb_request* (%struct.smb_sb_info*, i32)* @smb_do_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smb_request* @smb_do_alloc_request(%struct.smb_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.smb_request*, align 8
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_request*, align 8
  %7 = alloca i8*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @req_cachep, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.smb_request* @kmem_cache_zalloc(i32 %8, i32 %9)
  store %struct.smb_request* %10, %struct.smb_request** %6, align 8
  %11 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %12 = call i32 @VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.smb_request* %11)
  %13 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %14 = icmp ne %struct.smb_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @req_cachep, align 4
  %27 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %28 = call i32 @kmem_cache_free(i32 %26, %struct.smb_request* %27)
  store %struct.smb_request* null, %struct.smb_request** %3, align 8
  br label %51

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %33 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %36 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %38 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %39 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %38, i32 0, i32 5
  store %struct.smb_sb_info* %37, %struct.smb_sb_info** %39, align 8
  %40 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %41 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %40, i32 0, i32 4
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %44 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %43, i32 0, i32 3
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %47 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %46, i32 0, i32 2
  %48 = call i32 @atomic_set(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %30, %15
  %50 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  store %struct.smb_request* %50, %struct.smb_request** %3, align 8
  br label %51

51:                                               ; preds = %49, %25
  %52 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  ret %struct.smb_request* %52
}

declare dso_local %struct.smb_request* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @VERBOSE(i8*, %struct.smb_request*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.smb_request*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
