; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32 }

@__const.ubifs_mkdir.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"dent '%.*s', mode %#x in dir ino %lu\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot create directory, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ubifs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CALC_DENT_SIZE(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = bitcast %struct.ubifs_budget_req* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_mkdir.req to i8*), i64 8, i1 false)
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %41 = call i32 @ubifs_budget_space(%struct.ubifs_info* %40, %struct.ubifs_budget_req* %13)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %130

46:                                               ; preds = %3
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i32, i32* @S_IFDIR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %47, %struct.inode* %48, i32 %51)
  store %struct.inode* %52, %struct.inode** %8, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i64 @IS_ERR(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.inode* %57)
  store i32 %58, i32* %11, align 4
  br label %126

59:                                               ; preds = %46
  %60 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @insert_inode_hash(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @inc_nlink(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i32 @inc_nlink(%struct.inode* %67)
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %78 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 8
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %86, %struct.inode* %87, %struct.TYPE_4__* %89, %struct.inode* %90, i32 0, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %59
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ubifs_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %106

97:                                               ; preds = %59
  %98 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %99 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %102 = call i32 @ubifs_release_budget(%struct.ubifs_info* %101, %struct.ubifs_budget_req* %13)
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call i32 @d_instantiate(%struct.dentry* %103, %struct.inode* %104)
  store i32 0, i32* %4, align 4
  br label %130

106:                                              ; preds = %94
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %116 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = call i32 @drop_nlink(%struct.inode* %117)
  %119 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %120 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = call i32 @make_bad_inode(%struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = call i32 @iput(%struct.inode* %124)
  br label %126

126:                                              ; preds = %106, %56
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %128 = call i32 @ubifs_release_budget(%struct.ubifs_info* %127, %struct.ubifs_budget_req* %13)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %97, %44
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.TYPE_4__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
