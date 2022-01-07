; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_check_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_check_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.exofs_dir_entry = type { i32, i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"ERROR [exofs_check_page]: size of directory #%lu is not a multiple of chunk size\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unaligned directory entry\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"ERROR [exofs_check_page]: bad entry in directory #%lu: %s - offset=%lu, inode=%llu, rec_len=%d, name_len=%d\00", align 1
@.str.6 = private unnamed_addr constant [96 x i8] c"ERROR [exofs_check_page]: entry in directory #%lu spans the page boundaryoffset=%lu, inode=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @exofs_check_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exofs_check_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.exofs_dir_entry*, align 8
  %10 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @exofs_chunk_size(%struct.inode* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i8* @page_address(%struct.page* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %1
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %109

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %106

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %1
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @EXOFS_DIR_REC_LEN(i32 1)
  %53 = sub i32 %51, %52
  %54 = icmp ule i32 %50, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %60, %struct.exofs_dir_entry** %9, align 8
  %61 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %9, align 8
  %62 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @EXOFS_DIR_REC_LEN(i32 1)
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %114

69:                                               ; preds = %55
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 3
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %115

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %9, align 8
  %77 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @EXOFS_DIR_REC_LEN(i32 %78)
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %116

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %83, %84
  %86 = sub i32 %85, 1
  %87 = load i32, i32* %6, align 4
  %88 = xor i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = sub i32 %89, 1
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %117

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %49

100:                                              ; preds = %49
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %140

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %46
  %107 = load %struct.page*, %struct.page** %2, align 8
  %108 = call i32 @SetPageChecked(%struct.page* %107)
  br label %167

109:                                              ; preds = %42
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, ...) @EXOFS_ERR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %162

114:                                              ; preds = %68
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %118

115:                                              ; preds = %73
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %118

116:                                              ; preds = %81
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %118

117:                                              ; preds = %94
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %118

118:                                              ; preds = %117, %116, %115, %114
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.page*, %struct.page** %2, align 8
  %124 = getelementptr inbounds %struct.page, %struct.page* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %127, %128
  %130 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %9, align 8
  %131 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le64_to_cpu(i32 %132)
  %134 = call i32 @_LLU(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %9, align 8
  %137 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i32, ...) @EXOFS_ERR(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 %121, i8* %122, i32 %129, i32 %134, i32 %135, i32 %138)
  br label %162

140:                                              ; preds = %104
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = bitcast i8* %144 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %145, %struct.exofs_dir_entry** %9, align 8
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.page*, %struct.page** %2, align 8
  %150 = getelementptr inbounds %struct.page, %struct.page* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %6, align 4
  %155 = add i32 %153, %154
  %156 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %9, align 8
  %157 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le64_to_cpu(i32 %158)
  %160 = call i32 @_LLU(i32 %159)
  %161 = call i32 (i8*, i32, ...) @EXOFS_ERR(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %155, i32 %160)
  br label %162

162:                                              ; preds = %140, %118, %109
  %163 = load %struct.page*, %struct.page** %2, align 8
  %164 = call i32 @SetPageChecked(%struct.page* %163)
  %165 = load %struct.page*, %struct.page** %2, align 8
  %166 = call i32 @SetPageError(%struct.page* %165)
  br label %167

167:                                              ; preds = %162, %106
  ret void
}

declare dso_local i32 @exofs_chunk_size(%struct.inode*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @EXOFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @EXOFS_ERR(i8*, i32, ...) #1

declare dso_local i32 @_LLU(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
