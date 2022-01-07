; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_add_save_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_add_save_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.cpu_key = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.item_head = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@path = common dso_local global i32 0, align 4
@i_link_saved_truncate_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"saved link already exists for truncated inode %lx\00", align 1
@i_link_saved_unlink_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"saved link already exists for unlinked inode %lx\00", align 1
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@MAX_KEY_OBJECTID = common dso_local global i32 0, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"green-2102\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Adding a truncate savelink for a directory %k! Please report\00", align 1
@TYPE_INDIRECT = common dso_local global i32 0, align 4
@ITEM_NOT_FOUND = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-2100\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"search_by_key (%K) returned %d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vs-2120\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"insert_item returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_save_link(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpu_key, align 8
  %9 = alloca %struct.item_head, align 4
  %10 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @path, align 4
  %12 = call i32 @INITIALIZE_PATH(i32 %11)
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @i_link_saved_truncate_mask, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %22, %3
  %31 = phi i1 [ false, %3 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @RFALSE(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @i_link_saved_unlink_mask, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %39, %30
  %48 = phi i1 [ false, %30 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @RFALSE(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %55 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @MAX_KEY_OBJECTID, align 4
  %57 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %47
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 1, %71
  %73 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %8, i32 %72)
  %74 = load i32, i32* @TYPE_DIRECT, align 4
  %75 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %8, i32 %74)
  %76 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 1, %82
  %84 = load i32, i32* @TYPE_DIRECT, align 4
  %85 = call i32 @make_le_item_head(%struct.item_head* %9, %struct.cpu_key* %8, i32 %77, i32 %83, i32 %84, i32 4, i32 65535)
  br label %107

86:                                               ; preds = %47
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @S_ISDIR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call %struct.TYPE_10__* @INODE_PKEY(%struct.inode* %96)
  %98 = call i32 @reiserfs_warning(%struct.TYPE_9__* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %97)
  br label %99

99:                                               ; preds = %92, %86
  %100 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %8, i32 1)
  %101 = load i32, i32* @TYPE_INDIRECT, align 4
  %102 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %8, i32 %101)
  %103 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TYPE_INDIRECT, align 4
  %106 = call i32 @make_le_item_head(%struct.item_head* %9, %struct.cpu_key* %8, i32 %104, i32 1, i32 %105, i32 4, i32 0)
  br label %107

107:                                              ; preds = %99, %66
  %108 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 0
  store i32 3, i32* %108, align 8
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @search_item(%struct.TYPE_9__* %111, %struct.cpu_key* %8, i32* @path)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ITEM_NOT_FOUND, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_9__* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.cpu_key* %8, i32 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = call i32 @pathrelse(i32* @path)
  br label %169

129:                                              ; preds = %107
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = call %struct.TYPE_10__* @INODE_PKEY(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %135 = bitcast i32* %10 to i8*
  %136 = call i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %134, i32* @path, %struct.cpu_key* %8, %struct.item_head* %9, i32* null, i8* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_9__* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %144, %139
  br label %169

151:                                              ; preds = %129
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* @i_link_saved_truncate_mask, align 4
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 4
  br label %168

161:                                              ; preds = %151
  %162 = load i32, i32* @i_link_saved_unlink_mask, align 4
  %163 = load %struct.inode*, %struct.inode** %5, align 8
  %164 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %154
  br label %169

169:                                              ; preds = %127, %168, %150
  ret void
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i64) #1

declare dso_local %struct.TYPE_11__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.cpu_key*, i32) #1

declare dso_local i32 @make_le_item_head(%struct.item_head*, %struct.cpu_key*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_9__*, i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @search_item(%struct.TYPE_9__*, %struct.cpu_key*, i32*) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_9__*, i8*, i8*, ...) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle*, i32*, %struct.cpu_key*, %struct.item_head*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
