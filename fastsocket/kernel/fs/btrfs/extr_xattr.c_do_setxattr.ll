; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_do_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_do_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i64, i32)* @do_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setxattr(%struct.btrfs_trans_handle* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_dir_item*, align 8
  %15 = alloca %struct.btrfs_root*, align 8
  %16 = alloca %struct.btrfs_path*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %15, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %25 = load i64, i64* %17, align 8
  %26 = load i64, i64* %12, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %29 = call i64 @BTRFS_MAX_XATTR_SIZE(%struct.btrfs_root* %28)
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %159

34:                                               ; preds = %6
  %35 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %35, %struct.btrfs_path** %16, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %37 = icmp ne %struct.btrfs_path* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %159

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @XATTR_REPLACE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @btrfs_ino(%struct.inode* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call %struct.btrfs_dir_item* @btrfs_lookup_xattr(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, %struct.btrfs_path* %49, i32 %51, i8* %52, i64 %53, i32 -1)
  store %struct.btrfs_dir_item* %54, %struct.btrfs_dir_item** %14, align 8
  %55 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %56 = call i64 @IS_ERR(%struct.btrfs_dir_item* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %60 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %59)
  store i32 %60, i32* %18, align 4
  br label %155

61:                                               ; preds = %46
  %62 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %63 = icmp ne %struct.btrfs_dir_item* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ENODATA, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %18, align 4
  br label %155

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %72 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %73 = call i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle* %69, %struct.btrfs_root* %70, %struct.btrfs_path* %71, %struct.btrfs_dir_item* %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %155

77:                                               ; preds = %68
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %79 = call i32 @btrfs_release_path(%struct.btrfs_path* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %155

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %41
  br label %85

85:                                               ; preds = %150, %134, %84
  %86 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call i32 @btrfs_ino(%struct.inode* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @btrfs_insert_xattr_item(%struct.btrfs_trans_handle* %86, %struct.btrfs_root* %87, %struct.btrfs_path* %88, i32 %90, i8* %91, i64 %92, i8* %93, i64 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @EOVERFLOW, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load i32, i32* @EEXIST, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %100, %85
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @EEXIST, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %154

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @XATTR_CREATE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %155

114:                                              ; preds = %108
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %116 = call i32 @btrfs_release_path(%struct.btrfs_path* %115)
  %117 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call i32 @btrfs_ino(%struct.inode* %120)
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call %struct.btrfs_dir_item* @btrfs_lookup_xattr(%struct.btrfs_trans_handle* %117, %struct.btrfs_root* %118, %struct.btrfs_path* %119, i32 %121, i8* %122, i64 %123, i32 -1)
  store %struct.btrfs_dir_item* %124, %struct.btrfs_dir_item** %14, align 8
  %125 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %126 = call i64 @IS_ERR(%struct.btrfs_dir_item* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %114
  %129 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %130 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %129)
  store i32 %130, i32* %18, align 4
  br label %155

131:                                              ; preds = %114
  %132 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %133 = icmp ne %struct.btrfs_dir_item* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %136 = call i32 @btrfs_release_path(%struct.btrfs_path* %135)
  br label %85

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %140 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %141 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %142 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %143 = call i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle* %139, %struct.btrfs_root* %140, %struct.btrfs_path* %141, %struct.btrfs_dir_item* %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %155

147:                                              ; preds = %138
  %148 = load i8*, i8** %11, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %152 = call i32 @btrfs_release_path(%struct.btrfs_path* %151)
  br label %85

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %103
  br label %155

155:                                              ; preds = %154, %146, %128, %113, %82, %76, %64, %58
  %156 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %157 = call i32 @btrfs_free_path(%struct.btrfs_path* %156)
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %38, %31
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BTRFS_MAX_XATTR_SIZE(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_xattr(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i64, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_xattr_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
