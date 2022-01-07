; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_fattr = type { i32 }
%struct.smb_sb_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"setting %s/%s, open=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_setattr(%struct.dentry* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.smb_fattr*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %7)
  store %struct.smb_sb_info* %8, %struct.smb_sb_info** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call i32 @DENTRY_PATH(%struct.dentry* %9)
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @smb_is_open(i32 %13)
  %15 = call i32 @VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %19 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @smb_proc_setattr_core(%struct.smb_sb_info* %16, %struct.dentry* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @smb_is_open(i32) #1

declare dso_local i32 @smb_proc_setattr_core(%struct.smb_sb_info*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
