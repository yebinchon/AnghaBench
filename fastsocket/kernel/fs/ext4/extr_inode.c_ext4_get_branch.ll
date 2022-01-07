; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_7__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.inode*, i32, i32*, %struct.TYPE_6__*, i32*)* @ext4_get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @ext4_get_branch(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %13, align 8
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %24, %26
  %28 = call i32 @add_chain(%struct.TYPE_6__* %20, %struct.buffer_head* null, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  br label %99

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %93, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  %40 = load %struct.super_block*, %struct.super_block** %12, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %40, i32 %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %14, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %95

53:                                               ; preds = %39
  %54 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %55 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %59 = call i64 @bh_submit_read(%struct.buffer_head* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %63 = call i32 @put_bh(%struct.buffer_head* %62)
  br label %95

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %67 = call i64 @ext4_check_indirect_blockref(%struct.inode* %65, %struct.buffer_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %71 = call i32 @put_bh(%struct.buffer_head* %70)
  br label %95

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 1
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %13, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = ptrtoint i32* %85 to i32
  %87 = call i32 @add_chain(%struct.TYPE_6__* %75, %struct.buffer_head* %76, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %73
  br label %99

93:                                               ; preds = %73
  br label %35

94:                                               ; preds = %35
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %101

95:                                               ; preds = %69, %61, %52
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92, %33
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %6, align 8
  br label %101

101:                                              ; preds = %99, %94
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %102
}

declare dso_local i32 @add_chain(%struct.TYPE_6__*, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #1

declare dso_local i64 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @ext4_check_indirect_blockref(%struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
