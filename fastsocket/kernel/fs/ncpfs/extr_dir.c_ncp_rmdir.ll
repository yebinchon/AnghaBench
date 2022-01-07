; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncp_server = type { i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ncp_rmdir: removing %s/%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ncp_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ncp_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %11)
  store %struct.ncp_server* %12, %struct.ncp_server** %5, align 8
  %13 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = call i32 (...) @lock_kernel()
  %32 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %33 = call i32 @ncp_conn_valid(%struct.ncp_server* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %89

36:                                               ; preds = %2
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = call i32 @d_unhashed(%struct.dentry* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %89

43:                                               ; preds = %36
  %44 = mul nuw i64 4, %15
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = call i32 @ncp_preserve_case(%struct.inode* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @ncp_io2vol(%struct.ncp_server* %46, i32* %17, i32* %8, i32 %50, i32 %54, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %89

64:                                               ; preds = %43
  %65 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = call i32 @ncp_del_file_or_subdir(%struct.ncp_server* %65, %struct.inode* %66, i32* %17)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %85 [
    i32 0, label %69
    i32 133, label %70
    i32 138, label %70
    i32 143, label %73
    i32 144, label %73
    i32 159, label %76
    i32 160, label %79
    i32 255, label %82
  ]

69:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %88

70:                                               ; preds = %64, %64
  %71 = load i32, i32* @EACCES, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %88

73:                                               ; preds = %64, %64
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %88

76:                                               ; preds = %64
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %88

79:                                               ; preds = %64
  %80 = load i32, i32* @ENOTEMPTY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %88

82:                                               ; preds = %64
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %64
  %86 = load i32, i32* @EACCES, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %82, %79, %76, %73, %70, %69
  br label %89

89:                                               ; preds = %88, %63, %42, %35
  %90 = call i32 (...) @unlock_kernel()
  %91 = load i32, i32* %6, align 4
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #1

declare dso_local i32 @ncp_del_file_or_subdir(%struct.ncp_server*, %struct.inode*, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
