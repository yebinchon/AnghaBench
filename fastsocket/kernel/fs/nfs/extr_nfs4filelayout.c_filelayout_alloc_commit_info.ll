; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_alloc_commit_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_alloc_commit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { i32, i32 }
%struct.nfs4_filelayout_segment = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STRIPE_SPARSE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32)* @filelayout_alloc_commit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filelayout_alloc_commit_info(%struct.pnfs_layout_segment* %0, %struct.nfs_commit_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_filelayout_segment*, align 8
  %9 = alloca %struct.pnfs_commit_bucket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %13 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %12)
  store %struct.nfs4_filelayout_segment* %13, %struct.nfs4_filelayout_segment** %8, align 8
  %14 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %15 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %106

27:                                               ; preds = %19
  %28 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STRIPE_SPARSE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %35 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %41 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ %38, %33 ], [ %44, %39 ]
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.pnfs_commit_bucket* @kcalloc(i32 %47, i32 8, i32 %48)
  store %struct.pnfs_commit_bucket* %49, %struct.pnfs_commit_bucket** %9, align 8
  %50 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %51 = icmp ne %struct.pnfs_commit_bucket* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %106

55:                                               ; preds = %45
  %56 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @spin_lock(i32 %58)
  %60 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %68 = call i32 @kfree(%struct.pnfs_commit_bucket* %67)
  br label %101

69:                                               ; preds = %55
  %70 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %71 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %72 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store %struct.pnfs_commit_bucket* %70, %struct.pnfs_commit_bucket** %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %77 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %97, %69
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %85, i64 %87
  %89 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %88, i32 0, i32 1
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %91, i64 %93
  %95 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %94, i32 0, i32 0
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %66
  %102 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %103 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @spin_unlock(i32 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %52, %26, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.pnfs_commit_bucket* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @kfree(%struct.pnfs_commit_bucket*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
