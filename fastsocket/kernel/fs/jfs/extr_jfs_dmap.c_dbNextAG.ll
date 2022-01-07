; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbNextAG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbNextAG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bmap = type { i32, i32, i32*, i32*, i64 }
%struct.TYPE_2__ = type { %struct.bmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbNextAG(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @JFS_SBI(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bmap*, %struct.bmap** %13, align 8
  store %struct.bmap* %14, %struct.bmap** %8, align 8
  %15 = load %struct.bmap*, %struct.bmap** %8, align 8
  %16 = call i32 @BMAP_LOCK(%struct.bmap* %15)
  %17 = load %struct.bmap*, %struct.bmap** %8, align 8
  %18 = getelementptr inbounds %struct.bmap, %struct.bmap* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.bmap*, %struct.bmap** %8, align 8
  %22 = getelementptr inbounds %struct.bmap, %struct.bmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %20, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.bmap*, %struct.bmap** %8, align 8
  %26 = getelementptr inbounds %struct.bmap, %struct.bmap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.bmap*, %struct.bmap** %8, align 8
  %29 = getelementptr inbounds %struct.bmap, %struct.bmap* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = load %struct.bmap*, %struct.bmap** %8, align 8
  %38 = getelementptr inbounds %struct.bmap, %struct.bmap* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %119

47:                                               ; preds = %36, %1
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %106, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.bmap*, %struct.bmap** %8, align 8
  %51 = getelementptr inbounds %struct.bmap, %struct.bmap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %111

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.bmap*, %struct.bmap** %8, align 8
  %57 = getelementptr inbounds %struct.bmap, %struct.bmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load %struct.bmap*, %struct.bmap** %8, align 8
  %63 = getelementptr inbounds %struct.bmap, %struct.bmap* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %106

71:                                               ; preds = %61
  %72 = load %struct.bmap*, %struct.bmap** %8, align 8
  %73 = getelementptr inbounds %struct.bmap, %struct.bmap* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.bmap*, %struct.bmap** %8, align 8
  %84 = getelementptr inbounds %struct.bmap, %struct.bmap* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %119

85:                                               ; preds = %71
  %86 = load %struct.bmap*, %struct.bmap** %8, align 8
  %87 = getelementptr inbounds %struct.bmap, %struct.bmap* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load %struct.bmap*, %struct.bmap** %8, align 8
  %97 = getelementptr inbounds %struct.bmap, %struct.bmap* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %95, %85
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %70
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %48

111:                                              ; preds = %48
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.bmap*, %struct.bmap** %8, align 8
  %117 = getelementptr inbounds %struct.bmap, %struct.bmap* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %111
  br label %119

119:                                              ; preds = %118, %81, %46
  %120 = load %struct.bmap*, %struct.bmap** %8, align 8
  %121 = call i32 @BMAP_UNLOCK(%struct.bmap* %120)
  %122 = load %struct.bmap*, %struct.bmap** %8, align 8
  %123 = getelementptr inbounds %struct.bmap, %struct.bmap* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @BMAP_LOCK(%struct.bmap*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @BMAP_UNLOCK(%struct.bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
