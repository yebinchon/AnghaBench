; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_sustat = type { i32, i32, i32, i8*, i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32, i32 }
%struct.the_nilfs = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.the_nilfs* }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_get_stat(%struct.inode* %0, %struct.nilfs_sustat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_sustat*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_sufile_header*, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_sustat* %1, %struct.nilfs_sustat** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %18, %struct.buffer_head** %5)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KM_USER0, align 4
  %28 = call i8* @kmap_atomic(i32 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call %struct.nilfs_sufile_header* @nilfs_sufile_block_get_header(%struct.inode* %29, %struct.buffer_head* %30, i8* %31)
  store %struct.nilfs_sufile_header* %32, %struct.nilfs_sufile_header** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @nilfs_sufile_get_nsegments(%struct.inode* %33)
  %35 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %36 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %6, align 8
  %38 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le64_to_cpu(i32 %39)
  %41 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %42 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %6, align 8
  %44 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le64_to_cpu(i32 %45)
  %47 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %48 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %50 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %53 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %58 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %60 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %63 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %66 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %68 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @KM_USER0, align 4
  %72 = call i32 @kunmap_atomic(i8* %70, i32 %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %23, %22
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @up_read(i32* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_sufile_header* @nilfs_sufile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
