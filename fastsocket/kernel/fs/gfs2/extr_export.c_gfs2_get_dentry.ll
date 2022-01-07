; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_export.c_gfs2_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_export.c_gfs2_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32* }
%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_inum_host = type { i32, i32 }
%struct.inode = type { i32* }
%struct.TYPE_2__ = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@GFS2_BLKST_DINODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@gfs2_dops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.gfs2_inum_host*)* @gfs2_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @gfs2_get_dentry(%struct.super_block* %0, %struct.gfs2_inum_host* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.gfs2_inum_host*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.gfs2_inum_host* %1, %struct.gfs2_inum_host** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.gfs2_inum_host*, %struct.gfs2_inum_host** %5, align 8
  %14 = getelementptr inbounds %struct.gfs2_inum_host, %struct.gfs2_inum_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @gfs2_ilookup(%struct.super_block* %12, i32 %15, i32 0)
  store %struct.inode* %16, %struct.inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gfs2_inum_host*, %struct.gfs2_inum_host** %5, align 8
  %25 = getelementptr inbounds %struct.gfs2_inum_host, %struct.gfs2_inum_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @iput(%struct.inode* %29)
  %31 = load i32, i32* @ESTALE, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.inode* @ERR_PTR(i32 %32)
  %34 = bitcast %struct.inode* %33 to %struct.dentry*
  store %struct.dentry* %34, %struct.dentry** %3, align 8
  br label %78

35:                                               ; preds = %19
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %38 = load %struct.gfs2_inum_host*, %struct.gfs2_inum_host** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_inum_host, %struct.gfs2_inum_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gfs2_inum_host*, %struct.gfs2_inum_host** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_inum_host, %struct.gfs2_inum_host* %41, i32 0, i32 1
  %43 = load i32, i32* @GFS2_BLKST_DINODE, align 4
  %44 = call %struct.inode* @gfs2_lookup_by_inum(%struct.gfs2_sbd* %37, i32 %40, i32* %42, i32 %43)
  store %struct.inode* %44, %struct.inode** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.inode* @ERR_PTR(i32 %47)
  %49 = icmp eq %struct.inode* %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = load %struct.gfs2_inum_host*, %struct.gfs2_inum_host** %5, align 8
  %53 = getelementptr inbounds %struct.gfs2_inum_host, %struct.gfs2_inum_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.inode* @gfs2_ilookup(%struct.super_block* %51, i32 %54, i32 0)
  store %struct.inode* %55, %struct.inode** %7, align 8
  br label %56

56:                                               ; preds = %50, %36
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i64 @IS_ERR(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call %struct.inode* @ERR_CAST(%struct.inode* %62)
  %64 = bitcast %struct.inode* %63 to %struct.dentry*
  store %struct.dentry* %64, %struct.dentry** %3, align 8
  br label %78

65:                                               ; preds = %57
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.inode* @d_obtain_alias(%struct.inode* %66)
  %68 = bitcast %struct.inode* %67 to %struct.dentry*
  store %struct.dentry* %68, %struct.dentry** %8, align 8
  %69 = load %struct.dentry*, %struct.dentry** %8, align 8
  %70 = bitcast %struct.dentry* %69 to %struct.inode*
  %71 = call i64 @IS_ERR(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load %struct.dentry*, %struct.dentry** %8, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  store i32* @gfs2_dops, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %77, %struct.dentry** %3, align 8
  br label %78

78:                                               ; preds = %76, %61, %28
  %79 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %79
}

declare dso_local %struct.inode* @gfs2_ilookup(%struct.super_block*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @gfs2_lookup_by_inum(%struct.gfs2_sbd*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
