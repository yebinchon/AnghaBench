; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32* }
%struct.iattr = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs4_state_owner = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_opendata = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@NFS4_OPEN_CLAIM_NULL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nfs4_do_open: nfs4_get_state_owner failed!\0A\00", align 1
@NFS4_OPEN_CLAIM_FH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_CREATE_GUARDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32, %struct.iattr*, %struct.rpc_cred*, %struct.nfs4_state**)* @_nfs4_do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_open(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3, %struct.iattr* %4, %struct.rpc_cred* %5, %struct.nfs4_state** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iattr*, align 8
  %14 = alloca %struct.rpc_cred*, align 8
  %15 = alloca %struct.nfs4_state**, align 8
  %16 = alloca %struct.nfs4_state_owner*, align 8
  %17 = alloca %struct.nfs4_state*, align 8
  %18 = alloca %struct.nfs_server*, align 8
  %19 = alloca %struct.nfs4_opendata*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.iattr* %4, %struct.iattr** %13, align 8
  store %struct.rpc_cred* %5, %struct.rpc_cred** %14, align 8
  store %struct.nfs4_state** %6, %struct.nfs4_state*** %15, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %17, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %22)
  store %struct.nfs_server* %23, %struct.nfs_server** %18, align 8
  %24 = load i32, i32* @NFS4_OPEN_CLAIM_NULL, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %21, align 4
  %27 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %28 = load %struct.rpc_cred*, %struct.rpc_cred** %14, align 8
  %29 = call %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server* %27, %struct.rpc_cred* %28)
  store %struct.nfs4_state_owner* %29, %struct.nfs4_state_owner** %16, align 8
  %30 = icmp ne %struct.nfs4_state_owner* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %7
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %157

33:                                               ; preds = %7
  %34 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %35 = call i32 @nfs4_recover_expired_lease(%struct.nfs_server* %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %154

39:                                               ; preds = %33
  %40 = load %struct.dentry*, %struct.dentry** %10, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nfs4_return_incompatible_delegation(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %21, align 4
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @NFS4_OPEN_CLAIM_FH, align 4
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load %struct.dentry*, %struct.dentry** %10, align 8
  %61 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.iattr*, %struct.iattr** %13, align 8
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.nfs4_opendata* @nfs4_opendata_alloc(%struct.dentry* %60, %struct.nfs4_state_owner* %61, i32 %62, i32 %63, %struct.iattr* %64, i32 %65, i32 %66)
  store %struct.nfs4_opendata* %67, %struct.nfs4_opendata** %19, align 8
  %68 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %69 = icmp eq %struct.nfs4_opendata* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %154

71:                                               ; preds = %59
  %72 = load %struct.dentry*, %struct.dentry** %10, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  %81 = call i32 @nfs4_get_open_state(i32* %79, %struct.nfs4_state_owner* %80)
  %82 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %83 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  %85 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata* %85, i32 %86, i32 %87, %struct.nfs4_state** %17)
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %151

92:                                               ; preds = %84
  %93 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %94 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @O_EXCL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %92
  %101 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %102 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NFS4_CREATE_GUARDED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %100
  %108 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %109 = load %struct.iattr*, %struct.iattr** %13, align 8
  %110 = call i32 @nfs4_exclusive_attrset(%struct.nfs4_opendata* %108, %struct.iattr* %109)
  %111 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %112 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @nfs_fattr_init(i32 %114)
  %116 = load %struct.nfs4_state*, %struct.nfs4_state** %17, align 8
  %117 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rpc_cred*, %struct.rpc_cred** %14, align 8
  %120 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %121 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.iattr*, %struct.iattr** %13, align 8
  %125 = load %struct.nfs4_state*, %struct.nfs4_state** %17, align 8
  %126 = call i32 @nfs4_do_setattr(i32 %118, %struct.rpc_cred* %119, i32 %123, %struct.iattr* %124, %struct.nfs4_state* %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %107
  %130 = load %struct.nfs4_state*, %struct.nfs4_state** %17, align 8
  %131 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iattr*, %struct.iattr** %13, align 8
  %134 = call i32 @nfs_setattr_update_inode(i32 %132, %struct.iattr* %133)
  br label %135

135:                                              ; preds = %129, %107
  %136 = load %struct.nfs4_state*, %struct.nfs4_state** %17, align 8
  %137 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %140 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @nfs_post_op_update_inode(i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %135, %100, %92
  %145 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %146 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %145)
  %147 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  %148 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %147)
  %149 = load %struct.nfs4_state*, %struct.nfs4_state** %17, align 8
  %150 = load %struct.nfs4_state**, %struct.nfs4_state*** %15, align 8
  store %struct.nfs4_state* %149, %struct.nfs4_state** %150, align 8
  store i32 0, i32* %8, align 4
  br label %160

151:                                              ; preds = %91
  %152 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %153 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %152)
  br label %154

154:                                              ; preds = %151, %70, %38
  %155 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  %156 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %155)
  br label %157

157:                                              ; preds = %154, %31
  %158 = load %struct.nfs4_state**, %struct.nfs4_state*** %15, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %158, align 8
  %159 = load i32, i32* %21, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %157, %144
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server*, %struct.rpc_cred*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nfs4_recover_expired_lease(%struct.nfs_server*) #1

declare dso_local i32 @nfs4_return_incompatible_delegation(i32*, i32) #1

declare dso_local %struct.nfs4_opendata* @nfs4_opendata_alloc(%struct.dentry*, %struct.nfs4_state_owner*, i32, i32, %struct.iattr*, i32, i32) #1

declare dso_local i32 @nfs4_get_open_state(i32*, %struct.nfs4_state_owner*) #1

declare dso_local i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata*, i32, i32, %struct.nfs4_state**) #1

declare dso_local i32 @nfs4_exclusive_attrset(%struct.nfs4_opendata*, %struct.iattr*) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_do_setattr(i32, %struct.rpc_cred*, i32, %struct.iattr*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs_setattr_update_inode(i32, %struct.iattr*) #1

declare dso_local i32 @nfs_post_op_update_inode(i32, i32) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

declare dso_local i32 @nfs4_put_state_owner(%struct.nfs4_state_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
