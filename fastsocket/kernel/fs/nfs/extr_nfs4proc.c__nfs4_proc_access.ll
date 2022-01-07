; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs4_accessargs = type { i32, i32, i32, i32 }
%struct.nfs4_accessres = type { i32*, i32, i32, %struct.nfs_server* }
%struct.rpc_message = type { i32, %struct.nfs4_accessres*, %struct.nfs4_accessargs*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_ACCESS = common dso_local global i64 0, align 8
@MAY_READ = common dso_local global i32 0, align 4
@NFS4_ACCESS_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@NFS4_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXTEND = common dso_local global i32 0, align 4
@NFS4_ACCESS_DELETE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@NFS4_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_access_entry*)* @_nfs4_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_access(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_access_entry*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_accessargs, align 4
  %8 = alloca %struct.nfs4_accessres, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %6, align 8
  %14 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 2
  %17 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 3
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @NFS_FH(%struct.inode* %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 3
  %27 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %27, %struct.nfs_server** %26, align 8
  %28 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  %29 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs4_accessres* %8, %struct.nfs4_accessres** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  store %struct.nfs4_accessargs* %7, %struct.nfs4_accessargs** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 3
  %35 = load i32*, i32** @nfs4_procedures, align 8
  %36 = load i64, i64* @NFSPROC4_CLNT_ACCESS, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %34, align 8
  %38 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MAY_READ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %2
  %46 = load i32, i32* @NFS4_ACCESS_READ, align 4
  %47 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %2
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @MAY_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i32, i32* @NFS4_ACCESS_MODIFY, align 4
  %63 = load i32, i32* @NFS4_ACCESS_EXTEND, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NFS4_ACCESS_DELETE, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %56
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MAY_EXEC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @NFS4_ACCESS_LOOKUP, align 4
  %77 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %104

81:                                               ; preds = %50
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MAY_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* @NFS4_ACCESS_MODIFY, align 4
  %88 = load i32, i32* @NFS4_ACCESS_EXTEND, align 4
  %89 = or i32 %87, %88
  %90 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @MAY_EXEC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @NFS4_ACCESS_EXECUTE, align 4
  %100 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %80
  %105 = call i32* (...) @nfs_alloc_fattr()
  %106 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %137

113:                                              ; preds = %104
  %114 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %115 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %118 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 1
  %119 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 2
  %120 = call i32 @nfs4_call_sync(i32 %116, %struct.nfs_server* %117, %struct.rpc_message* %9, i32* %118, i32* %119, i32 0)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %113
  %124 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %125 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @nfs_access_set_mask(%struct.nfs_access_entry* %124, i32 %126)
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @nfs_refresh_inode(%struct.inode* %128, i32* %130)
  br label %132

132:                                              ; preds = %123, %113
  %133 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @nfs_free_fattr(i32* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %110
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @nfs_access_set_mask(%struct.nfs_access_entry*, i32) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
