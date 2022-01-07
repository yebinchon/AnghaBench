; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i8* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.ext3_dir_entry_2 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ext3_find_entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, %struct.qstr*, i64, %struct.ext3_dir_entry_2**)* @search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, %struct.qstr* %2, i64 %3, %struct.ext3_dir_entry_2** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext3_dir_entry_2**, align 8
  %12 = alloca %struct.ext3_dir_entry_2*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ext3_dir_entry_2** %4, %struct.ext3_dir_entry_2*** %11, align 8
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
  %26 = bitcast i8* %25 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %26, %struct.ext3_dir_entry_2** %12, align 8
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

37:                                               ; preds = %75, %5
  %38 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %39 = bitcast %struct.ext3_dir_entry_2* %38 to i8*
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %44 = bitcast %struct.ext3_dir_entry_2* %43 to i8*
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ule i8* %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %54 = call i64 @ext3_match(i32 %51, i8* %52, %struct.ext3_dir_entry_2* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.inode* %57, %struct.ext3_dir_entry_2* %58, %struct.buffer_head* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %87

64:                                               ; preds = %56
  %65 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %66 = load %struct.ext3_dir_entry_2**, %struct.ext3_dir_entry_2*** %11, align 8
  store %struct.ext3_dir_entry_2* %65, %struct.ext3_dir_entry_2** %66, align 8
  store i32 1, i32* %6, align 4
  br label %87

67:                                               ; preds = %50, %42
  %68 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %69 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ext3_rec_len_from_disk(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  br label %87

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %81 = bitcast %struct.ext3_dir_entry_2* %80 to i8*
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = bitcast i8* %84 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %85, %struct.ext3_dir_entry_2** %12, align 8
  br label %37

86:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %74, %64, %63
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @ext3_match(i32, i8*, %struct.ext3_dir_entry_2*) #1

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext3_rec_len_from_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
