; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_set_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_set_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* }
%struct.smb_fattr = type { i32 }

@aRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.smb_sb_info*)* @smb_set_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_set_rw(%struct.dentry* %0, %struct.smb_sb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_fattr, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.smb_sb_info* %1, %struct.smb_sb_info** %5, align 8
  %8 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %9 = call i32 @smb_init_dirent(%struct.smb_sb_info* %8, %struct.smb_fattr* %7)
  %10 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)*, i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)** %13, align 8
  %15 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 %14(%struct.smb_sb_info* %15, %struct.dentry* %16, %struct.smb_fattr* %7)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %19 = call i32 @smb_finish_dirent(%struct.smb_sb_info* %18, %struct.smb_fattr* %7)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @aRONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @aRONLY, align 4
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @smb_proc_setattr_core(%struct.smb_sb_info* %36, %struct.dentry* %37, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %24
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @smb_init_dirent(%struct.smb_sb_info*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_finish_dirent(%struct.smb_sb_info*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_setattr_core(%struct.smb_sb_info*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
