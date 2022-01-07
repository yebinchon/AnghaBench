; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ncp_server = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ncp_unlink: unlinking %s/%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ncp_unlink: closing file\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ncp: removed %s/%s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NCP_MOUNT_STRONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ncp_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ncp_server*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 2
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = call i32 (...) @lock_kernel()
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %12)
  store %struct.ncp_server* %13, %struct.ncp_server** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %28 = call i32 @ncp_conn_valid(%struct.ncp_server* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @PPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @ncp_make_closed(%struct.inode* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @ncp_del_file_or_subdir2(%struct.ncp_server* %39, %struct.dentry* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %67 [
    i32 0, label %43
    i32 133, label %55
    i32 138, label %55
    i32 141, label %58
    i32 142, label %58
    i32 143, label %61
    i32 144, label %61
    i32 156, label %61
    i32 255, label %64
  ]

43:                                               ; preds = %38
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dentry*, %struct.dentry** %4, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %53)
  br label %70

55:                                               ; preds = %38, %38
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %38, %38
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %70

61:                                               ; preds = %38, %38, %38
  %62 = load i32, i32* @EPERM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %70

64:                                               ; preds = %38
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %38
  %68 = load i32, i32* @EACCES, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64, %61, %58, %55, %43
  br label %71

71:                                               ; preds = %70, %30
  %72 = call i32 (...) @unlock_kernel()
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @PPRINTK(i8*) #1

declare dso_local i32 @ncp_make_closed(%struct.inode*) #1

declare dso_local i32 @ncp_del_file_or_subdir2(%struct.ncp_server*, %struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
