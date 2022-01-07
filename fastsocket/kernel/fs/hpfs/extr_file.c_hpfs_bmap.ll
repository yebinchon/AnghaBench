; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_file.c_hpfs_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_file.c_hpfs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hpfs_inode_info = type { i32, i32, i32, i32 }
%struct.fnode = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"bmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @hpfs_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_bmap(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpfs_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fnode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %11)
  store %struct.hpfs_inode_info* %12, %struct.hpfs_inode_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BLOCKS(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %29 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %34 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %21
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.fnode* @hpfs_map_fnode(i32 %41, i32 %44, %struct.buffer_head** %10)
  store %struct.fnode* %45, %struct.fnode** %9, align 8
  %46 = icmp ne %struct.fnode* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %71

48:                                               ; preds = %38
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load %struct.fnode*, %struct.fnode** %9, align 8
  %54 = getelementptr inbounds %struct.fnode, %struct.fnode* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = call i32 @hpfs_bplus_lookup(i32 %51, %struct.inode* %52, i32* %54, i32 %55, %struct.buffer_head* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %71

61:                                               ; preds = %48
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @hpfs_chk_sectors(i32 %64, i32 %65, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %68, %60, %47, %32, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @BLOCKS(i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_bplus_lookup(i32, %struct.inode*, i32*, i32, %struct.buffer_head*) #1

declare dso_local i64 @hpfs_chk_sectors(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
