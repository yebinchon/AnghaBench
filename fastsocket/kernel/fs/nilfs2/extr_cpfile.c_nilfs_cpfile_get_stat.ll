; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_cpstat = type { i8*, i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_get_stat(%struct.inode* %0, %struct.nilfs_cpstat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_cpstat*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_cpfile_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_cpstat* %1, %struct.nilfs_cpstat** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %13, %struct.buffer_head** %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KM_USER0, align 4
  %23 = call i8* @kmap_atomic(i32 %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %24, %struct.buffer_head* %25, i8* %26)
  store %struct.nilfs_cpfile_header* %27, %struct.nilfs_cpfile_header** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @nilfs_mdt_cno(%struct.inode* %28)
  %30 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %31 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %6, align 8
  %33 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le64_to_cpu(i32 %34)
  %36 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %37 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %6, align 8
  %39 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le64_to_cpu(i32 %40)
  %42 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %43 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @KM_USER0, align 4
  %46 = call i32 @kunmap_atomic(i8* %44, i32 %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %48 = call i32 @brelse(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %18, %17
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
