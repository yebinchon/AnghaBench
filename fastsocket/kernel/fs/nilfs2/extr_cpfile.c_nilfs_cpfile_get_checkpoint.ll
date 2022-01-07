; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_checkpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_get_checkpoint(%struct.inode* %0, i32 %1, i32 %2, %struct.nilfs_checkpoint** %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_checkpoint**, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.nilfs_cpfile_header*, align 8
  %15 = alloca %struct.nilfs_checkpoint*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nilfs_checkpoint** %3, %struct.nilfs_checkpoint*** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %35, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @nilfs_mdt_cno(%struct.inode* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @nilfs_mdt_cno(%struct.inode* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  br label %35

35:                                               ; preds = %33, %20, %5
  %36 = phi i1 [ true, %20 ], [ true, %5 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %138

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @down_write(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %48, %struct.buffer_head** %12)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %132

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %54, i32 %55, i32 %56, %struct.buffer_head** %13)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %129

61:                                               ; preds = %53
  %62 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @kmap(i32 %64)
  store i8* %65, i8** %16, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %66, i32 %67, %struct.buffer_head* %68, i8* %69)
  store %struct.nilfs_checkpoint* %70, %struct.nilfs_checkpoint** %15, align 8
  %71 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %15, align 8
  %72 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @kunmap(i32 %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %17, align 4
  br label %129

86:                                               ; preds = %74
  %87 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %15, align 8
  %88 = call i32 @nilfs_checkpoint_clear_invalid(%struct.nilfs_checkpoint* %87)
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @nilfs_cpfile_is_in_first(%struct.inode* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @nilfs_cpfile_block_add_valid_checkpoints(%struct.inode* %94, %struct.buffer_head* %95, i8* %96, i32 1)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %100 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @KM_USER0, align 4
  %105 = call i8* @kmap_atomic(i32 %103, i32 %104)
  store i8* %105, i8** %16, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %106, %struct.buffer_head* %107, i8* %108)
  store %struct.nilfs_cpfile_header* %109, %struct.nilfs_cpfile_header** %14, align 8
  %110 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %14, align 8
  %111 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %110, i32 0, i32 0
  %112 = call i32 @le64_add_cpu(i32* %111, i32 1)
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* @KM_USER0, align 4
  %115 = call i32 @kunmap_atomic(i8* %113, i32 %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %117 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %116)
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %118)
  br label %120

120:                                              ; preds = %98, %61
  %121 = load %struct.nilfs_checkpoint**, %struct.nilfs_checkpoint*** %10, align 8
  %122 = icmp ne %struct.nilfs_checkpoint** %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %15, align 8
  %125 = load %struct.nilfs_checkpoint**, %struct.nilfs_checkpoint*** %10, align 8
  store %struct.nilfs_checkpoint* %124, %struct.nilfs_checkpoint** %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %127, %struct.buffer_head** %128, align 8
  br label %129

129:                                              ; preds = %126, %77, %60
  %130 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  br label %132

132:                                              ; preds = %129, %52
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = call i32 @up_write(i32* %135)
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %132, %40
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_checkpoint_clear_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_is_in_first(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_cpfile_block_add_valid_checkpoints(%struct.inode*, %struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
