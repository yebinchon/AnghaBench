; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_create_dfs_fattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_create_dfs_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"creating fake fattr for DFS referral\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@CIFS_FATTR_DFS_REFERRAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_fattr*, %struct.super_block*)* @cifs_create_dfs_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_create_dfs_fattr(%struct.cifs_fattr* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.cifs_fattr*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %6)
  store %struct.cifs_sb_info* %7, %struct.cifs_sb_info** %5, align 8
  %8 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %10 = call i32 @memset(%struct.cifs_fattr* %9, i32 0, i32 48)
  %11 = load i32, i32* @S_IFDIR, align 4
  %12 = load i32, i32* @S_IXUGO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S_IRWXU, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %17 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %22 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %27 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @CURRENT_TIME, align 8
  %29 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %30 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @CURRENT_TIME, align 8
  %32 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %33 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @CURRENT_TIME, align 8
  %35 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %36 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %38 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = load i32, i32* @CIFS_FATTR_DFS_REFERRAL, align 4
  %40 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %41 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  ret void
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @memset(%struct.cifs_fattr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
