; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_set_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exofs_dir_entry = type { i32, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32, i32 }

@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"exofs_set_link: exofs_write_begin FAILD => %d\0A\00", align 1
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exofs_set_link(%struct.inode* %0, %struct.exofs_dir_entry* %1, %struct.page* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.exofs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.exofs_dir_entry* %1, %struct.exofs_dir_entry** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = call i32 @page_offset(%struct.page* %12)
  %14 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %15 = bitcast %struct.exofs_dir_entry* %14 to i8*
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i64 @page_address(%struct.page* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = ptrtoint i8* %17 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %26 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i32 @lock_page(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %37 = call i32 @exofs_write_begin(i32* null, i32 %33, i32 %34, i32 %35, i32 %36, %struct.page** %7, i32* null)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @EXOFS_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %4
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_le64(i32 %46)
  %48 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %49 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @exofs_set_de_type(%struct.exofs_dir_entry* %50, %struct.inode* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @exofs_commit_chunk(%struct.page* %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %59, %43
  %65 = load %struct.page*, %struct.page** %7, align 8
  %66 = call i32 @exofs_put_page(%struct.page* %65)
  %67 = load i32, i32* @CURRENT_TIME, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @mark_inode_dirty(%struct.inode* %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @exofs_write_begin(i32*, i32, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @EXOFS_ERR(i8*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @exofs_set_de_type(%struct.exofs_dir_entry*, %struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @exofs_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @exofs_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
