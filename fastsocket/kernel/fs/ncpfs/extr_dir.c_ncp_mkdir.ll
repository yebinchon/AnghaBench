; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ncp_entry_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ncp_server = type { i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ncp_mkdir: making %s/%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OC_MODE_CREATE = common dso_local global i32 0, align 4
@aDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ncp_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ncp_entry_info, align 4
  %8 = alloca %struct.ncp_server*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %13)
  store %struct.ncp_server* %14, %struct.ncp_server** %8, align 8
  %15 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = call i32 (...) @lock_kernel()
  %34 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %35 = call i32 @ncp_conn_valid(%struct.ncp_server* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %102

38:                                               ; preds = %3
  %39 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i32 @ncp_age_dentry(%struct.ncp_server* %39, %struct.dentry* %40)
  %42 = mul nuw i64 4, %17
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call i32 @ncp_preserve_case(%struct.inode* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @ncp_io2vol(%struct.ncp_server* %44, i32* %19, i32* %10, i32 %48, i32 %52, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %102

62:                                               ; preds = %38
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load i32, i32* @OC_MODE_CREATE, align 4
  %68 = load i32, i32* @aDIR, align 4
  %69 = call i32 @cpu_to_le16(i32 65535)
  %70 = call i64 @ncp_open_create_file_or_subdir(%struct.ncp_server* %65, %struct.inode* %66, i32* %19, i32 %67, i32 %68, i32 %69, %struct.ncp_entry_info* %7)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %62
  %73 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %74 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %7, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ncp_is_nfs_extras(%struct.ncp_server* %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load i32, i32* @S_IFDIR, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %7, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ncp_server*, %struct.ncp_server** %8, align 8
  %87 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %7, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @ncp_modify_nfs_info(%struct.ncp_server* %86, i32 %88, i32 %91, i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %102

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %72
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = call i32 @ncp_instantiate(%struct.inode* %98, %struct.dentry* %99, %struct.ncp_entry_info* %7)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %62
  br label %102

102:                                              ; preds = %101, %95, %61, %37
  %103 = call i32 (...) @unlock_kernel()
  %104 = load i32, i32* %9, align 4
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @ncp_age_dentry(%struct.ncp_server*, %struct.dentry*) #1

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #1

declare dso_local i64 @ncp_open_create_file_or_subdir(%struct.ncp_server*, %struct.inode*, i32*, i32, i32, i32, %struct.ncp_entry_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ncp_is_nfs_extras(%struct.ncp_server*, i32) #1

declare dso_local i64 @ncp_modify_nfs_info(%struct.ncp_server*, i32, i32, i32, i32) #1

declare dso_local i32 @ncp_instantiate(%struct.inode*, %struct.dentry*, %struct.ncp_entry_info*) #1

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
