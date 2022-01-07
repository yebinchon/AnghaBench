; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_unlink_subvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_unlink_subvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, i32, i64 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_unlink_subvol(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_path*, align 8
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca %struct.btrfs_dir_item*, align 8
  %17 = alloca %struct.btrfs_key, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call i64 @btrfs_ino(%struct.inode* %21)
  store i64 %22, i64* %20, align 8
  %23 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %23, %struct.btrfs_path** %14, align 8
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %25 = icmp ne %struct.btrfs_path* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %203

29:                                               ; preds = %6
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %33 = load i64, i64* %20, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle* %30, %struct.btrfs_root* %31, %struct.btrfs_path* %32, i64 %33, i8* %34, i32 %35, i32 -1)
  store %struct.btrfs_dir_item* %36, %struct.btrfs_dir_item** %16, align 8
  %37 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %38 = call i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %42 = icmp ne %struct.btrfs_dir_item* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %19, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %48 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %47)
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %199

50:                                               ; preds = %29
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %52 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %51, i32 0, i32 1
  %53 = load %struct.extent_buffer**, %struct.extent_buffer*** %52, align 8
  %54 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %53, i64 0
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %54, align 8
  store %struct.extent_buffer* %55, %struct.extent_buffer** %15, align 8
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %57 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %58 = call i32 @btrfs_dir_item_key_to_cpu(%struct.extent_buffer* %56, %struct.btrfs_dir_item* %57, %struct.btrfs_key* %17)
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br label %68

68:                                               ; preds = %63, %50
  %69 = phi i1 [ true, %50 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %75 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %76 = call i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle* %72, %struct.btrfs_root* %73, %struct.btrfs_path* %74, %struct.btrfs_dir_item* %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, i32 %82)
  br label %199

84:                                               ; preds = %68
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %86 = call i32 @btrfs_release_path(%struct.btrfs_path* %85)
  %87 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %89 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @btrfs_del_root_ref(%struct.btrfs_trans_handle* %87, i32 %92, i64 %93, i32 %97, i64 %98, i64* %18, i8* %99, i32 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %84
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %110, %struct.btrfs_root* %111, i32 %112)
  br label %199

114:                                              ; preds = %104
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call %struct.btrfs_dir_item* @btrfs_search_dir_index_item(%struct.btrfs_root* %115, %struct.btrfs_path* %116, i64 %117, i8* %118, i32 %119)
  store %struct.btrfs_dir_item* %120, %struct.btrfs_dir_item** %16, align 8
  %121 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %122 = call i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %114
  %125 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %126 = icmp ne %struct.btrfs_dir_item* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %19, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %132 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %131)
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %134, %struct.btrfs_root* %135, i32 %136)
  br label %199

138:                                              ; preds = %114
  %139 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %140 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %139, i32 0, i32 1
  %141 = load %struct.extent_buffer**, %struct.extent_buffer*** %140, align 8
  %142 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %141, i64 0
  %143 = load %struct.extent_buffer*, %struct.extent_buffer** %142, align 8
  store %struct.extent_buffer* %143, %struct.extent_buffer** %15, align 8
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %145 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %146 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %144, %struct.btrfs_key* %17, i32 %149)
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %152 = call i32 @btrfs_release_path(%struct.btrfs_path* %151)
  %153 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %18, align 8
  br label %155

155:                                              ; preds = %138, %84
  %156 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %157 = call i32 @btrfs_release_path(%struct.btrfs_path* %156)
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %160 = load %struct.inode*, %struct.inode** %10, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i32 @btrfs_delete_delayed_dir_index(%struct.btrfs_trans_handle* %158, %struct.btrfs_root* %159, %struct.inode* %160, i64 %161)
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %166, %struct.btrfs_root* %167, i32 %168)
  br label %199

170:                                              ; preds = %155
  %171 = load %struct.inode*, %struct.inode** %10, align 8
  %172 = load %struct.inode*, %struct.inode** %10, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = sub nsw i64 %174, %177
  %179 = call i32 @btrfs_i_size_write(%struct.inode* %171, i64 %178)
  %180 = load %struct.inode*, %struct.inode** %10, align 8
  %181 = call i32 @inode_inc_iversion(%struct.inode* %180)
  %182 = load i32, i32* @CURRENT_TIME, align 4
  %183 = load %struct.inode*, %struct.inode** %10, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.inode*, %struct.inode** %10, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %188 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %189 = load %struct.inode*, %struct.inode** %10, align 8
  %190 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %187, %struct.btrfs_root* %188, %struct.inode* %189)
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %170
  %194 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %195 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %194, %struct.btrfs_root* %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %170
  br label %199

199:                                              ; preds = %198, %165, %133, %109, %79, %49
  %200 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %201 = call i32 @btrfs_free_path(%struct.btrfs_path* %200)
  %202 = load i32, i32* %19, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %199, %26
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_root_ref(%struct.btrfs_trans_handle*, i32, i64, i32, i64, i64*, i8*, i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_search_dir_index_item(%struct.btrfs_root*, %struct.btrfs_path*, i64, i8*, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_delete_delayed_dir_index(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i64) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
