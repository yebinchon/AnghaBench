; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_finish_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_finish_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smb_fattr = type { i32, i32, i32, i32, i64 }

@aDIR = common dso_local global i32 0, align 4
@SMB_ST_BLKSIZE = common dso_local global i32 0, align 4
@aRONLY = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_sb_info*, %struct.smb_fattr*)* @smb_finish_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_finish_dirent(%struct.smb_sb_info* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca %struct.smb_fattr*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %3, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %4, align 8
  %5 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %6 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %70

10:                                               ; preds = %2
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %17 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %19 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @aDIR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %10
  %25 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %31 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SMB_ST_BLKSIZE, align 4
  %33 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %34 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %24, %10
  %36 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %37 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @aRONLY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32, i32* @S_IWUSR, align 4
  %44 = load i32, i32* @S_IWGRP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @S_IWOTH, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %50 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %55 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %57 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %62 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = ashr i32 %64, 9
  %66 = add nsw i32 1, %65
  %67 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %68 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %60, %53
  br label %70

70:                                               ; preds = %69, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
