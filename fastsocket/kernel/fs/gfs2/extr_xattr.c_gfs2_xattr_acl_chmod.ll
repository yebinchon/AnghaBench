; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.inode }
%struct.inode = type { i32 }
%struct.iattr = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_ea_location = type { i32, i32 }

@GFS2_EATYPE_SYS = common dso_local global i32 0, align 4
@GFS2_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_xattr_acl_chmod(%struct.gfs2_inode* %0, %struct.iattr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.gfs2_ea_location, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %9, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %17 = load i32, i32* @GFS2_EATYPE_SYS, align 4
  %18 = load i32, i32* @GFS2_POSIX_ACL_ACCESS, align 4
  %19 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %16, i32 %17, i32 %18, %struct.gfs2_ea_location* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GFS2_EA_IS_STUFFED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %31 = load i64, i64* @RES_DINODE, align 8
  %32 = load i64, i64* @RES_EATTR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %30, i64 %33, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gfs2_trans_add_meta(i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GFS2_EA2DATA(i32 %45)
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GFS2_EA_DATA_LEN(i32 %49)
  %51 = call i32 @memcpy(i32 %46, i8* %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %29
  br label %59

53:                                               ; preds = %24
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @ea_acl_chmod_unstuffed(%struct.gfs2_inode* %54, i32 %56, i8* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %53, %52
  %60 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @brelse(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %59
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load %struct.iattr*, %struct.iattr** %6, align 8
  %70 = call i32 @gfs2_setattr_simple(%struct.inode* %68, %struct.iattr* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %72 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %67, %65, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i32, %struct.gfs2_ea_location*) #1

declare dso_local i64 @GFS2_EA_IS_STUFFED(i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @GFS2_EA2DATA(i32) #1

declare dso_local i32 @GFS2_EA_DATA_LEN(i32) #1

declare dso_local i32 @ea_acl_chmod_unstuffed(%struct.gfs2_inode*, i32, i8*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @gfs2_setattr_simple(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
