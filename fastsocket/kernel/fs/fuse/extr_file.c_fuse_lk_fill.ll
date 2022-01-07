; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_lk_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_lk_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.fuse_lk_in* }
%struct.fuse_lk_in = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.fuse_lk_in }
%struct.file = type { %struct.fuse_file*, %struct.TYPE_9__ }
%struct.fuse_file = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32, i32, i32, i32 }
%struct.fuse_conn = type { i32 }

@FUSE_LK_FLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_req*, %struct.file*, %struct.file_lock*, i32, i32, i32)* @fuse_lk_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_lk_fill(%struct.fuse_req* %0, %struct.file* %1, %struct.file_lock* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fuse_req*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.fuse_conn*, align 8
  %15 = alloca %struct.fuse_file*, align 8
  %16 = alloca %struct.fuse_lk_in*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store %struct.file_lock* %2, %struct.file_lock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %13, align 8
  %24 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %23)
  store %struct.fuse_conn* %24, %struct.fuse_conn** %14, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.fuse_file*, %struct.fuse_file** %26, align 8
  store %struct.fuse_file* %27, %struct.fuse_file** %15, align 8
  %28 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %29 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store %struct.fuse_lk_in* %30, %struct.fuse_lk_in** %16, align 8
  %31 = load %struct.fuse_file*, %struct.fuse_file** %15, align 8
  %32 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %35 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %36, i32 %39)
  %41 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %42 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %47 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %50 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %53 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %59 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %63 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %6
  %68 = load i32, i32* @FUSE_LK_FLOCK, align 4
  %69 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %70 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %6
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %76 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = call i32 @get_node_id(%struct.inode* %79)
  %81 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %82 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %86 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %89 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 28, i32* %93, align 8
  %94 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %16, align 8
  %95 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %96 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store %struct.fuse_lk_in* %94, %struct.fuse_lk_in** %100, align 8
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
