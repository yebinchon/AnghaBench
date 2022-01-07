; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_get_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_9__ = type { i32* }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.inode*, i32, i32*, %struct.TYPE_8__*, i32*)* @get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_branch(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %13, align 8
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.TYPE_9__* @SYSV_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @add_chain(%struct.TYPE_8__* %21, %struct.buffer_head* null, i32* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  br label %91

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load %struct.super_block*, %struct.super_block** %12, align 8
  %43 = call i32 @SYSV_SB(%struct.super_block* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @block_to_cpu(i32 %43, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.super_block*, %struct.super_block** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call %struct.buffer_head* @sb_bread(%struct.super_block* %48, i32 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %14, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %87

54:                                               ; preds = %41
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = call i32 @verify_chain(%struct.TYPE_8__* %55, %struct.TYPE_8__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %81

60:                                               ; preds = %54
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
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  br label %91

79:                                               ; preds = %60
  br label %37

80:                                               ; preds = %37
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %93

81:                                               ; preds = %59
  %82 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %91

87:                                               ; preds = %53
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %81, %78, %35
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %6, align 8
  br label %93

93:                                               ; preds = %91, %80
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %94
}

declare dso_local i32 @add_chain(%struct.TYPE_8__*, %struct.buffer_head*, i32*) #1

declare dso_local %struct.TYPE_9__* @SYSV_I(%struct.inode*) #1

declare dso_local i32 @block_to_cpu(i32, i32) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @verify_chain(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
