; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i64 }

@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@MINIX_V3 = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i64, i32)*)* @minix_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i64, i64, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i64, i64, i32)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.minix_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.page*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i64, i64, i32)* %2, i32 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i64 @dir_pages(%struct.inode* %45)
  store i64 %46, i64* %12, align 8
  %47 = load %struct.super_block*, %struct.super_block** %9, align 8
  %48 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %47)
  store %struct.minix_sb_info* %48, %struct.minix_sb_info** %13, align 8
  %49 = load %struct.minix_sb_info*, %struct.minix_sb_info** %13, align 8
  %50 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = sub i64 %55, 1
  %57 = load i32, i32* %14, align 4
  %58 = sub i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = zext i32 %59 to i64
  %61 = and i64 %56, %60
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %3
  br label %173

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %169, %68
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %172

73:                                               ; preds = %69
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call %struct.page* @dir_get_page(%struct.inode* %74, i64 %75)
  store %struct.page* %76, %struct.page** %20, align 8
  %77 = load %struct.page*, %struct.page** %20, align 8
  %78 = call i64 @IS_ERR(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %169

81:                                               ; preds = %73
  %82 = load %struct.page*, %struct.page** %20, align 8
  %83 = call i64 @page_address(%struct.page* %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %18, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8* %88, i8** %17, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @minix_last_byte(%struct.inode* %90, i64 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8* %98, i8** %19, align 8
  br label %99

99:                                               ; preds = %162, %81
  %100 = load i8*, i8** %17, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = icmp ule i8* %100, %101
  br i1 %102, label %103, label %166

103:                                              ; preds = %99
  %104 = load %struct.minix_sb_info*, %struct.minix_sb_info** %13, align 8
  %105 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MINIX_V3, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i8*, i8** %17, align 8
  %111 = bitcast i8* %110 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %21, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %15, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %16, align 8
  br label %127

118:                                              ; preds = %103
  %119 = load i8*, i8** %17, align 8
  %120 = bitcast i8* %119 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %22, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %15, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %16, align 8
  br label %127

127:                                              ; preds = %118, %109
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  %131 = load i8*, i8** %15, align 8
  %132 = load %struct.minix_sb_info*, %struct.minix_sb_info** %13, align 8
  %133 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @strnlen(i8* %131, i32 %134)
  store i32 %135, i32* %24, align 4
  %136 = load i8*, i8** %17, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  %142 = load i32 (i8*, i8*, i32, i64, i64, i32)*, i32 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i32, i32* %24, align 4
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %148 = shl i64 %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = or i64 %148, %150
  %152 = load i64, i64* %16, align 8
  %153 = load i32, i32* @DT_UNKNOWN, align 4
  %154 = call i32 %142(i8* %143, i8* %144, i32 %145, i64 %151, i64 %152, i32 %153)
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %130
  %158 = load %struct.page*, %struct.page** %20, align 8
  %159 = call i32 @dir_put_page(%struct.page* %158)
  br label %173

160:                                              ; preds = %130
  br label %161

161:                                              ; preds = %160, %127
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %17, align 8
  %164 = load %struct.minix_sb_info*, %struct.minix_sb_info** %13, align 8
  %165 = call i8* @minix_next_entry(i8* %163, %struct.minix_sb_info* %164)
  store i8* %165, i8** %17, align 8
  br label %99

166:                                              ; preds = %99
  %167 = load %struct.page*, %struct.page** %20, align 8
  %168 = call i32 @dir_put_page(%struct.page* %167)
  br label %169

169:                                              ; preds = %166, %80
  %170 = load i64, i64* %11, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %69

172:                                              ; preds = %69
  br label %173

173:                                              ; preds = %172, %157, %67
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %176 = shl i64 %174, %175
  %177 = load i32, i32* %10, align 4
  %178 = zext i32 %177 to i64
  %179 = or i64 %176, %178
  %180 = load %struct.file*, %struct.file** %4, align 8
  %181 = getelementptr inbounds %struct.file, %struct.file* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  ret i32 0
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
