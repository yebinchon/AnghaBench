; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_free_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_free_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_table_slot = type { i32, i64, i64, i32 }
%struct.metapage = type { i32 }

@DIR_INDEX_FREE = common dso_local global i32 0, align 4
@COMMIT_Dirtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inode*, i32, i32)* @free_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_index(i32 %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_table_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.metapage*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.metapage* null, %struct.metapage** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.dir_table_slot* @find_index(%struct.inode* %12, i32 %13, %struct.metapage** %11, i32* %10)
  store %struct.dir_table_slot* %14, %struct.dir_table_slot** %9, align 8
  %15 = load %struct.dir_table_slot*, %struct.dir_table_slot** %9, align 8
  %16 = icmp ne %struct.dir_table_slot* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %46

18:                                               ; preds = %4
  %19 = load i32, i32* @DIR_INDEX_FREE, align 4
  %20 = load %struct.dir_table_slot*, %struct.dir_table_slot** %9, align 8
  %21 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dir_table_slot*, %struct.dir_table_slot** %9, align 8
  %23 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.dir_table_slot*, %struct.dir_table_slot** %9, align 8
  %25 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.dir_table_slot*, %struct.dir_table_slot** %9, align 8
  %29 = getelementptr inbounds %struct.dir_table_slot, %struct.dir_table_slot* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.metapage*, %struct.metapage** %11, align 8
  %31 = icmp ne %struct.metapage* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.metapage*, %struct.metapage** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @lock_index(i32 %33, %struct.inode* %34, %struct.metapage* %35, i32 %36)
  %38 = load %struct.metapage*, %struct.metapage** %11, align 8
  %39 = call i32 @mark_metapage_dirty(%struct.metapage* %38)
  %40 = load %struct.metapage*, %struct.metapage** %11, align 8
  %41 = call i32 @release_metapage(%struct.metapage* %40)
  br label %46

42:                                               ; preds = %18
  %43 = load i32, i32* @COMMIT_Dirtable, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @set_cflag(i32 %43, %struct.inode* %44)
  br label %46

46:                                               ; preds = %17, %42, %32
  ret void
}

declare dso_local %struct.dir_table_slot* @find_index(%struct.inode*, i32, %struct.metapage**, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lock_index(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
