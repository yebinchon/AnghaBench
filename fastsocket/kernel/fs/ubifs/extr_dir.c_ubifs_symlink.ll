; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i64 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"dent '%.*s', target '%s' in dir ino %lu\00", align 1
@UBIFS_MAX_INO_DATA = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ubifs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %21, align 8
  store %struct.ubifs_info* %22, %struct.ubifs_info** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CALC_DENT_SIZE(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 3
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ALIGN(i32 %34, i32 8)
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dbg_gen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i8* %44, i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @ENAMETOOLONG, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %177

55:                                               ; preds = %3
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %57 = call i32 @ubifs_budget_space(%struct.ubifs_info* %56, %struct.ubifs_budget_req* %15)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %177

62:                                               ; preds = %55
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load i32, i32* @S_IFLNK, align 4
  %66 = load i32, i32* @S_IRWXUGO, align 4
  %67 = or i32 %65, %66
  %68 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %63, %struct.inode* %64, i32 %67)
  store %struct.inode* %68, %struct.inode** %8, align 8
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i64 @IS_ERR(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i32 @PTR_ERR(%struct.inode* %73)
  store i32 %74, i32* %12, align 4
  br label %173

75:                                               ; preds = %62
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %76)
  store %struct.ubifs_inode* %77, %struct.ubifs_inode** %9, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @GFP_NOFS, align 4
  %81 = call i64 @kmalloc(i32 %79, i32 %80)
  %82 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %83 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %168

91:                                               ; preds = %75
  %92 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %93 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @memcpy(i64 %94, i8* %95, i32 %96)
  %98 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %99 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %107 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %115 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %114, i32 0, i32 2
  %116 = call i32 @mutex_lock(i32* %115)
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %126 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = load %struct.dentry*, %struct.dentry** %6, align 8
  %137 = getelementptr inbounds %struct.dentry, %struct.dentry* %136, i32 0, i32 0
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %134, %struct.inode* %135, %struct.TYPE_4__* %137, %struct.inode* %138, i32 0, i32 0)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %91
  br label %154

143:                                              ; preds = %91
  %144 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %145 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %144, i32 0, i32 2
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %148 = call i32 @ubifs_release_budget(%struct.ubifs_info* %147, %struct.ubifs_budget_req* %15)
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = call i32 @insert_inode_hash(%struct.inode* %149)
  %151 = load %struct.dentry*, %struct.dentry** %6, align 8
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = call i32 @d_instantiate(%struct.dentry* %151, %struct.inode* %152)
  store i32 0, i32* %4, align 4
  br label %177

154:                                              ; preds = %142
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %164 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %166 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %165, i32 0, i32 2
  %167 = call i32 @mutex_unlock(i32* %166)
  br label %168

168:                                              ; preds = %154, %88
  %169 = load %struct.inode*, %struct.inode** %8, align 8
  %170 = call i32 @make_bad_inode(%struct.inode* %169)
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = call i32 @iput(%struct.inode* %171)
  br label %173

173:                                              ; preds = %168, %72
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %175 = call i32 @ubifs_release_budget(%struct.ubifs_info* %174, %struct.ubifs_budget_req* %15)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %143, %60, %52
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

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
