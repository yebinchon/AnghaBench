; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_dent_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"'%.*s' in dir ino %lu\00", align 1
@UBIFS_MAX_NLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UBIFS_MAX_DENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"dead directory entry '%.*s', error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @ubifs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ubifs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ubifs_key, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_dent_node*, align 8
  %12 = alloca %struct.ubifs_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  store %struct.ubifs_info* %17, %struct.ubifs_info** %12, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %25, i32 %28)
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UBIFS_MAX_NLEN, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @ENAMETOOLONG, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %4, align 8
  br label %122

40:                                               ; preds = %3
  %41 = load i32, i32* @UBIFS_MAX_DENT_NODE_SZ, align 4
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call %struct.ubifs_dent_node* @kmalloc(i32 %41, i32 %42)
  store %struct.ubifs_dent_node* %43, %struct.ubifs_dent_node** %11, align 8
  %44 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %45 = icmp ne %struct.ubifs_dent_node* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.dentry* @ERR_PTR(i32 %48)
  store %struct.dentry* %49, %struct.dentry** %4, align 8
  br label %122

50:                                               ; preds = %40
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = call i32 @dent_key_init(%struct.ubifs_info* %51, %union.ubifs_key* %9, i32 %54, %struct.TYPE_5__* %56)
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %59 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %58, %union.ubifs_key* %9, %struct.ubifs_dent_node* %59, %struct.TYPE_5__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %111

72:                                               ; preds = %65
  br label %117

73:                                               ; preds = %50
  %74 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = call i64 @dbg_check_name(%struct.ubifs_dent_node* %74, %struct.TYPE_5__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %117

82:                                               ; preds = %73
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %87 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le64_to_cpu(i32 %88)
  %90 = call %struct.inode* @ubifs_iget(%struct.TYPE_6__* %85, i32 %89)
  store %struct.inode* %90, %struct.inode** %10, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call i64 @IS_ERR(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %82
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @PTR_ERR(%struct.inode* %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ubifs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %100, i32 %104, i32 %105)
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %107, i32 %108)
  br label %117

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110, %70
  %112 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %113 = call i32 @kfree(%struct.ubifs_dent_node* %112)
  %114 = load %struct.dentry*, %struct.dentry** %6, align 8
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i32 @d_add(%struct.dentry* %114, %struct.inode* %115)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %122

117:                                              ; preds = %94, %79, %72
  %118 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %119 = call i32 @kfree(%struct.ubifs_dent_node* %118)
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.dentry* @ERR_PTR(i32 %120)
  store %struct.dentry* %121, %struct.dentry** %4, align 8
  br label %122

122:                                              ; preds = %117, %111, %46, %36
  %123 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %123
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @dent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.TYPE_5__*) #1

declare dso_local i64 @dbg_check_name(%struct.ubifs_dent_node*, %struct.TYPE_5__*) #1

declare dso_local %struct.inode* @ubifs_iget(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i64, i32, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
