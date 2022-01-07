; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_cpinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_cpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.nilfs_cpinfo = type { i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i8*, i32, i64)* @nilfs_cpfile_do_get_cpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_do_get_cpinfo(%struct.inode* %0, i64* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nilfs_checkpoint*, align 8
  %13 = alloca %struct.nilfs_cpinfo*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %24, %struct.nilfs_cpinfo** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i64 @nilfs_mdt_cno(%struct.inode* %29)
  store i64 %30, i64* %16, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %154

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @down_read(i32* %41)
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %125, %38
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %11, align 8
  %51 = icmp ult i64 %49, %50
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %54, label %130

54:                                               ; preds = %52
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode* %55, i64 %56, i64 %57)
  store i32 %58, i32* %21, align 4
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %59, i64 %60, i32 0, %struct.buffer_head** %14)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %148

70:                                               ; preds = %64
  br label %125

71:                                               ; preds = %54
  %72 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @KM_USER0, align 4
  %76 = call i8* @kmap_atomic(i32 %74, i32 %75)
  store i8* %76, i8** %18, align 8
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %77, i64 %78, %struct.buffer_head* %79, i8* %80)
  store %struct.nilfs_checkpoint* %81, %struct.nilfs_checkpoint** %12, align 8
  store i32 0, i32* %22, align 4
  br label %82

82:                                               ; preds = %111, %71
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %88, %89
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i1 [ false, %82 ], [ %90, %86 ]
  br i1 %92, label %93, label %119

93:                                               ; preds = %91
  %94 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %95 = call i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %93
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %100 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %101 = call i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode* %98, %struct.nilfs_checkpoint* %99, %struct.nilfs_cpinfo* %100)
  %102 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %103 = bitcast %struct.nilfs_cpinfo* %102 to i8*
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr i8, i8* %103, i64 %105
  %107 = bitcast i8* %106 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %107, %struct.nilfs_cpinfo** %13, align 8
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %97, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  %114 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %115 = bitcast %struct.nilfs_checkpoint* %114 to i8*
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr i8, i8* %115, i64 %116
  %118 = bitcast i8* %117 to %struct.nilfs_checkpoint*
  store %struct.nilfs_checkpoint* %118, %struct.nilfs_checkpoint** %12, align 8
  br label %82

119:                                              ; preds = %91
  %120 = load i8*, i8** %18, align 8
  %121 = load i32, i32* @KM_USER0, align 4
  %122 = call i32 @kunmap_atomic(i8* %120, i32 %121)
  %123 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  br label %125

125:                                              ; preds = %119, %70
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %17, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %17, align 8
  br label %43

130:                                              ; preds = %52
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %136 = bitcast %struct.nilfs_cpinfo* %135 to i8*
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr i8, i8* %136, i64 %139
  %141 = bitcast i8* %140 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %141, %struct.nilfs_cpinfo** %13, align 8
  %142 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %143 = getelementptr inbounds %struct.nilfs_cpinfo, %struct.nilfs_cpinfo* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  %146 = load i64*, i64** %8, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %134, %130
  br label %148

148:                                              ; preds = %147, %69
  %149 = load %struct.inode*, %struct.inode** %7, align 8
  %150 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %149)
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = call i32 @up_read(i32* %151)
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %148, %35
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode*, i64, i64) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode*, %struct.nilfs_checkpoint*, %struct.nilfs_cpinfo*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
