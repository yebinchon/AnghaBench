; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_empty_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.page = type { i32 }
%struct.exofs_dir_entry = type { i64, i64, i8*, i32 }

@.str = private unnamed_addr constant [68 x i8] c"ERROR: exofs_empty_dir: zero-length directory entrykaddr=%p, de=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exofs_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.exofs_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @dir_pages(%struct.inode* %9)
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %102, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %105

15:                                               ; preds = %11
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.page* @exofs_get_page(%struct.inode* %16, i64 %17)
  store %struct.page* %18, %struct.page** %4, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i64 @IS_ERR(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %102

23:                                               ; preds = %15
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i8* @page_address(%struct.page* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %27, %struct.exofs_dir_entry** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @exofs_last_byte(%struct.inode* %28, i64 %29)
  %31 = call i64 @EXOFS_DIR_REC_LEN(i32 1)
  %32 = sub nsw i64 %30, %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %96, %23
  %36 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %37 = bitcast %struct.exofs_dir_entry* %36 to i8*
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ule i8* %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %35
  %41 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %42 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %48 = call i32 @EXOFS_ERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %46, %struct.exofs_dir_entry* %47)
  br label %106

49:                                               ; preds = %40
  %50 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %51 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %56 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 46
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %106

63:                                               ; preds = %54
  %64 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %65 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %106

69:                                               ; preds = %63
  %70 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %71 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %76 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @le64_to_cpu(i64 %77)
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %106

84:                                               ; preds = %74
  br label %95

85:                                               ; preds = %69
  %86 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %87 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 46
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %106

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %84
  br label %96

96:                                               ; preds = %95, %49
  %97 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %8, align 8
  %98 = call %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry* %97)
  store %struct.exofs_dir_entry* %98, %struct.exofs_dir_entry** %8, align 8
  br label %35

99:                                               ; preds = %35
  %100 = load %struct.page*, %struct.page** %4, align 8
  %101 = call i32 @exofs_put_page(%struct.page* %100)
  br label %102

102:                                              ; preds = %99, %22
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %11

105:                                              ; preds = %11
  store i32 1, i32* %2, align 4
  br label %109

106:                                              ; preds = %93, %83, %68, %62, %45
  %107 = load %struct.page*, %struct.page** %4, align 8
  %108 = call i32 @exofs_put_page(%struct.page* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @exofs_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @exofs_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @EXOFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @EXOFS_ERR(i8*, i8*, %struct.exofs_dir_entry*) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local %struct.exofs_dir_entry* @exofs_next_entry(%struct.exofs_dir_entry*) #1

declare dso_local i32 @exofs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
