; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DEPTH = common dso_local global i32 0, align 4
@pointers_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @DEPTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @DEPTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.TYPE_7__, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @block_to_path(%struct.inode* %29, i32 %30, i32* %22)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %83

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %136, %35
  %37 = call i32 @read_lock(i32* @pointers_lock)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call %struct.TYPE_7__* @get_branch(%struct.inode* %38, i32 %39, i32* %22, %struct.TYPE_7__* %25, i32* %9)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %14, align 8
  %41 = call i32 @read_unlock(i32* @pointers_lock)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %122, %44
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = load %struct.super_block*, %struct.super_block** %13, align 8
  %48 = load %struct.super_block*, %struct.super_block** %13, align 8
  %49 = call i32 @SYSV_SB(%struct.super_block* %48)
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @block_to_cpu(i32 %49, i32 %55)
  %57 = call i32 @map_bh(%struct.buffer_head* %46, %struct.super_block* %47, i32 %56)
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 -1
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %14, align 8
  br label %71

62:                                               ; preds = %36
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %114, %70, %45
  br label %72

72:                                               ; preds = %75, %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = icmp ugt %struct.TYPE_7__* %73, %25
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @brelse(i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 -1
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %14, align 8
  br label %72

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 %84

86:                                               ; preds = %65
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %125

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %97 = ptrtoint %struct.TYPE_7__* %95 to i64
  %98 = ptrtoint %struct.TYPE_7__* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %105 = ptrtoint %struct.TYPE_7__* %104 to i64
  %106 = ptrtoint %struct.TYPE_7__* %25 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 8
  %109 = getelementptr inbounds i32, i32* %22, i64 %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %111 = call i32 @alloc_branch(%struct.inode* %102, i32 %103, i32* %109, %struct.TYPE_7__* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  br label %71

115:                                              ; preds = %92
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i64 @splice_branch(%struct.inode* %116, %struct.TYPE_7__* %25, %struct.TYPE_7__* %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %125

122:                                              ; preds = %115
  %123 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %124 = call i32 @set_buffer_new(%struct.buffer_head* %123)
  br label %45

125:                                              ; preds = %121, %91
  br label %126

126:                                              ; preds = %129, %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %128 = icmp ugt %struct.TYPE_7__* %127, %25
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @brelse(i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 -1
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %14, align 8
  br label %126

136:                                              ; preds = %126
  br label %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @block_to_path(%struct.inode*, i32, i32*) #2

declare dso_local i32 @read_lock(i32*) #2

declare dso_local %struct.TYPE_7__* @get_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i32) #2

declare dso_local i32 @block_to_cpu(i32, i32) #2

declare dso_local i32 @SYSV_SB(%struct.super_block*) #2

declare dso_local i32 @brelse(i32) #2

declare dso_local i32 @alloc_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i64 @splice_branch(%struct.inode*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
