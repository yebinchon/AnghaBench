; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_lookup_by_inum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_lookup_by_inum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@gfs2_inode_glops = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_lookup_by_inum(%struct.gfs2_sbd* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.gfs2_holder, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %10, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %20 = load i32, i32* @GL_SKIP, align 4
  %21 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %17, i64 %18, i32* @gfs2_inode_glops, i32 %19, i32 %20, %struct.gfs2_holder* %11)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.inode* @ERR_PTR(i32 %25)
  store %struct.inode* %26, %struct.inode** %5, align 8
  br label %85

27:                                               ; preds = %4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %28, i64 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %71

35:                                               ; preds = %27
  %36 = load %struct.super_block*, %struct.super_block** %10, align 8
  %37 = load i32, i32* @DT_UNKNOWN, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call %struct.inode* @gfs2_inode_lookup(%struct.super_block* %36, i32 %37, i64 %38, i32 0, i32 1)
  store %struct.inode* %39, %struct.inode** %12, align 8
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %71

44:                                               ; preds = %35
  %45 = load i64*, i64** %8, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32, i32* @ESTALE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %82

58:                                               ; preds = %47
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %82

69:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %82, %70, %43, %34
  %72 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %11)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = call %struct.inode* @ERR_PTR(i32 %76)
  br label %80

78:                                               ; preds = %71
  %79 = load %struct.inode*, %struct.inode** %12, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi %struct.inode* [ %77, %75 ], [ %79, %78 ]
  store %struct.inode* %81, %struct.inode** %5, align 8
  br label %85

82:                                               ; preds = %68, %57
  %83 = load %struct.inode*, %struct.inode** %12, align 8
  %84 = call i32 @iput(%struct.inode* %83)
  br label %71

85:                                               ; preds = %80, %24
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %86
}

declare dso_local i32 @gfs2_glock_nq_num(%struct.gfs2_sbd*, i64, i32*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
