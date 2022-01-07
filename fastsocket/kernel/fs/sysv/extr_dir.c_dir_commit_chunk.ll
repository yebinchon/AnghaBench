; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_dir_commit_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_dir_commit_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @dir_commit_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_commit_chunk(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %7, align 8
  %13 = load %struct.address_space*, %struct.address_space** %7, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.address_space*, %struct.address_space** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @block_write_end(i32* null, %struct.address_space* %16, i32 %17, i32 %18, i32 %19, %struct.page* %20, i32* null)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %22, %23
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %31, %32
  %34 = call i32 @i_size_write(%struct.inode* %30, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @mark_inode_dirty(%struct.inode* %35)
  br label %37

37:                                               ; preds = %29, %3
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @IS_DIRSYNC(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @write_one_page(%struct.page* %42, i32 1)
  store i32 %43, i32* %9, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @unlock_page(%struct.page* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @block_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @write_one_page(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
