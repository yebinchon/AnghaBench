; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.inode*, i32, i32*, %struct.TYPE_8__*, i32*)* @ext2_get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @ext2_get_branch(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.TYPE_9__* @EXT2_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @add_chain(%struct.TYPE_8__* %20, %struct.buffer_head* null, i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %99

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %83, %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load %struct.super_block*, %struct.super_block** %12, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call %struct.buffer_head* @sb_bread(%struct.super_block* %41, i32 %45)
  store %struct.buffer_head* %46, %struct.buffer_head** %14, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %95

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call %struct.TYPE_9__* @EXT2_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @read_lock(i32* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = call i32 @verify_chain(%struct.TYPE_8__* %55, %struct.TYPE_8__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %85

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %13, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = call i32 @add_chain(%struct.TYPE_8__* %62, %struct.buffer_head* %63, i32* %72)
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = call %struct.TYPE_9__* @EXT2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @read_unlock(i32* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %60
  br label %99

83:                                               ; preds = %60
  br label %36

84:                                               ; preds = %36
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %101

85:                                               ; preds = %59
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call %struct.TYPE_9__* @EXT2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @read_unlock(i32* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %91 = call i32 @brelse(%struct.buffer_head* %90)
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  br label %99

95:                                               ; preds = %49
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %85, %82, %34
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %6, align 8
  br label %101

101:                                              ; preds = %99, %84
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %102
}

declare dso_local i32 @add_chain(%struct.TYPE_8__*, %struct.buffer_head*, i32*) #1

declare dso_local %struct.TYPE_9__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @verify_chain(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
