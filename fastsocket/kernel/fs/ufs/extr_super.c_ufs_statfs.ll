; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.kstatfs = type { i64, i64, i32, %struct.TYPE_11__, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i8** }
%struct.ufs_sb_private_info = type { i64, i32, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.ufs_super_block_first = type { i32 }
%struct.ufs_super_block_second = type { i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.ufs_sb_private_info* }

@UFS_TYPE_MASK = common dso_local global i32 0, align 4
@UFS_TYPE_UFS2 = common dso_local global i32 0, align 4
@UFS2_MAGIC = common dso_local global i32 0, align 4
@UFS_MAGIC = common dso_local global i32 0, align 4
@UFS_MAXNAMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ufs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufs_super_block_first*, align 8
  %9 = alloca %struct.ufs_super_block_second*, align 8
  %10 = alloca %struct.ufs_super_block_third*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_12__* @UFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  store %struct.ufs_sb_private_info* %18, %struct.ufs_sb_private_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.TYPE_12__* @UFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @huge_encode_dev(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = call i32 (...) @lock_kernel()
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %31 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %30)
  store %struct.ufs_super_block_first* %31, %struct.ufs_super_block_first** %8, align 8
  %32 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %33 = call %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info* %32)
  store %struct.ufs_super_block_second* %33, %struct.ufs_super_block_second** %9, align 8
  %34 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %35 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %34)
  store %struct.ufs_super_block_third* %35, %struct.ufs_super_block_third** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @UFS_TYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @UFS_TYPE_UFS2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %2
  %42 = load i32, i32* @UFS2_MAGIC, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %10, align 8
  %47 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @fs64_to_cpu(%struct.super_block* %45, i32 %50)
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  br label %63

54:                                               ; preds = %2
  %55 = load i32, i32* @UFS_MAGIC, align 4
  %56 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %59 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %54, %41
  %64 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %65 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ufs_blkstofrags(i32 %67)
  %69 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %70 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %68, %72
  %74 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %75 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %77 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %81 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %88 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %91 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = sdiv i64 %92, 100
  %94 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %95 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul nsw i64 %93, %96
  %98 = icmp sgt i64 %89, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %63
  %100 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %104 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = sdiv i64 %105, 100
  %107 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %108 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 %106, %109
  %111 = sub nsw i64 %102, %110
  br label %113

112:                                              ; preds = %63
  br label %113

113:                                              ; preds = %112, %99
  %114 = phi i64 [ %111, %99 ], [ 0, %112 ]
  %115 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %116 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %118 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %121 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %125 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @UFS_MAXNAMLEN, align 4
  %127 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %128 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %133 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  store i8* %131, i8** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, 32
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %142 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  store i8* %140, i8** %145, align 8
  %146 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local %struct.TYPE_12__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i64 @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @ufs_blkstofrags(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
