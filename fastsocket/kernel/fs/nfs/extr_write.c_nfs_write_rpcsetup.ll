; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_write_rpcsetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_write_rpcsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_write_data = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.nfs_page* }
%struct.nfs_page = type { i32, i32, i64 }
%struct.nfs_commit_info = type { i32 }

@NFS_UNSTABLE = common dso_local global i32 0, align 4
@FLUSH_STABLE = common dso_local global i32 0, align 4
@NFS_FILE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_write_data*, i32, i32, i32, %struct.nfs_commit_info*)* @nfs_write_rpcsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_write_rpcsetup(%struct.nfs_write_data* %0, i32 %1, i32 %2, i32 %3, %struct.nfs_commit_info* %4) #0 {
  %6 = alloca %struct.nfs_write_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_commit_info*, align 8
  %11 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_write_data* %0, %struct.nfs_write_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nfs_commit_info* %4, %struct.nfs_commit_info** %10, align 8
  %12 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %12, i32 0, i32 6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.nfs_page*, %struct.nfs_page** %15, align 8
  store %struct.nfs_page* %16, %struct.nfs_page** %11, align 8
  %17 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @NFS_FH(i32 %21)
  %23 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 7
  store i32 %22, i32* %25, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %27 = call i64 @req_offset(%struct.nfs_page* %26)
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i64 %30, i64* %33, align 8
  %34 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %41 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %47 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  store i64 %45, i64* %48, align 8
  %49 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %61 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @get_nfs_open_context(i32 %62)
  %64 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %65 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %68 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %71 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @NFS_UNSTABLE, align 4
  %74 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %75 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @FLUSH_STABLE, align 4
  %79 = or i32 %78, 128
  %80 = and i32 %77, %79
  switch i32 %80, label %88 [
    i32 0, label %81
    i32 128, label %82
  ]

81:                                               ; preds = %5
  br label %93

82:                                               ; preds = %5
  %83 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %10, align 8
  %84 = call i32 @nfs_reqs_to_commit(%struct.nfs_commit_info* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %93

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %5, %87
  %89 = load i32, i32* @NFS_FILE_SYNC, align 4
  %90 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %91 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %86, %81
  %94 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %95 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %94, i32 0, i32 0
  %96 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %97 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32* %95, i32** %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %104 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %103, i32 0, i32 1
  %105 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %106 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32* %104, i32** %107, align 8
  %108 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %109 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %108, i32 0, i32 0
  %110 = call i32 @nfs_fattr_init(i32* %109)
  ret void
}

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_reqs_to_commit(%struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
