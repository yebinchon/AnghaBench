; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup_verify_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup_verify_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.nfs_server = type { i32 }

@LOOKUP_REVAL = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@NFS_MOUNT_NOCTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nameidata*)* @nfs_lookup_verify_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lookup_verify_inode(%struct.inode* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %7)
  store %struct.nfs_server* %8, %struct.nfs_server** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i64 @IS_AUTOMOUNT(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %15 = icmp ne %struct.nameidata* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LOOKUP_REVAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %26 = load i32, i32* @LOOKUP_OPEN, align 4
  %27 = call i64 @nfs_lookup_check_intent(%struct.nameidata* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %31 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS_MOUNT_NOCTO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISDIR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  br label %54

49:                                               ; preds = %42, %29, %24
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %13
  %51 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @nfs_revalidate_inode(%struct.nfs_server* %51, %struct.inode* %52)
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %48, %23
  %55 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @__nfs_revalidate_inode(%struct.nfs_server* %55, %struct.inode* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %50, %49, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @IS_AUTOMOUNT(%struct.inode*) #1

declare dso_local i64 @nfs_lookup_check_intent(%struct.nameidata*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

declare dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
