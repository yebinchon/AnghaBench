; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32 }
%struct.nfs3_accessargs = type { i32, i32 }
%struct.nfs3_accessres = type { i32, i32* }
%struct.rpc_message = type { i32, %struct.nfs3_accessres*, %struct.nfs3_accessargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_ACCESS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NFS call  access\0A\00", align 1
@MAY_READ = common dso_local global i32 0, align 4
@NFS3_ACCESS_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@NFS3_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS3_ACCESS_EXTEND = common dso_local global i32 0, align 4
@NFS3_ACCESS_DELETE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@NFS3_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@NFS3_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply access: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_access_entry*)* @nfs3_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_access(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_access_entry*, align 8
  %5 = alloca %struct.nfs3_accessargs, align 4
  %6 = alloca %struct.nfs3_accessres, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %4, align 8
  %10 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @NFS_FH(%struct.inode* %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  %15 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs3_accessres* %6, %struct.nfs3_accessres** %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  store %struct.nfs3_accessargs* %5, %struct.nfs3_accessargs** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 3
  %21 = load i32*, i32** @nfs3_procedures, align 8
  %22 = load i64, i64* @NFS3PROC_ACCESS, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %20, align 8
  %24 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MAY_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @NFS3_ACCESS_READ, align 4
  %36 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISDIR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MAY_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @NFS3_ACCESS_MODIFY, align 4
  %52 = load i32, i32* @NFS3_ACCESS_EXTEND, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NFS3_ACCESS_DELETE, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MAY_EXEC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @NFS3_ACCESS_LOOKUP, align 4
  %66 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %59
  br label %93

70:                                               ; preds = %39
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @MAY_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @NFS3_ACCESS_MODIFY, align 4
  %77 = load i32, i32* @NFS3_ACCESS_EXTEND, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MAY_EXEC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @NFS3_ACCESS_EXECUTE, align 4
  %89 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %69
  %94 = call i32* (...) @nfs_alloc_fattr()
  %95 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 1
  store i32* %94, i32** %95, align 8
  %96 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %159

100:                                              ; preds = %93
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = call i32 @NFS_CLIENT(%struct.inode* %101)
  %103 = call i32 @rpc_call_sync(i32 %102, %struct.rpc_message* %7, i32 0)
  store i32 %103, i32* %9, align 4
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @nfs_refresh_inode(%struct.inode* %104, i32* %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %100
  %111 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %112 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NFS3_ACCESS_READ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @MAY_READ, align 4
  %120 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %121 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %110
  %125 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NFS3_ACCESS_MODIFY, align 4
  %128 = load i32, i32* @NFS3_ACCESS_EXTEND, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @NFS3_ACCESS_DELETE, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %126, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %124
  %135 = load i32, i32* @MAY_WRITE, align 4
  %136 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %137 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %124
  %141 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NFS3_ACCESS_LOOKUP, align 4
  %144 = load i32, i32* @NFS3_ACCESS_EXECUTE, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* @MAY_EXEC, align 4
  %150 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %151 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %140
  br label %155

155:                                              ; preds = %154, %100
  %156 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @nfs_free_fattr(i32* %157)
  br label %159

159:                                              ; preds = %155, %99
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
