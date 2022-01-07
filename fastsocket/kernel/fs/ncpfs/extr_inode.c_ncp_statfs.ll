; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, %struct.super_block* }
%struct.inode = type { i32 }
%struct.super_block = type { %struct.dentry* }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.ncp_inode_info = type { i32, i32 }
%struct.ncp_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ncp_volume_info = type { i32, i32, i32, i32, i32 }

@NCP_SUPER_MAGIC = common dso_local global i8* null, align 8
@NCP_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ncp_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ncp_inode_info*, align 8
  %9 = alloca %struct.ncp_server*, align 8
  %10 = alloca %struct.ncp_volume_info, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %11, align 8
  %17 = load %struct.super_block*, %struct.super_block** %11, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %104

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.ncp_inode_info* @NCP_FINFO(%struct.inode* %31)
  store %struct.ncp_inode_info* %32, %struct.ncp_inode_info** %8, align 8
  %33 = load %struct.ncp_inode_info*, %struct.ncp_inode_info** %8, align 8
  %34 = icmp ne %struct.ncp_inode_info* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %104

36:                                               ; preds = %30
  %37 = load %struct.super_block*, %struct.super_block** %11, align 8
  %38 = call %struct.ncp_server* @NCP_SBP(%struct.super_block* %37)
  store %struct.ncp_server* %38, %struct.ncp_server** %9, align 8
  %39 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %40 = icmp ne %struct.ncp_server* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %104

42:                                               ; preds = %36
  %43 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %44 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %104

51:                                               ; preds = %42
  %52 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %53 = load %struct.ncp_inode_info*, %struct.ncp_inode_info** %8, align 8
  %54 = getelementptr inbounds %struct.ncp_inode_info, %struct.ncp_inode_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ncp_inode_info*, %struct.ncp_inode_info** %8, align 8
  %57 = getelementptr inbounds %struct.ncp_inode_info, %struct.ncp_inode_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ncp_dirhandle_alloc(%struct.ncp_server* %52, i32 %55, i32 %58, i32* %13)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %104

63:                                               ; preds = %51
  %64 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ncp_get_directory_info(%struct.ncp_server* %64, i32 %65, %struct.ncp_volume_info* %10)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ncp_dirhandle_free(%struct.ncp_server* %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %104

73:                                               ; preds = %63
  %74 = load i8*, i8** @NCP_SUPER_MAGIC, align 8
  %75 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %76 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 512
  %80 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %81 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %85 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %89 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %93 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %97 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %103 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %102, i32 0, i32 1
  store i32 12, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %119

104:                                              ; preds = %72, %62, %50, %41, %35, %29, %22
  %105 = load i8*, i8** @NCP_SUPER_MAGIC, align 8
  %106 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %107 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @NCP_BLOCK_SIZE, align 4
  %109 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %110 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %112 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %111, i32 0, i32 4
  store i32 0, i32* %112, align 8
  %113 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %114 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %113, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %116 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  %117 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %118 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %117, i32 0, i32 1
  store i32 12, i32* %118, align 4
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %104, %73
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.ncp_inode_info* @NCP_FINFO(%struct.inode*) #1

declare dso_local %struct.ncp_server* @NCP_SBP(%struct.super_block*) #1

declare dso_local i32 @ncp_dirhandle_alloc(%struct.ncp_server*, i32, i32, i32*) #1

declare dso_local i32 @ncp_get_directory_info(%struct.ncp_server*, i32, %struct.ncp_volume_info*) #1

declare dso_local i32 @ncp_dirhandle_free(%struct.ncp_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
