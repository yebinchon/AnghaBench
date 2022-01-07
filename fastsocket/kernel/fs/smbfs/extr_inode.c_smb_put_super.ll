; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.smb_sb_info = type { i64, %struct.smb_sb_info*, i32 }

@CONN_INVALID = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @smb_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.smb_sb_info* @SMB_SB(%struct.super_block* %4)
  store %struct.smb_sb_info* %5, %struct.smb_sb_info** %3, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %8 = call i32 @smb_lock_server(%struct.smb_sb_info* %7)
  %9 = load i32, i32* @CONN_INVALID, align 4
  %10 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %13 = call i32 @smbiod_unregister_server(%struct.smb_sb_info* %12)
  %14 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %15 = call i32 @smb_close_socket(%struct.smb_sb_info* %14)
  %16 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SIGTERM, align 4
  %25 = call i32 @kill_pid(i64 %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %27, i32 0, i32 1
  %29 = load %struct.smb_sb_info*, %struct.smb_sb_info** %28, align 8
  %30 = call i32 @kfree(%struct.smb_sb_info* %29)
  %31 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %32 = call i32 @smb_unload_nls(%struct.smb_sb_info* %31)
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %36 = call i32 @smb_unlock_server(%struct.smb_sb_info* %35)
  %37 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @put_pid(i64 %39)
  %41 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %42 = call i32 @kfree(%struct.smb_sb_info* %41)
  %43 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.smb_sb_info* @SMB_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_lock_server(%struct.smb_sb_info*) #1

declare dso_local i32 @smbiod_unregister_server(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_close_socket(%struct.smb_sb_info*) #1

declare dso_local i32 @kill_pid(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_unload_nls(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_unlock_server(%struct.smb_sb_info*) #1

declare dso_local i32 @put_pid(i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
