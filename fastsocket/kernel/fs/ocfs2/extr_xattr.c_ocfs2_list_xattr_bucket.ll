; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_list_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_list_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_tree_list = type { i32, i32, i32 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.TYPE_3__ = type { %struct.ocfs2_xattr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_list_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_list_xattr_bucket(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_xattr_tree_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ocfs2_xattr_tree_list*
  store %struct.ocfs2_xattr_tree_list* %17, %struct.ocfs2_xattr_tree_list** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %78, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %21 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %18
  %27 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %28 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %30, i64 %32
  store %struct.ocfs2_xattr_entry* %33, %struct.ocfs2_xattr_entry** %15, align 8
  %34 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %35 = call i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @ocfs2_xattr_prefix(i32 %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %26
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %45 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ocfs2_xattr_bucket_get_name_value(i32 %43, %struct.TYPE_3__* %45, i32 %46, i32* %11, i32* %12)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %81

51:                                               ; preds = %40
  %52 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @bucket_block(%struct.ocfs2_xattr_bucket* %52, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %14, align 8
  %59 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %63 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %65, i32 0, i32 0
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ocfs2_xattr_list_entry(i32 %61, i32 %64, i32* %66, i8* %67, i8* %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %51
  br label %81

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %26
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %18

81:                                               ; preds = %75, %50, %18
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry*) #1

declare dso_local i8* @ocfs2_xattr_prefix(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_get_name_value(i32, %struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i64 @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_list_entry(i32, i32, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
