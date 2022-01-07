; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_removexattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"xattr '%s', ino %lu ('%.*s')\00", align 1
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.qstr, align 8
  %10 = alloca %struct.ubifs_dent_node*, align 8
  %11 = alloca %union.ubifs_key, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %8, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %23, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dbg_gen(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = call i32 @mutex_is_locked(i32* %40)
  %42 = call i32 @ubifs_assert(i32 %41)
  %43 = call i32 @check_namespace(%struct.qstr* %9)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %2
  %49 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call %struct.ubifs_dent_node* @kmalloc(i32 %49, i32 %50)
  store %struct.ubifs_dent_node* %51, %struct.ubifs_dent_node** %10, align 8
  %52 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %53 = icmp ne %struct.ubifs_dent_node* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %115

57:                                               ; preds = %48
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xent_key_init(%struct.ubifs_info* %58, %union.ubifs_key* %11, i32 %61, %struct.qstr* %9)
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %64 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %65 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %63, %union.ubifs_key* %11, %struct.ubifs_dent_node* %64, %struct.qstr* %9)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ENODATA, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %111

77:                                               ; preds = %57
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %79 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %80 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le64_to_cpu(i32 %81)
  %83 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %78, i32 %82)
  store %struct.inode* %83, %struct.inode** %6, align 8
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = call i64 @IS_ERR(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @PTR_ERR(%struct.inode* %88)
  store i32 %89, i32* %12, align 4
  br label %111

90:                                               ; preds = %77
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = call i32 @ubifs_assert(i32 %95)
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call i32 @remove_xattr(%struct.ubifs_info* %99, %struct.inode* %100, %struct.inode* %101, %struct.qstr* %9)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %90
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call i32 @iput(%struct.inode* %109)
  br label %111

111:                                              ; preds = %108, %87, %76
  %112 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %113 = call i32 @kfree(%struct.ubifs_dent_node* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %54, %46
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dbg_gen(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @check_namespace(%struct.qstr*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.qstr*) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @remove_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.qstr*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
