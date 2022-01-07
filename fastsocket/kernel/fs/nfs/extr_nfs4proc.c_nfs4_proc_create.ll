; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs_open_context = type { %struct.nfs4_state*, i32, %struct.dentry*, %struct.rpc_cred* }
%struct.nfs4_state = type { i32 }
%struct.rpc_cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32, %struct.nfs_open_context*)* @nfs4_proc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_create(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, i32 %3, %struct.nfs_open_context* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_open_context*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.nfs4_state*, align 8
  %13 = alloca %struct.rpc_cred*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.iattr* %2, %struct.iattr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nfs_open_context* %4, %struct.nfs_open_context** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %16, %struct.dentry** %11, align 8
  store %struct.rpc_cred* null, %struct.rpc_cred** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %18 = icmp ne %struct.nfs_open_context* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %21 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %20, i32 0, i32 3
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %21, align 8
  store %struct.rpc_cred* %22, %struct.rpc_cred** %13, align 8
  %23 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %24 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %23, i32 0, i32 2
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %11, align 8
  %26 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %27 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %19, %5
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.dentry*, %struct.dentry** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.iattr*, %struct.iattr** %8, align 8
  %35 = load %struct.rpc_cred*, %struct.rpc_cred** %13, align 8
  %36 = call %struct.nfs4_state* @nfs4_do_open(%struct.inode* %30, %struct.dentry* %31, i32 %32, i32 %33, %struct.iattr* %34, %struct.rpc_cred* %35)
  store %struct.nfs4_state* %36, %struct.nfs4_state** %12, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = call i32 @d_drop(%struct.dentry* %37)
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %40 = call i64 @IS_ERR(%struct.nfs4_state* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %44 = call i32 @PTR_ERR(%struct.nfs4_state* %43)
  store i32 %44, i32* %15, align 4
  br label %67

45:                                               ; preds = %29
  %46 = load %struct.dentry*, %struct.dentry** %7, align 8
  %47 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %48 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @igrab(i32 %49)
  %51 = call i32 @d_add(%struct.dentry* %46, i32 %50)
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @nfs_save_change_attribute(%struct.inode* %53)
  %55 = call i32 @nfs_set_verifier(%struct.dentry* %52, i32 %54)
  %56 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %57 = icmp ne %struct.nfs_open_context* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %60 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  %61 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %60, i32 0, i32 0
  store %struct.nfs4_state* %59, %struct.nfs4_state** %61, align 8
  br label %66

62:                                               ; preds = %45
  %63 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @nfs4_close_sync(%struct.nfs4_state* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %15, align 4
  ret i32 %68
}

declare dso_local %struct.nfs4_state* @nfs4_do_open(%struct.inode*, %struct.dentry*, i32, i32, %struct.iattr*, %struct.rpc_cred*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32) #1

declare dso_local i32 @igrab(i32) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs4_close_sync(%struct.nfs4_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
