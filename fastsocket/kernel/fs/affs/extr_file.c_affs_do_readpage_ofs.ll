; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_do_readpage_ofs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_do_readpage_ofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"AFFS: read_page(%u, %ld, %d, %d)\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*, i32, i32)* @affs_do_readpage_ofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_do_readpage_ofs(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %11, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %42 = icmp ugt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %4
  %44 = phi i1 [ true, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i32 @kmap(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = call i8* @page_address(%struct.page* %49)
  store i8* %50, i8** %13, align 8
  %51 = load %struct.super_block*, %struct.super_block** %11, align 8
  %52 = call %struct.TYPE_4__* @AFFS_SB(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = getelementptr inbounds %struct.page, %struct.page* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %59, %60
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = udiv i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = urem i32 %65, %66
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %99, %43
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %120

72:                                               ; preds = %68
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %73, i32 %74, i32 0)
  store %struct.buffer_head* %75, %struct.buffer_head** %12, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = call i64 @IS_ERR(%struct.buffer_head* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %81 = call i32 @PTR_ERR(%struct.buffer_head* %80)
  store i32 %81, i32* %5, align 4
  br label %125

82:                                               ; preds = %72
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sub i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %86, %87
  %89 = call i32 @min(i32 %85, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ugt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %82
  %100 = phi i1 [ true, %82 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %108 = call i32 @AFFS_DATA(%struct.buffer_head* %107)
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %108, %109
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @memcpy(i8* %106, i32 %110, i32 %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %114 = call i32 @affs_brelse(%struct.buffer_head* %113)
  %115 = load i32, i32* %14, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %68

120:                                              ; preds = %68
  %121 = load %struct.page*, %struct.page** %7, align 8
  %122 = call i32 @flush_dcache_page(%struct.page* %121)
  %123 = load %struct.page*, %struct.page** %7, align 8
  %124 = call i32 @kunmap(%struct.page* %123)
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %120, %79
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @affs_bread_ino(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @AFFS_DATA(%struct.buffer_head*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
