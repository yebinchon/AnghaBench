; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_empty_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i64, i8* }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysv_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i64 @dir_pages(%struct.inode* %13)
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %102, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.page* @dir_get_page(%struct.inode* %20, i64 %21)
  store %struct.page* %22, %struct.page** %5, align 8
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i64 @IS_ERR(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %102

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i64 @page_address(%struct.page* %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %32, %struct.sysv_dir_entry** %9, align 8
  %33 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %34 = load i64, i64* @SYSV_DIRSIZE, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %96, %27
  %39 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %40 = bitcast %struct.sysv_dir_entry* %39 to i8*
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ule i8* %40, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %38
  %44 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %45 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %96

49:                                               ; preds = %43
  %50 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %51 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 46
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %106

58:                                               ; preds = %49
  %59 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %60 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %67 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.super_block*, %struct.super_block** %4, align 8
  %70 = call i32 @SYSV_SB(%struct.super_block* %69)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @cpu_to_fs16(i32 %70, i32 %73)
  %75 = icmp eq i64 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %96

77:                                               ; preds = %65
  br label %106

78:                                               ; preds = %58
  %79 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %80 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 46
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %88 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86, %78
  br label %106

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %76, %48
  %97 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %9, align 8
  %98 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %97, i32 1
  store %struct.sysv_dir_entry* %98, %struct.sysv_dir_entry** %9, align 8
  br label %38

99:                                               ; preds = %38
  %100 = load %struct.page*, %struct.page** %5, align 8
  %101 = call i32 @dir_put_page(%struct.page* %100)
  br label %102

102:                                              ; preds = %99, %26
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %15

105:                                              ; preds = %15
  store i32 1, i32* %2, align 4
  br label %109

106:                                              ; preds = %94, %77, %57
  %107 = load %struct.page*, %struct.page** %5, align 8
  %108 = call i32 @dir_put_page(%struct.page* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
