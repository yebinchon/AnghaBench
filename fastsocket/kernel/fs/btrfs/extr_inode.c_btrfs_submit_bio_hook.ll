; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_bio_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.btrfs_root* }

@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@REQ_WRITE = common dso_local global i32 0, align 4
@EXTENT_BIO_COMPRESSED = common dso_local global i64 0, align 8
@BTRFS_DATA_RELOC_TREE_OBJECTID = common dso_local global i64 0, align 8
@__btrfs_submit_bio_start = common dso_local global i32 0, align 4
@__btrfs_submit_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.bio*, i32, i64, i32)* @btrfs_submit_bio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_submit_bio_hook(%struct.inode* %0, i32 %1, %struct.bio* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.bio* %2, %struct.bio** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_root* %28, %struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 2, i32* %17, align 4
  br label %33

33:                                               ; preds = %32, %6
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @REQ_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %33
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bio*, %struct.bio** %10, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @btrfs_bio_wq_end_io(i32 %41, %struct.bio* %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %110

49:                                               ; preds = %38
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @EXTENT_BIO_COMPRESSED, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = load %struct.bio*, %struct.bio** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @btrfs_submit_compressed_read(%struct.inode* %55, %struct.bio* %56, i32 %57, i64 %58)
  store i32 %59, i32* %7, align 4
  br label %110

60:                                               ; preds = %49
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load %struct.bio*, %struct.bio** %10, align 8
  %67 = call i32 @btrfs_lookup_bio_sums(%struct.btrfs_root* %64, %struct.inode* %65, %struct.bio* %66, i32* null)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %7, align 4
  br label %110

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73
  br label %104

75:                                               ; preds = %33
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BTRFS_DATA_RELOC_TREE_OBJECTID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %104

86:                                               ; preds = %78
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %89, align 8
  %91 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.bio*, %struct.bio** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @__btrfs_submit_bio_start, align 4
  %100 = load i32, i32* @__btrfs_submit_bio_done, align 4
  %101 = call i32 @btrfs_wq_submit_bio(i32 %92, %struct.inode* %93, i32 %94, %struct.bio* %95, i32 %96, i64 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  br label %110

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %85, %74
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.bio*, %struct.bio** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @btrfs_map_bio(%struct.btrfs_root* %105, i32 %106, %struct.bio* %107, i32 %108, i32 0)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %104, %86, %70, %54, %47
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_bio_wq_end_io(i32, %struct.bio*, i32) #1

declare dso_local i32 @btrfs_submit_compressed_read(%struct.inode*, %struct.bio*, i32, i64) #1

declare dso_local i32 @btrfs_lookup_bio_sums(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i32*) #1

declare dso_local i32 @btrfs_wq_submit_bio(i32, %struct.inode*, i32, %struct.bio*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @btrfs_map_bio(%struct.btrfs_root*, i32, %struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
