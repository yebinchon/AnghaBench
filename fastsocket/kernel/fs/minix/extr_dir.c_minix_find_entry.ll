; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.minix_sb_info = type { i8*, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @minix_find_entry(%struct.dentry* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.minix_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %9, align 8
  %37 = load %struct.super_block*, %struct.super_block** %9, align 8
  %38 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %37)
  store %struct.minix_sb_info* %38, %struct.minix_sb_info** %10, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i64 @dir_pages(%struct.inode* %39)
  store i64 %40, i64* %12, align 8
  store %struct.page* null, %struct.page** %13, align 8
  %41 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* null, %struct.page** %41, align 8
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %122, %2
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %42
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call %struct.page* @dir_get_page(%struct.inode* %47, i64 %48)
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = call i64 @IS_ERR(%struct.page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %122

54:                                               ; preds = %46
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = call i64 @page_address(%struct.page* %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @minix_last_byte(%struct.inode* %59, i64 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %65 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %63 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %18, align 8
  %71 = load i8*, i8** %17, align 8
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %115, %54
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ule i8* %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  %77 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %78 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MINIX_V3, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i8*, i8** %14, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %19, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %15, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %16, align 4
  br label %100

91:                                               ; preds = %76
  %92 = load i8*, i8** %14, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %20, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %15, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %91, %82
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %107 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i64 @namecompare(i32 %105, i32 %108, i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %126

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i8*, i8** %14, align 8
  %117 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %118 = call i8* @minix_next_entry(i8* %116, %struct.minix_sb_info* %117)
  store i8* %118, i8** %14, align 8
  br label %72

119:                                              ; preds = %72
  %120 = load %struct.page*, %struct.page** %13, align 8
  %121 = call i32 @dir_put_page(%struct.page* %120)
  br label %122

122:                                              ; preds = %119, %53
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %11, align 8
  br label %42

125:                                              ; preds = %42
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %131

126:                                              ; preds = %113
  %127 = load %struct.page*, %struct.page** %13, align 8
  %128 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %127, %struct.page** %128, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = bitcast i8* %129 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %3, align 8
  br label %131

131:                                              ; preds = %126, %125
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %132
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i8*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
