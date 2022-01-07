; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i64, i64 }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32 }

@__const.ubifs_rmdir.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 2 }, align 4
@.str = private unnamed_addr constant [41 x i8] c"directory '%.*s', ino %lu in dir ino %lu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ubifs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  store %struct.ubifs_info* %17, %struct.ubifs_info** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CALC_DENT_SIZE(i32 %24)
  store i32 %25, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %26)
  store %struct.ubifs_inode* %27, %struct.ubifs_inode** %11, align 8
  %28 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_rmdir.req to i8*), i64 8, i1 false)
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = call i32 @mutex_is_locked(i32* %45)
  %47 = call i32 @ubifs_assert(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 3
  %50 = call i32 @mutex_is_locked(i32* %49)
  %51 = call i32 @ubifs_assert(i32 %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 1
  %55 = load %struct.inode*, %struct.inode** %54, align 8
  %56 = call i32 @check_dir_empty(%struct.ubifs_info* %52, %struct.inode* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %2
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %155

61:                                               ; preds = %2
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %63 = call i32 @ubifs_budget_space(%struct.ubifs_info* %62, %struct.ubifs_budget_req* %12)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %155

73:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = call i32 @lock_2_inodes(%struct.inode* %75, %struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i32 @ubifs_current_time(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = call i32 @clear_nlink(%struct.inode* %82)
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call i32 @drop_nlink(%struct.inode* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %95 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 8
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = load %struct.dentry*, %struct.dentry** %5, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %103, %struct.inode* %104, %struct.TYPE_4__* %106, %struct.inode* %107, i32 1, i32 0)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %74
  br label %128

112:                                              ; preds = %74
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i32 @unlock_2_inodes(%struct.inode* %113, %struct.inode* %114)
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %120 = call i32 @ubifs_release_budget(%struct.ubifs_info* %119, %struct.ubifs_budget_req* %12)
  br label %127

121:                                              ; preds = %112
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = call i32 (...) @smp_wmb()
  br label %127

127:                                              ; preds = %121, %118
  store i32 0, i32* %3, align 4
  br label %155

128:                                              ; preds = %111
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %138 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = call i32 @inc_nlink(%struct.inode* %139)
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i32 @inc_nlink(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = call i32 @inc_nlink(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = call i32 @unlock_2_inodes(%struct.inode* %145, %struct.inode* %146)
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %128
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %152 = call i32 @ubifs_release_budget(%struct.ubifs_info* %151, %struct.ubifs_budget_req* %12)
  br label %153

153:                                              ; preds = %150, %128
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %127, %71, %59
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @check_dir_empty(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.TYPE_4__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
