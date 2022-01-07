; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_dinode_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_dinode_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_dinode_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dinode_dealloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 1
  %10 = call %struct.gfs2_sbd* @GFS2_SB(i32* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %4, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = call i32 @gfs2_get_inode_blocks(i32* %12)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %17 = call i64 @gfs2_consist_inode(%struct.gfs2_inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = call i32 @gfs2_dinode_print(%struct.gfs2_inode* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %93

32:                                               ; preds = %25
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %34 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %35 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %36 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %93

41:                                               ; preds = %32
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %42, i32 %45, i32 1)
  store %struct.gfs2_rgrpd* %46, %struct.gfs2_rgrpd** %5, align 8
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %48 = icmp ne %struct.gfs2_rgrpd* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %51 = call i64 @gfs2_consist_inode(%struct.gfs2_inode* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %89

54:                                               ; preds = %41
  %55 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %59 = call i32 @gfs2_glock_nq_init(i32 %57, i32 %58, i32 0, %struct.gfs2_holder* %6)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %89

63:                                               ; preds = %54
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %65 = load i64, i64* @RES_RG_BIT, align 8
  %66 = load i64, i64* @RES_STATFS, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @RES_QUOTA, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %64, i64 %69, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %87

79:                                               ; preds = %63
  %80 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %82 = call i32 @gfs2_free_di(%struct.gfs2_rgrpd* %80, %struct.gfs2_inode* %81)
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %84 = call i32 @gfs2_final_release_pages(%struct.gfs2_inode* %83)
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %86 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %85)
  br label %87

87:                                               ; preds = %79, %78
  %88 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  br label %89

89:                                               ; preds = %87, %62, %49
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %91 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %39, %30, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_get_inode_blocks(i32*) #1

declare dso_local i64 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_print(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_free_di(%struct.gfs2_rgrpd*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_final_release_pages(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
