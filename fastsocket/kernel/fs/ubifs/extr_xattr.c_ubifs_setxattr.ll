; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"xattr '%s', host ino %lu ('%.*s'), size %zd\00", align 1
@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ubifs_info*, align 8
  %15 = alloca %struct.qstr, align 8
  %16 = alloca %struct.ubifs_dent_node*, align 8
  %17 = alloca %union.ubifs_key, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %13, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %26, align 8
  store %struct.ubifs_info* %27, %struct.ubifs_info** %14, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %30, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %13, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @dbg_gen(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %36, i32 %40, i32 %44, i64 %45)
  %47 = load %struct.inode*, %struct.inode** %13, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = call i32 @mutex_is_locked(i32* %48)
  %50 = call i32 @ubifs_assert(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @ERANGE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %138

57:                                               ; preds = %5
  %58 = call i32 @check_namespace(%struct.qstr* %15)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %6, align 4
  br label %138

63:                                               ; preds = %57
  %64 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = call %struct.ubifs_dent_node* @kmalloc(i32 %64, i32 %65)
  store %struct.ubifs_dent_node* %66, %struct.ubifs_dent_node** %16, align 8
  %67 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %16, align 8
  %68 = icmp ne %struct.ubifs_dent_node* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %138

72:                                               ; preds = %63
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %74 = load %struct.inode*, %struct.inode** %13, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @xent_key_init(%struct.ubifs_info* %73, %union.ubifs_key* %17, i32 %76, %struct.qstr* %15)
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %79 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %16, align 8
  %80 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %78, %union.ubifs_key* %17, %struct.ubifs_dent_node* %79, %struct.qstr* %15)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %72
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %134

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @XATTR_REPLACE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @ENODATA, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %18, align 4
  br label %103

97:                                               ; preds = %89
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @create_xattr(%struct.ubifs_info* %98, %struct.inode* %99, %struct.qstr* %15, i8* %100, i64 %101)
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %97, %94
  br label %134

104:                                              ; preds = %72
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @XATTR_CREATE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EEXIST, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %18, align 4
  br label %134

112:                                              ; preds = %104
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %114 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %16, align 8
  %115 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le64_to_cpu(i32 %116)
  %118 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %113, i32 %117)
  store %struct.inode* %118, %struct.inode** %12, align 8
  %119 = load %struct.inode*, %struct.inode** %12, align 8
  %120 = call i64 @IS_ERR(%struct.inode* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load %struct.inode*, %struct.inode** %12, align 8
  %124 = call i32 @PTR_ERR(%struct.inode* %123)
  store i32 %124, i32* %18, align 4
  br label %134

125:                                              ; preds = %112
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %127 = load %struct.inode*, %struct.inode** %13, align 8
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @change_xattr(%struct.ubifs_info* %126, %struct.inode* %127, %struct.inode* %128, i8* %129, i64 %130)
  store i32 %131, i32* %18, align 4
  %132 = load %struct.inode*, %struct.inode** %12, align 8
  %133 = call i32 @iput(%struct.inode* %132)
  br label %134

134:                                              ; preds = %125, %122, %109, %103, %88
  %135 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %16, align 8
  %136 = call i32 @kfree(%struct.ubifs_dent_node* %135)
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %134, %69, %61, %54
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dbg_gen(i8*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @check_namespace(%struct.qstr*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.qstr*) #1

declare dso_local i32 @create_xattr(%struct.ubifs_info*, %struct.inode*, %struct.qstr*, i8*, i64) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @change_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, i8*, i64) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
