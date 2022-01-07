; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_prealloc_file_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_prealloc_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i64 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_FILE_EXTENT_PREALLOC = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@BTRFS_INODE_PREALLOC = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64, i64, i64, i64, i64*, %struct.btrfs_trans_handle*)* @__btrfs_prealloc_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_prealloc_file_range(%struct.inode* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, %struct.btrfs_trans_handle* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.btrfs_trans_handle*, align 8
  %17 = alloca %struct.btrfs_root*, align 8
  %18 = alloca %struct.btrfs_key, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store %struct.btrfs_trans_handle* %7, %struct.btrfs_trans_handle** %16, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %25, align 8
  store %struct.btrfs_root* %26, %struct.btrfs_root** %17, align 8
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %19, align 8
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %29 = icmp ne %struct.btrfs_trans_handle* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  br label %31

31:                                               ; preds = %30, %8
  br label %32

32:                                               ; preds = %185, %31
  %33 = load i64, i64* %12, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %186

35:                                               ; preds = %32
  %36 = load i32, i32* %22, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %40 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %39, i32 3)
  store %struct.btrfs_trans_handle* %40, %struct.btrfs_trans_handle** %16, align 8
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %42 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %46 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %45)
  store i32 %46, i32* %21, align 4
  br label %186

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle* %49, %struct.btrfs_root* %50, i64 %51, i64 %52, i32 0, i64 %54, %struct.btrfs_key* %18, i32 1)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %64 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %62, %struct.btrfs_root* %63)
  br label %65

65:                                               ; preds = %61, %58
  br label %186

66:                                               ; preds = %48
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = load i64, i64* %19, align 8
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @BTRFS_FILE_EXTENT_PREALLOC, align 4
  %79 = call i32 @insert_reserved_file_extent(%struct.btrfs_trans_handle* %67, %struct.inode* %68, i64 %69, i64 %71, i64 %73, i64 %75, i64 %77, i32 0, i32 0, i32 0, i32 %78)
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %66
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %83, %struct.btrfs_root* %84, i32 %85)
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %92 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %90, %struct.btrfs_root* %91)
  br label %93

93:                                               ; preds = %89, %82
  br label %186

94:                                               ; preds = %66
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %19, align 8
  %98 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %97, %99
  %101 = sub nsw i64 %100, 1
  %102 = call i32 @btrfs_drop_extent_cache(%struct.inode* %95, i64 %96, i64 %101, i32 0)
  %103 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %12, align 8
  %107 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %19, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %19, align 8
  %111 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %112, %114
  %116 = load i64*, i64** %15, align 8
  store i64 %115, i64* %116, align 8
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = call i32 @inode_inc_iversion(%struct.inode* %117)
  %119 = load i32, i32* @CURRENT_TIME, align 4
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @BTRFS_INODE_PREALLOC, align 4
  %123 = load %struct.inode*, %struct.inode** %9, align 8
  %124 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %159, label %132

132:                                              ; preds = %94
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %159

138:                                              ; preds = %132
  %139 = load i64, i64* %19, align 8
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %14, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i64, i64* %14, align 8
  store i64 %149, i64* %20, align 8
  br label %152

150:                                              ; preds = %144
  %151 = load i64, i64* %19, align 8
  store i64 %151, i64* %20, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = load i64, i64* %20, align 8
  %155 = call i32 @i_size_write(%struct.inode* %153, i64 %154)
  %156 = load %struct.inode*, %struct.inode** %9, align 8
  %157 = load i64, i64* %20, align 8
  %158 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %156, i64 %157, i32* null)
  br label %159

159:                                              ; preds = %152, %138, %132, %94
  %160 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %161 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %162 = load %struct.inode*, %struct.inode** %9, align 8
  %163 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %160, %struct.btrfs_root* %161, %struct.inode* %162)
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %168 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %169 = load i32, i32* %21, align 4
  %170 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %167, %struct.btrfs_root* %168, i32 %169)
  %171 = load i32, i32* %22, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %175 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %176 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %174, %struct.btrfs_root* %175)
  br label %177

177:                                              ; preds = %173, %166
  br label %186

178:                                              ; preds = %159
  %179 = load i32, i32* %22, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %183 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %184 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %182, %struct.btrfs_root* %183)
  br label %185

185:                                              ; preds = %181, %178
  br label %32

186:                                              ; preds = %177, %93, %65, %44, %32
  %187 = load i32, i32* %21, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64, i64, i32, i64, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @insert_reserved_file_extent(%struct.btrfs_trans_handle*, %struct.inode*, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_drop_extent_cache(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i64, i32*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
