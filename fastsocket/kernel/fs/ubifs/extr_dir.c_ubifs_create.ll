; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@__const.ubifs_create.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"dent '%.*s', mode %#x in dir ino %lu\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot create regular file, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @ubifs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_budget_req, align 4
  %15 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %11, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CALC_DENT_SIZE(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = bitcast %struct.ubifs_budget_req* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_create.req to i8*), i64 12, i1 false)
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %27)
  store %struct.ubifs_inode* %28, %struct.ubifs_inode** %15, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %37, i32 %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %43 = call i32 @ubifs_budget_space(%struct.ubifs_info* %42, %struct.ubifs_budget_req* %14)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %124

48:                                               ; preds = %4
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %49, %struct.inode* %50, i32 %51)
  store %struct.inode* %52, %struct.inode** %10, align 8
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i64 @IS_ERR(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @PTR_ERR(%struct.inode* %57)
  store i32 %58, i32* %12, align 4
  br label %118

59:                                               ; preds = %48
  %60 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %72 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 8
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = load %struct.dentry*, %struct.dentry** %7, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %80, %struct.inode* %81, %struct.TYPE_4__* %83, %struct.inode* %84, i32 0, i32 0)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %59
  br label %100

89:                                               ; preds = %59
  %90 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %91 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %94 = call i32 @ubifs_release_budget(%struct.ubifs_info* %93, %struct.ubifs_budget_req* %14)
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @insert_inode_hash(%struct.inode* %95)
  %97 = load %struct.dentry*, %struct.dentry** %7, align 8
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = call i32 @d_instantiate(%struct.dentry* %97, %struct.inode* %98)
  store i32 0, i32* %5, align 4
  br label %124

100:                                              ; preds = %88
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %110 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %112 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call i32 @make_bad_inode(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @iput(%struct.inode* %116)
  br label %118

118:                                              ; preds = %100, %56
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %120 = call i32 @ubifs_release_budget(%struct.ubifs_info* %119, %struct.ubifs_budget_req* %14)
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @ubifs_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %89, %46
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.TYPE_4__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
