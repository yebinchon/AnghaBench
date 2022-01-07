; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_lockdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_lockdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lockdata = type { %struct.TYPE_14__, i32, i32, %struct.nfs_server*, %struct.nfs4_lock_state*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32*, i32*, %struct.TYPE_12__, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.nfs_server = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.file_lock = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs4_lock_state = type { i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lockdata* (%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, i32)* @nfs4_alloc_lockdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lockdata* @nfs4_alloc_lockdata(%struct.file_lock* %0, %struct.nfs_open_context* %1, %struct.nfs4_lock_state* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_lockdata*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs4_lock_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_lockdata*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.nfs_server*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs4_lock_state* %2, %struct.nfs4_lock_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %14 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %13, i32 0, i32 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.nfs4_lockdata* @kzalloc(i32 88, i32 %20)
  store %struct.nfs4_lockdata* %21, %struct.nfs4_lockdata** %10, align 8
  %22 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %23 = icmp eq %struct.nfs4_lockdata* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store %struct.nfs4_lockdata* null, %struct.nfs4_lockdata** %5, align 8
  br label %133

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = call i32 @NFS_FH(%struct.inode* %26)
  %28 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %29 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 8
  %31 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %32 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %31, i32 0, i32 1
  %33 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %34 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  store i32* %32, i32** %35, align 8
  %36 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %37 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @nfs_alloc_seqid(i32* %41, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %46 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %25
  br label %130

54:                                               ; preds = %25
  %55 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %56 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %55, i32 0, i32 3
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @nfs_alloc_seqid(i32* %56, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i32* %59, i32** %62, align 8
  %63 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %64 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %124

69:                                               ; preds = %54
  %70 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %71 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %70, i32 0, i32 2
  %72 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %73 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  store i32* %71, i32** %74, align 8
  %75 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %76 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %81 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 8
  %84 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %85 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %89 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %93 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %96 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %100 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %104 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32* %102, i32** %105, align 8
  %106 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %107 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %108 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %107, i32 0, i32 4
  store %struct.nfs4_lock_state* %106, %struct.nfs4_lock_state** %108, align 8
  %109 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %110 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %111 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %110, i32 0, i32 3
  store %struct.nfs_server* %109, %struct.nfs_server** %111, align 8
  %112 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %113 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %112, i32 0, i32 0
  %114 = call i32 @atomic_inc(i32* %113)
  %115 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %116 = call i32 @get_nfs_open_context(%struct.nfs_open_context* %115)
  %117 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %118 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %120 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %119, i32 0, i32 1
  %121 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %122 = call i32 @memcpy(i32* %120, %struct.file_lock* %121, i32 4)
  %123 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  store %struct.nfs4_lockdata* %123, %struct.nfs4_lockdata** %5, align 8
  br label %133

124:                                              ; preds = %68
  %125 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %126 = getelementptr inbounds %struct.nfs4_lockdata, %struct.nfs4_lockdata* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @nfs_free_seqid(i32* %128)
  br label %130

130:                                              ; preds = %124, %53
  %131 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %10, align 8
  %132 = call i32 @kfree(%struct.nfs4_lockdata* %131)
  store %struct.nfs4_lockdata* null, %struct.nfs4_lockdata** %5, align 8
  br label %133

133:                                              ; preds = %130, %69, %24
  %134 = load %struct.nfs4_lockdata*, %struct.nfs4_lockdata** %5, align 8
  ret %struct.nfs4_lockdata* %134
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_lockdata* @kzalloc(i32, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i8* @nfs_alloc_seqid(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @memcpy(i32*, %struct.file_lock*, i32) #1

declare dso_local i32 @nfs_free_seqid(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_lockdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
