; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smb_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_close(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call i64 @smb_is_open(%struct.inode* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %9)
  store %struct.smb_sb_info* %10, %struct.smb_sb_info** %4, align 8
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @smb_proc_close_inode(%struct.smb_sb_info* %11, %struct.inode* %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i64 @smb_is_open(%struct.inode*) #1

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local i32 @smb_proc_close_inode(%struct.smb_sb_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
