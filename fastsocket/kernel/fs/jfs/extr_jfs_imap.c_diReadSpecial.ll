; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diReadSpecial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diReadSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { i32, i64, i64, i8*, i8*, i32 }
%struct.dinode = type { i32, i32 }
%struct.metapage = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"diReadSpecial: new_inode returned NULL!\00", align 1
@AITBL_OFF = common dso_local global i32 0, align 4
@L2PSIZE = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@jfs_metapage_aops = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@FILESYSTEM_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @diReadSpecial(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dinode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.metapage*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %13)
  store %struct.jfs_sb_info* %14, %struct.jfs_sb_info** %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.inode* @new_inode(%struct.super_block* %15)
  store %struct.inode* %16, %struct.inode** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = icmp eq %struct.inode* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @jfs_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %21, %struct.inode** %4, align 8
  br label %148

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %27 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %26, i32 0, i32 5
  %28 = call i32 @addressPXD(i32* %27)
  %29 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %30 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %34 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %49

39:                                               ; preds = %22
  %40 = load i32, i32* @AITBL_OFF, align 4
  %41 = load i32, i32* @L2PSIZE, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %25
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @INOSPEREXT, align 4
  %52 = icmp slt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 3
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %65 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %63, %66
  %68 = load i32, i32* @PSIZE, align 4
  %69 = call %struct.metapage* @read_metapage(%struct.inode* %62, i32 %67, i32 %68, i32 1)
  store %struct.metapage* %69, %struct.metapage** %12, align 8
  %70 = load %struct.metapage*, %struct.metapage** %12, align 8
  %71 = icmp eq %struct.metapage* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %49
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @iput(%struct.inode* %75)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %148

77:                                               ; preds = %49
  %78 = load %struct.metapage*, %struct.metapage** %12, align 8
  %79 = getelementptr inbounds %struct.metapage, %struct.metapage* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.dinode*
  store %struct.dinode* %81, %struct.dinode** %10, align 8
  %82 = load i32, i32* %6, align 4
  %83 = srem i32 %82, 8
  %84 = load %struct.dinode*, %struct.dinode** %10, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.dinode, %struct.dinode* %84, i64 %85
  store %struct.dinode* %86, %struct.dinode** %10, align 8
  %87 = load %struct.dinode*, %struct.dinode** %10, align 8
  %88 = load %struct.inode*, %struct.inode** %11, align 8
  %89 = call i64 @copy_from_dinode(%struct.dinode* %87, %struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.inode*, %struct.inode** %11, align 8
  %95 = call i32 @iput(%struct.inode* %94)
  %96 = load %struct.metapage*, %struct.metapage** %12, align 8
  %97 = call i32 @release_metapage(%struct.metapage* %96)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %148

98:                                               ; preds = %77
  %99 = load %struct.inode*, %struct.inode** %11, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32* @jfs_metapage_aops, i32** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %11, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* @GFP_NOFS, align 4
  %107 = call i32 @mapping_set_gfp_mask(%struct.TYPE_5__* %105, i32 %106)
  %108 = load i32, i32* @S_NOQUOTA, align 4
  %109 = load %struct.inode*, %struct.inode** %11, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @FILESYSTEM_I, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %98
  %117 = load %struct.inode*, %struct.inode** %11, align 8
  %118 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %122 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %116
  %126 = load %struct.dinode*, %struct.dinode** %10, align 8
  %127 = getelementptr inbounds %struct.dinode, %struct.dinode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le32_to_cpu(i32 %128)
  %130 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %131 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.dinode*, %struct.dinode** %10, align 8
  %133 = getelementptr inbounds %struct.dinode, %struct.dinode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le32_to_cpu(i32 %134)
  %136 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %137 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %125, %116, %98
  %139 = load %struct.metapage*, %struct.metapage** %12, align 8
  %140 = call i32 @release_metapage(%struct.metapage* %139)
  %141 = load %struct.inode*, %struct.inode** %11, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.inode*, %struct.inode** %11, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32* %143, i32** %146, align 8
  %147 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %147, %struct.inode** %4, align 8
  br label %148

148:                                              ; preds = %138, %91, %72, %19
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %149
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @copy_from_dinode(%struct.dinode*, %struct.inode*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
