; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.inode*, i32*)* }
%struct.writeback_control = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ino %lu, pg %lu, pg flags %#lx\00", align 1
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ubifs_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ubifs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %19)
  store %struct.ubifs_inode* %20, %struct.ubifs_inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @i_size_read(%struct.inode* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %36, i32 %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @PagePrivate(%struct.page* %41)
  %43 = call i32 @ubifs_assert(i32 %42)
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %2
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %2
  store i32 0, i32* %11, align 4
  br label %139

59:                                               ; preds = %55, %49
  %60 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %64 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %59
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = icmp sge i64 %77, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %74
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %89, align 8
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call i32 %90(%struct.inode* %91, i32* null)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %139

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %100 = call i32 @do_writepage(%struct.page* %98, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %143

101:                                              ; preds = %59
  %102 = load %struct.page*, %struct.page** %4, align 8
  %103 = load i32, i32* @KM_USER0, align 4
  %104 = call i8* @kmap_atomic(%struct.page* %102, i32 %103)
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %105, i64 %107
  %109 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @memset(i8* %108, i32 0, i32 %111)
  %113 = load %struct.page*, %struct.page** %4, align 8
  %114 = call i32 @flush_dcache_page(%struct.page* %113)
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* @KM_USER0, align 4
  %117 = call i32 @kunmap_atomic(i8* %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %101
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %127, align 8
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 %128(%struct.inode* %129, i32* null)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %139

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %101
  %136 = load %struct.page*, %struct.page** %4, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @do_writepage(%struct.page* %136, i32 %137)
  store i32 %138, i32* %3, align 4
  br label %143

139:                                              ; preds = %133, %95, %58
  %140 = load %struct.page*, %struct.page** %4, align 8
  %141 = call i32 @unlock_page(%struct.page* %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %135, %97
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i64, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_writepage(%struct.page*, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
