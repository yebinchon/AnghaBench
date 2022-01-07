; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"unlink %s/%s, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @smb_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @smb_close(i64 %18)
  br label %20

20:                                               ; preds = %15, %4
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @smb_close(i64 %28)
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = call i32 @smb_proc_unlink(%struct.dentry* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call i32 @DENTRY_PATH(%struct.dentry* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %58

39:                                               ; preds = %25
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = call i32 @d_delete(%struct.dentry* %40)
  br label %42

42:                                               ; preds = %39, %20
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @smb_invalid_dir_cache(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @smb_invalid_dir_cache(%struct.inode* %45)
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = call i32 @smb_proc_mv(%struct.dentry* %47, %struct.dentry* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i32 @smb_renew_times(%struct.dentry* %53)
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = call i32 @smb_renew_times(%struct.dentry* %55)
  br label %57

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %34
  %59 = call i32 (...) @unlock_kernel()
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_close(i64) #1

declare dso_local i32 @smb_proc_unlink(%struct.dentry*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

declare dso_local i32 @smb_proc_mv(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @smb_renew_times(%struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
