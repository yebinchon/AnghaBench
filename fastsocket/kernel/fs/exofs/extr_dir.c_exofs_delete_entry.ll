; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exofs_dir_entry = type { i64, i64 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.exofs_sb_info* }
%struct.exofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"ERROR: exofs_delete_entry:zero-length directory entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"exofs_delete_entry: exofs_write_begin FAILD => %d\0A\00", align 1
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exofs_delete_entry(%struct.exofs_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.exofs_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.exofs_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.exofs_dir_entry*, align 8
  %13 = alloca %struct.exofs_dir_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.exofs_dir_entry* %0, %struct.exofs_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %5, align 8
  %18 = load %struct.address_space*, %struct.address_space** %5, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %24, align 8
  store %struct.exofs_sb_info* %25, %struct.exofs_sb_info** %7, align 8
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i8* @page_address(%struct.page* %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %3, align 8
  %29 = bitcast %struct.exofs_dir_entry* %28 to i8*
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @exofs_chunk_size(%struct.inode* %34)
  %36 = sub nsw i32 %35, 1
  %37 = xor i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = and i64 %33, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %3, align 8
  %42 = bitcast %struct.exofs_dir_entry* %41 to i8*
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %3, align 8
  %48 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le16_to_cpu(i64 %49)
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %46, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  store %struct.exofs_dir_entry* null, %struct.exofs_dir_entry** %12, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %58, %struct.exofs_dir_entry** %13, align 8
  br label %59

59:                                               ; preds = %72, %2
  %60 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %61 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %3, align 8
  %62 = icmp ult %struct.exofs_dir_entry* %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %65 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %147

72:                                               ; preds = %63
  %73 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  store %struct.exofs_dir_entry* %73, %struct.exofs_dir_entry** %12, align 8
  %74 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %75 = call %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry* %74)
  store %struct.exofs_dir_entry* %75, %struct.exofs_dir_entry** %13, align 8
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %12, align 8
  %78 = icmp ne %struct.exofs_dir_entry* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %12, align 8
  %81 = bitcast %struct.exofs_dir_entry* %80 to i8*
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = call i8* @page_address(%struct.page* %82)
  %84 = ptrtoint i8* %81 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %79, %76
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = call i64 @page_offset(%struct.page* %89)
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  store i64 %93, i64* %11, align 8
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i32 @lock_page(%struct.page* %94)
  %96 = load %struct.page*, %struct.page** %4, align 8
  %97 = getelementptr inbounds %struct.page, %struct.page* %96, i32 0, i32 0
  %98 = load %struct.address_space*, %struct.address_space** %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %100, %101
  %103 = call i32 @exofs_write_begin(i32* null, %struct.address_space* %98, i64 %99, i32 %102, i32 0, %struct.page** %4, i32* null)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %88
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %88
  %110 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %12, align 8
  %111 = icmp ne %struct.exofs_dir_entry* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub i32 %113, %114
  %116 = call i64 @cpu_to_le16(i32 %115)
  %117 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %12, align 8
  %118 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %109
  %120 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %3, align 8
  %121 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @likely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %119
  %129 = load %struct.page*, %struct.page** %4, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sub i32 %131, %132
  %134 = call i32 @exofs_commit_chunk(%struct.page* %129, i64 %130, i32 %133)
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %128, %119
  %136 = load i32, i32* @CURRENT_TIME, align 4
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = call i32 @mark_inode_dirty(%struct.inode* %141)
  %143 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %7, align 8
  %144 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %135, %68
  %148 = load %struct.page*, %struct.page** %4, align 8
  %149 = call i32 @exofs_put_page(%struct.page* %148)
  %150 = load i32, i32* %14, align 4
  ret i32 %150
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @exofs_chunk_size(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @EXOFS_ERR(i8*, ...) #1

declare dso_local %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @exofs_write_begin(i32*, %struct.address_space*, i64, i32, i32, %struct.page**, i32*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @exofs_commit_chunk(%struct.page*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @exofs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
