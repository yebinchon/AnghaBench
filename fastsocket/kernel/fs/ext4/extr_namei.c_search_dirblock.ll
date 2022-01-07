; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i8* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ext4_find_entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, %struct.qstr*, i32, %struct.ext4_dir_entry_2**)* @search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, %struct.qstr* %2, i32 %3, %struct.ext4_dir_entry_2** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_dir_entry_2**, align 8
  %12 = alloca %struct.ext4_dir_entry_2*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ext4_dir_entry_2** %4, %struct.ext4_dir_entry_2*** %11, align 8
  %17 = load %struct.qstr*, %struct.qstr** %9, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %15, align 8
  %20 = load %struct.qstr*, %struct.qstr** %9, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %26, %struct.ext4_dir_entry_2** %12, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %29, i64 %35
  store i8* %36, i8** %13, align 8
  br label %37

37:                                               ; preds = %80, %5
  %38 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %39 = bitcast %struct.ext4_dir_entry_2* %38 to i8*
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %44 = bitcast %struct.ext4_dir_entry_2* %43 to i8*
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ule i8* %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %54 = call i64 @ext4_match(i32 %51, i8* %52, %struct.ext4_dir_entry_2* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ext4_check_dir_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.inode* %57, %struct.ext4_dir_entry_2* %58, %struct.buffer_head* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %91

64:                                               ; preds = %56
  %65 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %66 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %11, align 8
  store %struct.ext4_dir_entry_2* %65, %struct.ext4_dir_entry_2** %66, align 8
  store i32 1, i32* %6, align 4
  br label %91

67:                                               ; preds = %50, %42
  %68 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %69 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ext4_rec_len_from_disk(i32 %70, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  br label %91

80:                                               ; preds = %67
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %85 = bitcast %struct.ext4_dir_entry_2* %84 to i8*
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = bitcast i8* %88 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %89, %struct.ext4_dir_entry_2** %12, align 8
  br label %37

90:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %79, %64, %63
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @ext4_match(i32, i8*, %struct.ext4_dir_entry_2*) #1

declare dso_local i32 @ext4_check_dir_entry(i8*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
