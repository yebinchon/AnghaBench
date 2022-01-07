; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i8*, i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_dir_entry = type { i64, i64, i32, i32* }
%struct.reiserfs_transaction_handle = type { i32 }

@path = common dso_local global i32 0, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reiserfs-7042\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"deleting nonexistent file (%lu), %d\00", align 1
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@DEH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @reiserfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.reiserfs_dir_entry, align 8
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load i32, i32* @path, align 4
  %14 = call i32 @INITIALIZE_PATH(i32 %13)
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %23)
  %25 = mul nsw i32 4, %24
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reiserfs_write_lock(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %164

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @reiserfs_find_entry(%struct.inode* %41, i32 %45, i32 %49, i32* @path, %struct.reiserfs_dir_entry* %9)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @NAME_NOT_FOUND, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %151

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IO_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %151

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %151

78:                                               ; preds = %64
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @reiserfs_warning(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %89, i32 %92)
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %83, %78
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = call i32 @drop_nlink(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %12, align 8
  %103 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 2
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %10, i32* @path, i32* %103, %struct.inode* %104, i32* null, i32 0)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i32 @inc_nlink(%struct.inode* %109)
  br label %151

111:                                              ; preds = %96
  %112 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %115)
  %117 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DEH_SIZE, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  %127 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 4
  store i8* %127, i8** %131, align 8
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %132)
  %134 = load i64, i64* %12, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %111
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = call i32 @add_save_link(%struct.reiserfs_transaction_handle* %10, %struct.inode* %137, i32 0)
  br label %139

139:                                              ; preds = %136, %111
  %140 = load %struct.inode*, %struct.inode** %4, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = call i32 @reiserfs_check_path(i32* @path)
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @reiserfs_write_unlock(i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %170

151:                                              ; preds = %108, %75, %60, %53
  %152 = call i32 @pathrelse(i32* @path)
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = call i32 @reiserfs_check_path(i32* @path)
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %151
  br label %164

164:                                              ; preds = %163, %38
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @reiserfs_write_unlock(i32 %167)
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %164, %139
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_find_entry(%struct.inode*, i32, i32, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle*, i32*, i32*, %struct.inode*, i32*, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @add_save_link(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @pathrelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
