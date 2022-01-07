; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { i64 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i64 0, align 8
@SYSV_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.sysv_dir_entry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.sysv_dir_entry*, align 8
  %14 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i64 @dir_pages(%struct.inode* %28)
  store i64 %29, i64* %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  %30 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* null, %struct.page** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call %struct.TYPE_6__* @SYSV_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %94, %39
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.page* @dir_get_page(%struct.inode* %42, i64 %43)
  store %struct.page* %44, %struct.page** %12, align 8
  %45 = load %struct.page*, %struct.page** %12, align 8
  %46 = call i32 @IS_ERR(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %85, label %48

48:                                               ; preds = %41
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i64 @page_address(%struct.page* %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = bitcast i8* %52 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %53, %struct.sysv_dir_entry** %13, align 8
  %54 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %55 = load i64, i64* @SYSV_DIRSIZE, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %14, align 8
  br label %59

59:                                               ; preds = %81, %48
  %60 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %61 = bitcast %struct.sysv_dir_entry* %60 to i8*
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ule i8* %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %66 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %81

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SYSV_NAMELEN, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %75 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @namecompare(i32 %71, i32 %72, i8* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %99

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %83 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %82, i32 1
  store %struct.sysv_dir_entry* %83, %struct.sysv_dir_entry** %13, align 8
  br label %59

84:                                               ; preds = %59
  br label %85

85:                                               ; preds = %84, %41
  %86 = load %struct.page*, %struct.page** %12, align 8
  %87 = call i32 @dir_put_page(%struct.page* %86)
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i64 0, i64* %10, align 8
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %41, label %98

98:                                               ; preds = %94
  store %struct.sysv_dir_entry* null, %struct.sysv_dir_entry** %3, align 8
  br label %107

99:                                               ; preds = %79
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = call %struct.TYPE_6__* @SYSV_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.page*, %struct.page** %12, align 8
  %105 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %104, %struct.page** %105, align 8
  %106 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  store %struct.sysv_dir_entry* %106, %struct.sysv_dir_entry** %3, align 8
  br label %107

107:                                              ; preds = %99, %98
  %108 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  ret %struct.sysv_dir_entry* %108
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @SYSV_I(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
