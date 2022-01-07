; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_open_context = type { %struct.nfs4_state*, %struct.rpc_cred* }

@ATTR_OPEN = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* @nfs4_proc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_setattr(%struct.dentry* %0, %struct.nfs_fattr* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.rpc_cred*, align 8
  %10 = alloca %struct.nfs4_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_open_context*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store %struct.rpc_cred* null, %struct.rpc_cred** %9, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call i64 @pnfs_ld_layoutret_on_setattr(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call i32 @pnfs_return_layout(%struct.inode* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %24 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %23)
  %25 = load %struct.iattr*, %struct.iattr** %7, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATTR_OPEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32, i32* @ATTR_MTIME, align 4
  %33 = load i32, i32* @ATTR_CTIME, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.iattr*, %struct.iattr** %7, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %22
  %41 = load %struct.iattr*, %struct.iattr** %7, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATTR_FILE, align 4
  %45 = load i32, i32* @ATTR_OPEN, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %88

51:                                               ; preds = %40
  %52 = load %struct.iattr*, %struct.iattr** %7, align 8
  %53 = getelementptr inbounds %struct.iattr, %struct.iattr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATTR_FILE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.iattr*, %struct.iattr** %7, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.nfs_open_context* @nfs_file_open_context(i32 %61)
  store %struct.nfs_open_context* %62, %struct.nfs_open_context** %12, align 8
  %63 = load %struct.nfs_open_context*, %struct.nfs_open_context** %12, align 8
  %64 = icmp ne %struct.nfs_open_context* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.nfs_open_context*, %struct.nfs_open_context** %12, align 8
  %67 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %66, i32 0, i32 1
  %68 = load %struct.rpc_cred*, %struct.rpc_cred** %67, align 8
  store %struct.rpc_cred* %68, %struct.rpc_cred** %9, align 8
  %69 = load %struct.nfs_open_context*, %struct.nfs_open_context** %12, align 8
  %70 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %69, i32 0, i32 0
  %71 = load %struct.nfs4_state*, %struct.nfs4_state** %70, align 8
  store %struct.nfs4_state* %71, %struct.nfs4_state** %10, align 8
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %77 = load %struct.iattr*, %struct.iattr** %7, align 8
  %78 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %79 = call i32 @nfs4_do_setattr(%struct.inode* %74, %struct.rpc_cred* %75, %struct.nfs_fattr* %76, %struct.iattr* %77, %struct.nfs4_state* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load %struct.iattr*, %struct.iattr** %7, align 8
  %85 = call i32 @nfs_setattr_update_inode(%struct.inode* %83, %struct.iattr* %84)
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %50
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @pnfs_ld_layoutret_on_setattr(%struct.inode*) #1

declare dso_local i32 @pnfs_return_layout(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(i32) #1

declare dso_local i32 @nfs4_do_setattr(%struct.inode*, %struct.rpc_cred*, %struct.nfs_fattr*, %struct.iattr*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs_setattr_update_inode(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
