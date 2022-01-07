; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_get_vinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_get_vinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32, i32 }
%struct.nilfs_vinfo = type { i64, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_get_vinfo(%struct.inode* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_dat_entry*, align 8
  %12 = alloca %struct.nilfs_vinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.nilfs_vinfo*
  store %struct.nilfs_vinfo* %22, %struct.nilfs_vinfo** %12, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %124, %4
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %128

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %35 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %33, i64 %36, i32 0, %struct.buffer_head** %10)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %5, align 4
  br label %131

42:                                               ; preds = %32
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KM_USER0, align 4
  %47 = call i8* @kmap_atomic(i32 %45, i32 %46)
  store i8* %47, i8** %15, align 8
  %48 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %49 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @do_div(i64 %51, i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %13, align 8
  %56 = mul i64 %55, %54
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  store i64 %60, i64* %14, align 8
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %107, %42
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %69 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %75 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ule i64 %76, %77
  br label %79

79:                                               ; preds = %73, %67, %62
  %80 = phi i1 [ false, %67 ], [ false, %62 ], [ %78, %73 ]
  br i1 %80, label %81, label %118

81:                                               ; preds = %79
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %84 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %82, i64 %85, %struct.buffer_head* %86, i8* %87)
  store %struct.nilfs_dat_entry* %88, %struct.nilfs_dat_entry** %11, align 8
  %89 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %90 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le64_to_cpu(i32 %91)
  %93 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %94 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %96 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le64_to_cpu(i32 %97)
  %99 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %100 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %102 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le64_to_cpu(i32 %103)
  %105 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %106 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %81
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  %112 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %113 = bitcast %struct.nilfs_vinfo* %112 to i8*
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr i8, i8* %113, i64 %115
  %117 = bitcast i8* %116 to %struct.nilfs_vinfo*
  store %struct.nilfs_vinfo* %117, %struct.nilfs_vinfo** %12, align 8
  br label %62

118:                                              ; preds = %79
  %119 = load i8*, i8** %15, align 8
  %120 = load i32, i32* @KM_USER0, align 4
  %121 = call i32 @kunmap_atomic(i8* %119, i32 %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %17, align 4
  br label %27

128:                                              ; preds = %27
  %129 = load i64, i64* %9, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %40
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
