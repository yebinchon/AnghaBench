; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ncp_server = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ncp_rename: %s/%s to %s/%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ncp renamed %s -> %s.\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NCP_MOUNT_STRONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @ncp_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ncp_server*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %16)
  store %struct.ncp_server* %17, %struct.ncp_server** %9, align 8
  %18 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %42, i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  %50 = call i32 (...) @lock_kernel()
  %51 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %52 = call i32 @ncp_conn_valid(%struct.ncp_server* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %4
  br label %129

55:                                               ; preds = %4
  %56 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = call i32 @ncp_age_dentry(%struct.ncp_server* %56, %struct.dentry* %57)
  %59 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = call i32 @ncp_age_dentry(%struct.ncp_server* %59, %struct.dentry* %60)
  %62 = mul nuw i64 4, %20
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call i32 @ncp_preserve_case(%struct.inode* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @ncp_io2vol(%struct.ncp_server* %64, i32* %22, i32* %11, i32 %68, i32 %72, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %55
  br label %129

82:                                               ; preds = %55
  %83 = mul nuw i64 4, %25
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %86 = load %struct.dentry*, %struct.dentry** %8, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dentry*, %struct.dentry** %8, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = call i32 @ncp_preserve_case(%struct.inode* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @ncp_io2vol(%struct.ncp_server* %85, i32* %26, i32* %12, i32 %89, i32 %93, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %82
  br label %129

103:                                              ; preds = %82
  %104 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = call i32 @ncp_ren_or_mov_file_or_subdir(%struct.ncp_server* %104, %struct.inode* %105, i32* %22, %struct.inode* %106, i32* %26)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  switch i32 %108, label %125 [
    i32 0, label %109
    i32 158, label %119
    i32 255, label %122
  ]

109:                                              ; preds = %103
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %117)
  br label %128

119:                                              ; preds = %103
  %120 = load i32, i32* @ENAMETOOLONG, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %128

122:                                              ; preds = %103
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  br label %128

125:                                              ; preds = %103
  %126 = load i32, i32* @EACCES, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125, %122, %119, %109
  br label %129

129:                                              ; preds = %128, %102, %81, %54
  %130 = call i32 (...) @unlock_kernel()
  %131 = load i32, i32* %10, align 4
  %132 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i32 %131
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @ncp_age_dentry(%struct.ncp_server*, %struct.dentry*) #1

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #1

declare dso_local i32 @ncp_ren_or_mov_file_or_subdir(%struct.ncp_server*, %struct.inode*, i32*, %struct.inode*, i32*) #1

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
