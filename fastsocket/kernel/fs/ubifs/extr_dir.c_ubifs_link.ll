; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"dent '%.*s' to ino %lu (nlink %d) in dir ino %lu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ubifs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_budget_req, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 7
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %18, align 8
  store %struct.ubifs_info* %19, %struct.ubifs_info** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %23)
  store %struct.ubifs_inode* %24, %struct.ubifs_inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %25)
  store %struct.ubifs_inode* %26, %struct.ubifs_inode** %11, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CALC_DENT_SIZE(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 1
  store i32 2, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 2
  %35 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %36 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 8)
  store i32 %38, i32* %34, align 4
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dbg_gen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i32 %49, i64 %52, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 5
  %59 = call i32 @mutex_is_locked(i32* %58)
  %60 = call i32 @ubifs_assert(i32 %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 5
  %63 = call i32 @mutex_is_locked(i32* %62)
  %64 = call i32 @ubifs_assert(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %3
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %155

72:                                               ; preds = %3
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = call i32 @dbg_check_synced_i_size(%struct.inode* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %155

79:                                               ; preds = %72
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %81 = call i32 @ubifs_budget_space(%struct.ubifs_info* %80, %struct.ubifs_budget_req* %14)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %155

86:                                               ; preds = %79
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call i32 @lock_2_inodes(%struct.inode* %87, %struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @inc_nlink(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  %94 = call i32 @atomic_inc(i32* %93)
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = call i32 @ubifs_current_time(%struct.inode* %95)
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %108 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 3
  store i32 %111, i32* %115, align 8
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = load %struct.dentry*, %struct.dentry** %7, align 8
  %119 = getelementptr inbounds %struct.dentry, %struct.dentry* %118, i32 0, i32 0
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %116, %struct.inode* %117, %struct.TYPE_4__* %119, %struct.inode* %120, i32 0, i32 0)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %86
  br label %134

125:                                              ; preds = %86
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = call i32 @unlock_2_inodes(%struct.inode* %126, %struct.inode* %127)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %130 = call i32 @ubifs_release_budget(%struct.ubifs_info* %129, %struct.ubifs_budget_req* %14)
  %131 = load %struct.dentry*, %struct.dentry** %7, align 8
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = call i32 @d_instantiate(%struct.dentry* %131, %struct.inode* %132)
  store i32 0, i32* %4, align 4
  br label %155

134:                                              ; preds = %124
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %144 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = call i32 @drop_nlink(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = load %struct.inode*, %struct.inode** %9, align 8
  %149 = call i32 @unlock_2_inodes(%struct.inode* %147, %struct.inode* %148)
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %151 = call i32 @ubifs_release_budget(%struct.ubifs_info* %150, %struct.ubifs_budget_req* %14)
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = call i32 @iput(%struct.inode* %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %134, %125, %84, %77, %69
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @dbg_check_synced_i_size(%struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.TYPE_4__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
