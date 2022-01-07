; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c___setup_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c___setup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_5__, %struct.TYPE_6__, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i64, i64, i64, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i64, i64, i8*, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_6__ = type { i8* }
%struct.btrfs_fs_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, %struct.btrfs_root*, %struct.btrfs_fs_info*, i8*)* @__setup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_root(i8* %0, i8* %1, i8* %2, i8* %3, %struct.btrfs_root* %4, %struct.btrfs_fs_info* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_fs_info*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.btrfs_root* %4, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_fs_info* %5, %struct.btrfs_fs_info** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 42
  store i32* null, i32** %16, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 41
  store i32* null, i32** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 40
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 39
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 38
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 37
  store i8* %28, i8** %30, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 36
  store i64 0, i64* %32, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 35
  store i64 0, i64* %34, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 34
  store i64 0, i64* %36, align 8
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 33
  store i64 0, i64* %38, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 32
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 31
  store i8* %41, i8** %43, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 30
  store i64 0, i64* %45, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 29
  store i64 0, i64* %47, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 28
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @RB_ROOT, align 4
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 27
  store i32 %50, i32* %52, align 4
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 26
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i32 @INIT_RADIX_TREE(i32* %54, i32 %55)
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 25
  store i32* null, i32** %58, align 8
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 24
  store i32* null, i32** %60, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 23
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %65 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %64, i32 0, i32 22
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 21
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 20
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 19
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %77 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %76, i32 0, i32 18
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 17
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %83 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %82, i32 0, i32 16
  %84 = call i32 @init_waitqueue_head(i32* %83)
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 15
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @init_waitqueue_head(i32* %88)
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %91 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %90, i32 0, i32 15
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = call i32 @init_waitqueue_head(i32* %93)
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 14
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @atomic_set(i32* %98, i32 0)
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %101 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %100, i32 0, i32 14
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = call i32 @atomic_set(i32* %103, i32 0)
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %106 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %105, i32 0, i32 13
  %107 = call i32 @atomic_set(i32* %106, i32 0)
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %109 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %108, i32 0, i32 12
  %110 = call i32 @atomic_set(i32* %109, i32 0)
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %112 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %111, i32 0, i32 11
  store i64 0, i64* %112, align 8
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %114 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %116 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %115, i32 0, i32 9
  store i64 0, i64* %116, align 8
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %118 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %117, i32 0, i32 8
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @extent_io_tree_init(i32* %118, i32 %123)
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %126 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %125, i32 0, i32 1
  %127 = call i32 @memset(%struct.TYPE_6__* %126, i32 0, i32 8)
  %128 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %129 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %128, i32 0, i32 7
  %130 = call i32 @memset(%struct.TYPE_6__* %129, i32 0, i32 8)
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %132 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %131, i32 0, i32 6
  %133 = call i32 @memset(%struct.TYPE_6__* %132, i32 0, i32 8)
  %134 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %135 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %134, i32 0, i32 5
  %136 = call i32 @memset(%struct.TYPE_6__* %135, i32 0, i32 8)
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %138 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %141 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %143 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %142, i32 0, i32 3
  %144 = call i32 @init_completion(i32* %143)
  %145 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %146 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %149 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  %151 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %152 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  store i32* null, i32** %153, align 8
  %154 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %155 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %162 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = call i32 @INIT_LIST_HEAD(i32* %163)
  %165 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %166 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = call i32 @init_rwsem(i32* %167)
  ret void
}

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @extent_io_tree_init(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
