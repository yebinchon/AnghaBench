; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, %union.ubifs_dev_desc* }
%union.ubifs_dev_desc = type { i32 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dent '%.*s' in dir ino %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ubifs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_inode*, align 8
  %13 = alloca %struct.ubifs_info*, align 8
  %14 = alloca %union.ubifs_dev_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %19)
  store %struct.ubifs_inode* %20, %struct.ubifs_inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %24, align 8
  store %struct.ubifs_info* %25, %struct.ubifs_info** %13, align 8
  store %union.ubifs_dev_desc* null, %union.ubifs_dev_desc** %14, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CALC_DENT_SIZE(i32 %29)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %31 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 3
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @ALIGN(i32 %35, i32 8)
  store i32 %36, i32* %34, align 4
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dbg_gen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @new_valid_dev(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %180

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @S_ISBLK(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @S_ISCHR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @GFP_NOFS, align 4
  %65 = call %union.ubifs_dev_desc* @kmalloc(i32 4, i32 %64)
  store %union.ubifs_dev_desc* %65, %union.ubifs_dev_desc** %14, align 8
  %66 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %67 = icmp ne %union.ubifs_dev_desc* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %180

71:                                               ; preds = %63
  %72 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ubifs_encode_dev(%union.ubifs_dev_desc* %72, i32 %73)
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %71, %59
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %77 = call i32 @ubifs_budget_space(%struct.ubifs_info* %76, %struct.ubifs_budget_req* %18)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %82 = call i32 @kfree(%union.ubifs_dev_desc* %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %5, align 4
  br label %180

84:                                               ; preds = %75
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %85, %struct.inode* %86, i32 %87)
  store %struct.inode* %88, %struct.inode** %10, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i64 @IS_ERR(%struct.inode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %94 = call i32 @kfree(%union.ubifs_dev_desc* %93)
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @PTR_ERR(%struct.inode* %95)
  store i32 %96, i32* %16, align 4
  br label %176

97:                                               ; preds = %84
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @init_special_inode(%struct.inode* %98, i32 %101, i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 8
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %110)
  store %struct.ubifs_inode* %111, %struct.ubifs_inode** %11, align 8
  %112 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %113 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %114 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %113, i32 0, i32 3
  store %union.ubifs_dev_desc* %112, %union.ubifs_dev_desc** %114, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %117 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %119 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %118, i32 0, i32 2
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %130 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  store i32 %133, i32* %137, align 8
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = load %struct.dentry*, %struct.dentry** %7, align 8
  %141 = getelementptr inbounds %struct.dentry, %struct.dentry* %140, i32 0, i32 0
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %138, %struct.inode* %139, %struct.TYPE_4__* %141, %struct.inode* %142, i32 0, i32 0)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %97
  br label %158

147:                                              ; preds = %97
  %148 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %149 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %148, i32 0, i32 2
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %152 = call i32 @ubifs_release_budget(%struct.ubifs_info* %151, %struct.ubifs_budget_req* %18)
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = call i32 @insert_inode_hash(%struct.inode* %153)
  %155 = load %struct.dentry*, %struct.dentry** %7, align 8
  %156 = load %struct.inode*, %struct.inode** %10, align 8
  %157 = call i32 @d_instantiate(%struct.dentry* %155, %struct.inode* %156)
  store i32 0, i32* %5, align 4
  br label %180

158:                                              ; preds = %146
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %168 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %170 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load %struct.inode*, %struct.inode** %10, align 8
  %173 = call i32 @make_bad_inode(%struct.inode* %172)
  %174 = load %struct.inode*, %struct.inode** %10, align 8
  %175 = call i32 @iput(%struct.inode* %174)
  br label %176

176:                                              ; preds = %158, %92
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %178 = call i32 @ubifs_release_budget(%struct.ubifs_info* %177, %struct.ubifs_budget_req* %18)
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %147, %80, %68, %52
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local %union.ubifs_dev_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_encode_dev(%union.ubifs_dev_desc*, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @kfree(%union.ubifs_dev_desc*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.TYPE_4__*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
