; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_dir_entry = type { i8*, i32 }
%struct.page = type { i32 }

@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@SYSV_NAMELEN = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i32, i32)*)* @sysv_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i64, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i64, i32, i32)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sysv_dir_entry*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i64, i32, i32)* %2, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i64 @dir_pages(%struct.inode* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @SYSV_DIRSIZE, align 8
  %43 = add i64 %41, %42
  %44 = sub i64 %43, 1
  %45 = load i64, i64* @SYSV_DIRSIZE, align 8
  %46 = sub i64 %45, 1
  %47 = xor i64 %46, -1
  %48 = and i64 %44, %47
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %142

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %138, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.page* @dir_get_page(%struct.inode* %61, i64 %62)
  store %struct.page* %63, %struct.page** %16, align 8
  %64 = load %struct.page*, %struct.page** %16, align 8
  %65 = call i64 @IS_ERR(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %138

68:                                               ; preds = %60
  %69 = load %struct.page*, %struct.page** %16, align 8
  %70 = call i64 @page_address(%struct.page* %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %76, %struct.sysv_dir_entry** %15, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i64, i64* @SYSV_DIRSIZE, align 8
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %14, align 8
  br label %84

84:                                               ; preds = %132, %68
  %85 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %86 = bitcast %struct.sysv_dir_entry* %85 to i8*
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ule i8* %86, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %84
  %90 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %91 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %17, align 8
  %93 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %94 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %132

98:                                               ; preds = %89
  %99 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %100 = bitcast %struct.sysv_dir_entry* %99 to i8*
  %101 = load i8*, i8** %13, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %6, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @SYSV_NAMELEN, align 4
  %111 = call i32 @strnlen(i8* %109, i32 %110)
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %114 = shl i64 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = or i64 %114, %116
  %118 = load %struct.super_block*, %struct.super_block** %9, align 8
  %119 = call i32 @SYSV_SB(%struct.super_block* %118)
  %120 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %121 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @fs16_to_cpu(i32 %119, i32 %122)
  %124 = load i32, i32* @DT_UNKNOWN, align 4
  %125 = call i32 %106(i8* %107, i8* %108, i32 %111, i64 %117, i32 %123, i32 %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %98
  %129 = load %struct.page*, %struct.page** %16, align 8
  %130 = call i32 @dir_put_page(%struct.page* %129)
  br label %142

131:                                              ; preds = %98
  br label %132

132:                                              ; preds = %131, %97
  %133 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %134 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %133, i32 1
  store %struct.sysv_dir_entry* %134, %struct.sysv_dir_entry** %15, align 8
  br label %84

135:                                              ; preds = %84
  %136 = load %struct.page*, %struct.page** %16, align 8
  %137 = call i32 @dir_put_page(%struct.page* %136)
  br label %138

138:                                              ; preds = %135, %67
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %56

141:                                              ; preds = %56
  br label %142

142:                                              ; preds = %141, %128, %54
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %145 = shl i64 %143, %144
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = or i64 %145, %147
  %149 = load %struct.file*, %struct.file** %4, align 8
  %150 = getelementptr inbounds %struct.file, %struct.file* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  ret i32 0
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @fs16_to_cpu(i32, i32) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
