; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_make_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.sysv_dir_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = call %struct.page* @grab_cache_page(%struct.address_space* %14, i32 0)
  store %struct.page* %15, %struct.page** %7, align 8
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.address_space*, %struct.address_space** %6, align 8
  %23 = load i32, i32* @SYSV_DIRSIZE, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %26 = call i32 @__sysv_write_begin(i32* null, %struct.address_space* %22, i32 0, i32 %24, i32 %25, %struct.page** %7, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  br label %79

32:                                               ; preds = %21
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @kmap(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = call i64 @page_address(%struct.page* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %42, %struct.sysv_dir_entry** %8, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SYSV_SB(i32 %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_fs16(i32 %46, i32 %49)
  %51 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %8, align 8
  %52 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %8, align 8
  %54 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %8, align 8
  %58 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %57, i32 1
  store %struct.sysv_dir_entry* %58, %struct.sysv_dir_entry** %8, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SYSV_SB(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @cpu_to_fs16(i32 %62, i32 %65)
  %67 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %8, align 8
  %68 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %8, align 8
  %70 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcpy(i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.page*, %struct.page** %7, align 8
  %74 = call i32 @kunmap(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %7, align 8
  %76 = load i32, i32* @SYSV_DIRSIZE, align 4
  %77 = mul nsw i32 2, %76
  %78 = call i32 @dir_commit_chunk(%struct.page* %75, i32 0, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %32, %29
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = call i32 @page_cache_release(%struct.page* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @__sysv_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
