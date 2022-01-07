; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i64, i64 }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32 }

@__const.ubifs_unlink.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 2 }, align 4
@.str = private unnamed_addr constant [51 x i8] c"dent '%.*s' from ino %lu (nlink %d) in dir ino %lu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ubifs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  store %struct.ubifs_info* %17, %struct.ubifs_info** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %21)
  store %struct.ubifs_inode* %22, %struct.ubifs_inode** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CALC_DENT_SIZE(i32 %26)
  store i32 %27, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %28 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_unlink.req to i8*), i64 8, i1 false)
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
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dbg_gen(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  %49 = call i32 @mutex_is_locked(i32* %48)
  %50 = call i32 @ubifs_assert(i32 %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 3
  %53 = call i32 @mutex_is_locked(i32* %52)
  %54 = call i32 @ubifs_assert(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i32 @dbg_check_synced_i_size(%struct.inode* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %2
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %149

61:                                               ; preds = %2
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %63 = call i32 @ubifs_budget_space(%struct.ubifs_info* %62, %struct.ubifs_budget_req* %12)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %149

73:                                               ; preds = %66
  store i32 0, i32* %11, align 4
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
  %83 = call i32 @drop_nlink(%struct.inode* %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %93 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 8
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = load %struct.dentry*, %struct.dentry** %5, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %101, %struct.inode* %102, %struct.TYPE_4__* %104, %struct.inode* %105, i32 1, i32 0)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %74
  br label %126

110:                                              ; preds = %74
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = call i32 @unlock_2_inodes(%struct.inode* %111, %struct.inode* %112)
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %118 = call i32 @ubifs_release_budget(%struct.ubifs_info* %117, %struct.ubifs_budget_req* %12)
  br label %125

119:                                              ; preds = %110
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = call i32 (...) @smp_wmb()
  br label %125

125:                                              ; preds = %119, %116
  store i32 0, i32* %3, align 4
  br label %149

126:                                              ; preds = %109
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %136 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = call i32 @inc_nlink(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = load %struct.inode*, %struct.inode** %7, align 8
  %141 = call i32 @unlock_2_inodes(%struct.inode* %139, %struct.inode* %140)
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %126
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %146 = call i32 @ubifs_release_budget(%struct.ubifs_info* %145, %struct.ubifs_budget_req* %12)
  br label %147

147:                                              ; preds = %144, %126
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %125, %71, %59
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @dbg_check_synced_i_size(%struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

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
