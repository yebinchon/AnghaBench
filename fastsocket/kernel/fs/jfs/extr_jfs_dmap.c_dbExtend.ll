; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbExtend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbExtend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_sb_info = type { i32, %struct.bmap*, %struct.inode* }
%struct.bmap = type { i32, i32, i32 }
%struct.metapage = type { i64 }
%struct.dmap = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@RDWRLOCK_DMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"dbExtend: the block is outside the filesystem\00", align 1
@EIO = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @dbExtend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbExtend(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jfs_sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.dmap*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.jfs_sb_info* @JFS_SBI(i32 %22)
  store %struct.jfs_sb_info* %23, %struct.jfs_sb_info** %10, align 8
  %24 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %10, align 8
  %25 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %24, i32 0, i32 2
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %18, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %10, align 8
  %29 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %27, %31
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %10, align 8
  %41 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %139

47:                                               ; preds = %34, %4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load %struct.inode*, %struct.inode** %18, align 8
  %55 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %56 = call i32 @IREAD_LOCK(%struct.inode* %54, i32 %55)
  %57 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %10, align 8
  %58 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %57, i32 0, i32 1
  %59 = load %struct.bmap*, %struct.bmap** %58, align 8
  store %struct.bmap* %59, %struct.bmap** %19, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.bmap*, %struct.bmap** %19, align 8
  %65 = getelementptr inbounds %struct.bmap, %struct.bmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62, %47
  %69 = load %struct.inode*, %struct.inode** %18, align 8
  %70 = call i32 @IREAD_UNLOCK(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @jfs_error(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %139

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @BPERDMAP, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.bmap*, %struct.bmap** %19, align 8
  %84 = getelementptr inbounds %struct.bmap, %struct.bmap* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.bmap*, %struct.bmap** %19, align 8
  %90 = getelementptr inbounds %struct.bmap, %struct.bmap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %88, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87, %81, %77
  %96 = load %struct.inode*, %struct.inode** %18, align 8
  %97 = call i32 @IREAD_UNLOCK(%struct.inode* %96)
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %139

100:                                              ; preds = %87
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.bmap*, %struct.bmap** %19, align 8
  %103 = getelementptr inbounds %struct.bmap, %struct.bmap* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BLKTODMAP(i32 %101, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.inode*, %struct.inode** %18, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @PSIZE, align 4
  %109 = call %struct.metapage* @read_metapage(%struct.inode* %106, i32 %107, i32 %108, i32 0)
  store %struct.metapage* %109, %struct.metapage** %15, align 8
  %110 = load %struct.metapage*, %struct.metapage** %15, align 8
  %111 = icmp eq %struct.metapage* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load %struct.inode*, %struct.inode** %18, align 8
  %114 = call i32 @IREAD_UNLOCK(%struct.inode* %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %139

117:                                              ; preds = %100
  %118 = load %struct.metapage*, %struct.metapage** %15, align 8
  %119 = getelementptr inbounds %struct.metapage, %struct.metapage* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.dmap*
  store %struct.dmap* %121, %struct.dmap** %16, align 8
  %122 = load %struct.bmap*, %struct.bmap** %19, align 8
  %123 = load %struct.dmap*, %struct.dmap** %16, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @dbAllocNext(%struct.bmap* %122, %struct.dmap* %123, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load %struct.inode*, %struct.inode** %18, align 8
  %128 = call i32 @IREAD_UNLOCK(%struct.inode* %127)
  %129 = load i32, i32* %17, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load %struct.metapage*, %struct.metapage** %15, align 8
  %133 = call i32 @write_metapage(%struct.metapage* %132)
  br label %137

134:                                              ; preds = %117
  %135 = load %struct.metapage*, %struct.metapage** %15, align 8
  %136 = call i32 @release_metapage(%struct.metapage* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %112, %95, %68, %44
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @BLKTODMAP(i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @dbAllocNext(%struct.bmap*, %struct.dmap*, i32, i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
