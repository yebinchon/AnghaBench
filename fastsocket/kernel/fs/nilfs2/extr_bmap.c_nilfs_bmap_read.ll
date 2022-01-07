; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_5__, i8*, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nilfs_inode = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }

@NILFS_BMAP_SIZE = common dso_local global i32 0, align 4
@NILFS_BMAP_PTR_P = common dso_local global i32 0, align 4
@NILFS_BMAP_NEW_PTR_INIT = common dso_local global i8* null, align 8
@nilfs_bmap_dat_lock_key = common dso_local global i32 0, align 4
@NILFS_BMAP_PTR_VS = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i8* null, align 8
@nilfs_bmap_mdt_lock_key = common dso_local global i32 0, align 4
@NILFS_BMAP_PTR_VM = common dso_local global i32 0, align 4
@NILFS_BMAP_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_bmap_read(%struct.nilfs_bmap* %0, %struct.nilfs_inode* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.nilfs_inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %4, align 8
  %5 = load %struct.nilfs_inode*, %struct.nilfs_inode** %4, align 8
  %6 = icmp eq %struct.nilfs_inode* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NILFS_BMAP_SIZE, align 4
  %13 = call i32 @memset(i32 %11, i32 0, i32 %12)
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nilfs_inode*, %struct.nilfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NILFS_BMAP_SIZE, align 4
  %23 = call i32 @memcpy(i32 %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %7
  %25 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %26 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %25, i32 0, i32 4
  %27 = call i32 @init_rwsem(i32* %26)
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %29 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %31 = call %struct.TYPE_6__* @NILFS_BMAP_I(%struct.nilfs_bmap* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %34 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %33, i32 0, i32 5
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %36 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %68 [
    i32 130, label %40
    i32 131, label %52
    i32 128, label %52
    i32 129, label %64
  ]

40:                                               ; preds = %24
  %41 = load i32, i32* @NILFS_BMAP_PTR_P, align 4
  %42 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %43 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %45 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** @NILFS_BMAP_NEW_PTR_INIT, align 8
  %47 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %48 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %50 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %49, i32 0, i32 4
  %51 = call i32 @lockdep_set_class(i32* %50, i32* @nilfs_bmap_dat_lock_key)
  br label %77

52:                                               ; preds = %24, %24
  %53 = load i32, i32* @NILFS_BMAP_PTR_VS, align 4
  %54 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %55 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %57 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load i8*, i8** @NILFS_BMAP_INVALID_PTR, align 8
  %59 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %60 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %62 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %61, i32 0, i32 4
  %63 = call i32 @lockdep_set_class(i32* %62, i32* @nilfs_bmap_mdt_lock_key)
  br label %77

64:                                               ; preds = %24
  %65 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %66 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %65, i32 0, i32 4
  %67 = call i32 @lockdep_set_class(i32* %66, i32* @nilfs_bmap_mdt_lock_key)
  br label %68

68:                                               ; preds = %24, %64
  %69 = load i32, i32* @NILFS_BMAP_PTR_VM, align 4
  %70 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %71 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %73 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i8*, i8** @NILFS_BMAP_INVALID_PTR, align 8
  %75 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %76 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %68, %52, %40
  %78 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %79 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NILFS_BMAP_LARGE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %87 = call i32 @nilfs_btree_init(%struct.nilfs_bmap* %86)
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %90 = call i32 @nilfs_direct_init(%struct.nilfs_bmap* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i32 [ %87, %85 ], [ %90, %88 ]
  ret i32 %92
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @nilfs_btree_init(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_direct_init(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
