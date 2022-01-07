; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }

@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4
@XAD_NOTRECORDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %18, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %28 = call i32 @IWRITE_LOCK(%struct.inode* %26, i32 %27)
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %32 = call i32 @IREAD_LOCK(%struct.inode* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %34, %39
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @xtLookup(%struct.inode* %46, i32 %47, i32 %48, i32* %13, i32* %12, i32* %14, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @XAD_NOTRECORDED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %93

63:                                               ; preds = %59
  %64 = call i32 (...) @BUG()
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i32 @extRecord(%struct.inode* %65, i32* %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %93

70:                                               ; preds = %63
  %71 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %72 = call i32 @set_buffer_new(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %70, %54
  %74 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @map_bh(%struct.buffer_head* %74, %struct.TYPE_2__* %77, i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %80, %83
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %93

87:                                               ; preds = %51, %45, %33
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %87
  %92 = call i32 (...) @BUG()
  br label %93

93:                                               ; preds = %91, %90, %73, %69, %62
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call i32 @IWRITE_UNLOCK(%struct.inode* %97)
  br label %102

99:                                               ; preds = %93
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call i32 @IREAD_UNLOCK(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @xtLookup(%struct.inode*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @extRecord(%struct.inode*, i32*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
