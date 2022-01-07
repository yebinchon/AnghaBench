; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exofs_dir_entry = type { i64 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.exofs_i_info = type { i64 }

@.str = private unnamed_addr constant [53 x i8] c"ERROR: exofs_find_entry: zero-length directory entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode* %0, %struct.dentry* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.exofs_dir_entry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.exofs_i_info*, align 8
  %16 = alloca %struct.exofs_dir_entry*, align 8
  %17 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @EXOFS_DIR_REC_LEN(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i64 @dir_pages(%struct.inode* %28)
  store i64 %29, i64* %13, align 8
  store %struct.page* null, %struct.page** %14, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.exofs_i_info* @exofs_i(%struct.inode* %30)
  store %struct.exofs_i_info* %31, %struct.exofs_i_info** %15, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %105

35:                                               ; preds = %3
  %36 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* null, %struct.page** %36, align 8
  %37 = load %struct.exofs_i_info*, %struct.exofs_i_info** %15, align 8
  %38 = getelementptr inbounds %struct.exofs_i_info, %struct.exofs_i_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i64, i64* %11, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %100, %44
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call %struct.page* @exofs_get_page(%struct.inode* %47, i64 %48)
  store %struct.page* %49, %struct.page** %14, align 8
  %50 = load %struct.page*, %struct.page** %14, align 8
  %51 = call i32 @IS_ERR(%struct.page* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %46
  %54 = load %struct.page*, %struct.page** %14, align 8
  %55 = call i8* @page_address(%struct.page* %54)
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = bitcast i8* %56 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %57, %struct.exofs_dir_entry** %16, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @exofs_last_byte(%struct.inode* %58, i64 %59)
  %61 = load i32, i32* %10, align 4
  %62 = sub i32 %60, %61
  %63 = load i8*, i8** %17, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %87, %53
  %67 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %16, align 8
  %68 = bitcast %struct.exofs_dir_entry* %67 to i8*
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ule i8* %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %16, align 8
  %73 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = call i32 @EXOFS_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.page*, %struct.page** %14, align 8
  %79 = call i32 @exofs_put_page(%struct.page* %78)
  br label %105

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %16, align 8
  %84 = call i64 @exofs_match(i32 %81, i8* %82, %struct.exofs_dir_entry* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %106

87:                                               ; preds = %80
  %88 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %16, align 8
  %89 = call %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry* %88)
  store %struct.exofs_dir_entry* %89, %struct.exofs_dir_entry** %16, align 8
  br label %66

90:                                               ; preds = %66
  %91 = load %struct.page*, %struct.page** %14, align 8
  %92 = call i32 @exofs_put_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %46
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %46, label %104

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %76, %34
  store %struct.exofs_dir_entry* null, %struct.exofs_dir_entry** %4, align 8
  br label %113

106:                                              ; preds = %86
  %107 = load %struct.page*, %struct.page** %14, align 8
  %108 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %107, %struct.page** %108, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.exofs_i_info*, %struct.exofs_i_info** %15, align 8
  %111 = getelementptr inbounds %struct.exofs_i_info, %struct.exofs_i_info* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %16, align 8
  store %struct.exofs_dir_entry* %112, %struct.exofs_dir_entry** %4, align 8
  br label %113

113:                                              ; preds = %106, %105
  %114 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %4, align 8
  ret %struct.exofs_dir_entry* %114
}

declare dso_local i32 @EXOFS_DIR_REC_LEN(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.exofs_i_info* @exofs_i(%struct.inode*) #1

declare dso_local %struct.page* @exofs_get_page(%struct.inode*, i64) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @exofs_last_byte(%struct.inode*, i64) #1

declare dso_local i32 @EXOFS_ERR(i8*) #1

declare dso_local i32 @exofs_put_page(%struct.page*) #1

declare dso_local i64 @exofs_match(i32, i8*, %struct.exofs_dir_entry*) #1

declare dso_local %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
