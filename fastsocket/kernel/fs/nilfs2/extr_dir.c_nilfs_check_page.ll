; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_check_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_check_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nilfs_dir_entry = type { i32, i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"nilfs_check_page\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"size of directory #%lu is not a multiple of chunk size\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unaligned directory entry\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"bad entry in directory #%lu: %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"entry in directory #%lu spans the page boundaryoffset=%lu, inode=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @nilfs_check_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_check_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_dir_entry*, align 8
  %11 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %4, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 @nilfs_chunk_size(%struct.inode* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i8* @page_address(%struct.page* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %29 = lshr i32 %27, %28
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %1
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %113

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %110

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %1
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %100, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %57 = sub i32 %55, %56
  %58 = icmp ule i32 %54, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = bitcast i8* %63 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %64, %struct.nilfs_dir_entry** %10, align 8
  %65 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %66 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %119

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %120

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %81 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NILFS_DIR_REC_LEN(i32 %82)
  %84 = icmp ult i32 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %121

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %87, %88
  %90 = sub i32 %89, 1
  %91 = load i32, i32* %7, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* %5, align 4
  %94 = sub i32 %93, 1
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %122

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %53

104:                                              ; preds = %53
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %145

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %50
  %111 = load %struct.page*, %struct.page** %2, align 8
  %112 = call i32 @SetPageChecked(%struct.page* %111)
  br label %172

113:                                              ; preds = %46
  %114 = load %struct.super_block*, %struct.super_block** %4, align 8
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @nilfs_error(%struct.super_block* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %167

119:                                              ; preds = %72
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %123

120:                                              ; preds = %77
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %123

121:                                              ; preds = %85
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %123

122:                                              ; preds = %98
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %123

123:                                              ; preds = %122, %121, %120, %119
  %124 = load %struct.super_block*, %struct.super_block** %4, align 8
  %125 = load %struct.inode*, %struct.inode** %3, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.page*, %struct.page** %2, align 8
  %130 = getelementptr inbounds %struct.page, %struct.page* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = add i32 %133, %134
  %136 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %137 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @le64_to_cpu(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %142 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @nilfs_error(%struct.super_block* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %127, i8* %128, i32 %135, i64 %139, i32 %140, i32 %143)
  br label %167

145:                                              ; preds = %108
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = bitcast i8* %149 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %150, %struct.nilfs_dir_entry** %10, align 8
  %151 = load %struct.super_block*, %struct.super_block** %4, align 8
  %152 = load %struct.inode*, %struct.inode** %3, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.page*, %struct.page** %2, align 8
  %156 = getelementptr inbounds %struct.page, %struct.page* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = add i32 %159, %160
  %162 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %163 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @le64_to_cpu(i32 %164)
  %166 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @nilfs_error(%struct.super_block* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %161, i64 %165)
  br label %167

167:                                              ; preds = %145, %123, %113
  %168 = load %struct.page*, %struct.page** %2, align 8
  %169 = call i32 @SetPageChecked(%struct.page* %168)
  %170 = load %struct.page*, %struct.page** %2, align 8
  %171 = call i32 @SetPageError(%struct.page* %170)
  br label %172

172:                                              ; preds = %167, %110
  ret void
}

declare dso_local i32 @nilfs_chunk_size(%struct.inode*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @NILFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @nilfs_error(%struct.super_block*, i8*, i8*, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
