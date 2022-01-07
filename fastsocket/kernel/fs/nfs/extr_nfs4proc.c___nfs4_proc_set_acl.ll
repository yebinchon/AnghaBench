; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c___nfs4_proc_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c___nfs4_proc_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_setaclargs = type { i64, i32, i32, %struct.page**, i32 }
%struct.page = type { i32 }
%struct.nfs_setaclres = type { i32 }
%struct.rpc_message = type { %struct.nfs_setaclres*, %struct.nfs_setaclargs*, i32* }
%struct.TYPE_2__ = type { i32 }

@NFS4ACL_MAXPAGES = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETACL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @__nfs4_proc_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs4_proc_set_acl(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfs_setaclargs, align 8
  %12 = alloca %struct.nfs_setaclres, align 4
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %8, align 8
  %20 = load i32, i32* @NFS4ACL_MAXPAGES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.page*, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 3
  store %struct.page** %23, %struct.page*** %28, align 8
  %29 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @NFS_FH(%struct.inode* %30)
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.nfs_setaclres* %12, %struct.nfs_setaclres** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.nfs_setaclargs* %11, %struct.nfs_setaclargs** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %35 = load i32*, i32** @nfs4_procedures, align 8
  %36 = load i64, i64* @NFSPROC4_CLNT_SETACL, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %34, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @DIV_ROUND_UP(i64 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %42 = call i32 @nfs4_server_supports_acls(%struct.nfs_server* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

47:                                               ; preds = %3
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @ARRAY_SIZE(%struct.page** %23)
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 3
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 2
  %60 = call i32 @buf_to_pages_noslab(i8* %55, i64 %56, %struct.page** %58, i32* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

65:                                               ; preds = %54
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i32 @nfs_inode_return_delegation(%struct.inode* %66)
  %68 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %69 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %72 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %11, i32 0, i32 1
  %73 = getelementptr inbounds %struct.nfs_setaclres, %struct.nfs_setaclres* %12, i32 0, i32 0
  %74 = call i32 @nfs4_call_sync(i32 %70, %struct.nfs_server* %71, %struct.rpc_message* %13, i32* %72, i32* %73, i32 1)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %85, %65
  %76 = load i32, i32* %16, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %81
  %83 = load %struct.page*, %struct.page** %82, align 8
  %84 = call i32 @put_page(%struct.page* %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %16, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @nfs_access_zap_cache(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = call i32 @nfs_zap_acl_cache(%struct.inode* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %106

106:                                              ; preds = %88, %63, %51, %44
  %107 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @nfs4_server_supports_acls(%struct.nfs_server*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #1

declare dso_local i32 @buf_to_pages_noslab(i8*, i64, %struct.page**, i32*) #1

declare dso_local i32 @nfs_inode_return_delegation(%struct.inode*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_access_zap_cache(%struct.inode*) #1

declare dso_local i32 @nfs_zap_acl_cache(%struct.inode*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
