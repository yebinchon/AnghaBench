; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_alloc_ds_commits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_alloc_ds_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { %struct.pnfs_ds_commit_info* }
%struct.pnfs_ds_commit_info = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32*, i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_data = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_commit_info*, %struct.list_head*)* @alloc_ds_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ds_commits(%struct.nfs_commit_info* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.pnfs_ds_commit_info*, align 8
  %6 = alloca %struct.pnfs_commit_bucket*, align 8
  %7 = alloca %struct.nfs_commit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %11, i32 0, i32 0
  %13 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %12, align 8
  store %struct.pnfs_ds_commit_info* %13, %struct.pnfs_ds_commit_info** %5, align 8
  %14 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %5, align 8
  %15 = getelementptr inbounds %struct.pnfs_ds_commit_info, %struct.pnfs_ds_commit_info* %14, i32 0, i32 1
  %16 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %15, align 8
  store %struct.pnfs_commit_bucket* %16, %struct.pnfs_commit_bucket** %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %5, align 8
  %20 = getelementptr inbounds %struct.pnfs_ds_commit_info, %struct.pnfs_ds_commit_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %25 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %24, i32 0, i32 1
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %51

29:                                               ; preds = %23
  %30 = call %struct.nfs_commit_data* (...) @nfs_commitdata_alloc()
  store %struct.nfs_commit_data* %30, %struct.nfs_commit_data** %7, align 8
  %31 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %32 = icmp ne %struct.nfs_commit_data* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %39 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %44 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %45, i32 0, i32 1
  %47 = load %struct.list_head*, %struct.list_head** %4, align 8
  %48 = call i32 @list_add(i32* %46, %struct.list_head* %47)
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %34, %28
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %55 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %54, i32 1
  store %struct.pnfs_commit_bucket* %55, %struct.pnfs_commit_bucket** %6, align 8
  br label %17

56:                                               ; preds = %33, %17
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %84, %56
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %5, align 8
  %61 = getelementptr inbounds %struct.pnfs_ds_commit_info, %struct.pnfs_ds_commit_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %66 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %65, i32 0, i32 1
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %84

70:                                               ; preds = %64
  %71 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %72 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %71, i32 0, i32 1
  %73 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %74 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %77 = call i32 @nfs_retry_commit(i32* %72, i32* %75, %struct.nfs_commit_info* %76)
  %78 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %79 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @put_lseg(i32* %80)
  %82 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %83 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %70, %69
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %6, align 8
  %88 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %87, i32 1
  store %struct.pnfs_commit_bucket* %88, %struct.pnfs_commit_bucket** %6, align 8
  br label %58

89:                                               ; preds = %58
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.nfs_commit_data* @nfs_commitdata_alloc(...) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @nfs_retry_commit(i32*, i32*, %struct.nfs_commit_info*) #1

declare dso_local i32 @put_lseg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
