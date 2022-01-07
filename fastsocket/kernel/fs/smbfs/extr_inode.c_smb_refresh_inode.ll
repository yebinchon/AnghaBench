; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_refresh_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_refresh_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.smb_fattr = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s/%s changed mode, %07o to %07o\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @smb_refresh_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_refresh_inode(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_fattr, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @smb_proc_getattr(%struct.dentry* %10, %struct.smb_fattr* %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i32 @smb_renew_times(%struct.dentry* %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %14
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISLNK(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IFMT, align 4
  %36 = and i32 %34, %35
  %37 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S_IFMT, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @smb_set_inode_attr(%struct.inode* %43, %struct.smb_fattr* %6)
  br label %78

45:                                               ; preds = %31
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = call i32 @DENTRY_PATH(%struct.dentry* %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PARANOIA(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %6, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call i32 @make_bad_inode(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @S_ISDIR(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %45
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call i32 @invalidate_remote_inode(%struct.inode* %70)
  br label %75

72:                                               ; preds = %45
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call i32 @smb_invalid_dir_cache(%struct.inode* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %42
  br label %79

79:                                               ; preds = %78, %1
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %29, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @smb_proc_getattr(%struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_renew_times(%struct.dentry*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @smb_set_inode_attr(%struct.inode*, %struct.smb_fattr*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @invalidate_remote_inode(%struct.inode*) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
