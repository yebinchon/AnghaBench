; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.ubifs_inode = type { i64, i64, i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"xattr '%s', ino %lu ('%.*s'), buf size %zd\00", align 1
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"buffer size %zd, xattr len %d\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_getxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ubifs_info*, align 8
  %13 = alloca %struct.qstr, align 8
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca %struct.ubifs_dent_node*, align 8
  %16 = alloca %union.ubifs_key, align 4
  %17 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %24, align 8
  store %struct.ubifs_info* %25, %struct.ubifs_info** %12, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %28, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @dbg_gen(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %34, i32 %38, i32 %42, i64 %43)
  %45 = call i32 @check_namespace(%struct.qstr* %13)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %5, align 4
  br label %151

50:                                               ; preds = %4
  %51 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call %struct.ubifs_dent_node* @kmalloc(i32 %51, i32 %52)
  store %struct.ubifs_dent_node* %53, %struct.ubifs_dent_node** %15, align 8
  %54 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %15, align 8
  %55 = icmp ne %struct.ubifs_dent_node* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %151

59:                                               ; preds = %50
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @xent_key_init(%struct.ubifs_info* %60, %union.ubifs_key* %16, i32 %63, %struct.qstr* %13)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %66 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %15, align 8
  %67 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %65, %union.ubifs_key* %16, %struct.ubifs_dent_node* %66, %struct.qstr* %13)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENODATA, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %147

79:                                               ; preds = %59
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %81 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %15, align 8
  %82 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le64_to_cpu(i32 %83)
  %85 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %80, i32 %84)
  store %struct.inode* %85, %struct.inode** %10, align 8
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = call i64 @IS_ERR(%struct.inode* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = call i32 @PTR_ERR(%struct.inode* %90)
  store i32 %91, i32* %17, align 4
  br label %147

92:                                               ; preds = %79
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %93)
  store %struct.ubifs_inode* %94, %struct.ubifs_inode** %14, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %99 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ubifs_assert(i32 %102)
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %109 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ubifs_assert(i32 %112)
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %139

116:                                              ; preds = %92
  %117 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %118 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %125 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @dbg_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %123, i64 %126)
  %128 = load i32, i32* @ERANGE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  br label %144

130:                                              ; preds = %116
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %133 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %136 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memcpy(i8* %131, i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %130, %92
  %140 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %141 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %139, %122
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = call i32 @iput(%struct.inode* %145)
  br label %147

147:                                              ; preds = %144, %89, %78
  %148 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %15, align 8
  %149 = call i32 @kfree(%struct.ubifs_dent_node* %148)
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %56, %48
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dbg_gen(i8*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @check_namespace(%struct.qstr*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.qstr*) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_err(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
