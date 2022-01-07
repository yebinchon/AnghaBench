; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_ubifs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.ubifs_dent_node = type { i32, i32, i32* }
%struct.qstr = type { i64, i32* }

@.str = private unnamed_addr constant [34 x i8] c"ino %lu ('%.*s'), buffer size %zd\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@TRUSTED_XATTR = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot find next direntry, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ubifs_key, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_dent_node*, align 8
  %13 = alloca %struct.ubifs_dent_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qstr, align 8
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %25, align 8
  store %struct.ubifs_info* %26, %struct.ubifs_info** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %27)
  store %struct.ubifs_inode* %28, %struct.ubifs_inode** %11, align 8
  store %struct.ubifs_dent_node* null, %struct.ubifs_dent_node** %13, align 8
  store i32 0, i32* %16, align 4
  %29 = bitcast %struct.qstr* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @dbg_gen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40, i64 %41)
  %43 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %44 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %47 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %15, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  br label %148

54:                                               ; preds = %3
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %7, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ERANGE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %148

62:                                               ; preds = %54
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @lowest_xent_key(%struct.ubifs_info* %63, %union.ubifs_key* %8, i32 %66)
  br label %68

68:                                               ; preds = %62, %121
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %70 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %69, %union.ubifs_key* %8, %struct.qstr* %17)
  store %struct.ubifs_dent_node* %70, %struct.ubifs_dent_node** %12, align 8
  %71 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %72 = call i64 @IS_ERR(%struct.ubifs_dent_node* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %76 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %75)
  store i32 %76, i32* %14, align 4
  br label %129

77:                                               ; preds = %68
  %78 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %79 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  store i32* %80, i32** %81, align 8
  %82 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %83 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le16_to_cpu(i32 %84)
  %86 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = call i32 @check_namespace(%struct.qstr* %17)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %14, align 4
  br label %129

95:                                               ; preds = %77
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @TRUSTED_XATTR, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %101 = call i64 @capable(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %99, %95
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @memcpy(i8* %107, i32* %109, i64 %112)
  %114 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %103, %99
  %122 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %13, align 8
  %123 = call i32 @kfree(%struct.ubifs_dent_node* %122)
  %124 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  store %struct.ubifs_dent_node* %124, %struct.ubifs_dent_node** %13, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %126 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %127 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %126, i32 0, i32 0
  %128 = call i32 @key_read(%struct.ubifs_info* %125, i32* %127, %union.ubifs_key* %8)
  br label %68

129:                                              ; preds = %93, %74
  %130 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %13, align 8
  %131 = call i32 @kfree(%struct.ubifs_dent_node* %130)
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @ubifs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %148

140:                                              ; preds = %129
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %7, align 8
  %144 = icmp ule i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ubifs_assert(i32 %145)
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %136, %59, %52
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @lowest_xent_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_dent_node*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_dent_node*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @check_namespace(%struct.qstr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
