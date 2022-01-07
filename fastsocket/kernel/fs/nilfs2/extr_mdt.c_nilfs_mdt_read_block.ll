; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@NILFS_MDT_MAX_RA_BLOCKS = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head**)* @nilfs_mdt_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_read_block(%struct.inode* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %14 = load i32, i32* @NILFS_MDT_MAX_RA_BLOCKS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @READ, align 4
  %18 = call i32 @nilfs_mdt_submit_block(%struct.inode* %15, i64 %16, i32 %17, %struct.buffer_head** %8)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %85

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %91

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %69, %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @READA, align 4
  %40 = call i32 @nilfs_mdt_submit_block(%struct.inode* %37, i64 %38, i32 %39, %struct.buffer_head** %9)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i1 [ true, %36 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  br label %63

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %74

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = call i32 @buffer_locked(%struct.buffer_head* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %77

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %32

74:                                               ; preds = %61, %32
  %75 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %76 = call i32 @wait_on_buffer(%struct.buffer_head* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = call i32 @buffer_uptodate(%struct.buffer_head* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %88

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %23
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %86, %struct.buffer_head** %87, align 8
  store i32 0, i32* %4, align 4
  br label %93

88:                                               ; preds = %83
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %88, %28
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @nilfs_mdt_submit_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
