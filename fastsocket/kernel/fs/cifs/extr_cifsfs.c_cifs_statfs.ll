; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i64, i64, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CIFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@CIFS_POSIX_EXTENSIONS = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @cifs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %13)
  store %struct.cifs_sb_info* %14, %struct.cifs_sb_info** %6, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %16 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %15)
  store %struct.cifs_tcon* %16, %struct.cifs_tcon** %7, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @GetXid()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @CIFS_MAGIC_NUMBER, align 4
  %21 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %22 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %27 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %29 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %31 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CAP_UNIX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load i32, i32* @CIFS_POSIX_EXTENSIONS, align 4
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %41 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le64_to_cpu(i32 %43)
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = call i32 @CIFSSMBQFSPosixInfo(i32 %48, %struct.cifs_tcon* %49, %struct.kstatfs* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %38, %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %57 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CAP_NT_SMBS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %67 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %68 = call i32 @CIFSSMBQFSInfo(i32 %65, %struct.cifs_tcon* %66, %struct.kstatfs* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %55, %52
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %75 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %76 = call i32 @SMBOldQFSInfo(i32 %73, %struct.cifs_tcon* %74, %struct.kstatfs* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @FreeXid(i32 %78)
  ret i32 0
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @CIFSSMBQFSPosixInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @CIFSSMBQFSInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @SMBOldQFSInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
