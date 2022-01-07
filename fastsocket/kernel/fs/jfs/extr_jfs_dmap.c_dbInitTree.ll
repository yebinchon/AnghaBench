; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbInitTree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbInitTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaptree = type { i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmaptree*)* @dbInitTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbInitTree(%struct.dmaptree* %0) #0 {
  %2 = alloca %struct.dmaptree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.dmaptree* %0, %struct.dmaptree** %2, align 8
  %14 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %15 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %18 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %22 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %26 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %80, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %37 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  store i32* %41, i32** %12, align 8
  br label %42

42:                                               ; preds = %71, %32
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %45 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %54, %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %12, align 8
  br label %42

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %5, align 4
  br label %28

84:                                               ; preds = %28
  %85 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %86 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le32_to_cpu(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.dmaptree*, %struct.dmaptree** %2, align 8
  %90 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = ashr i32 %92, 2
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %125, %84
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = ashr i32 %99, 2
  store i32 %100, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32* %104, i32** %12, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %13, align 8
  br label %109

109:                                              ; preds = %117, %97
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @TREEMAX(i32* %114)
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %13, align 8
  br label %109

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = ashr i32 %126, 2
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %8, align 4
  br label %94

129:                                              ; preds = %94
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %130, align 4
  ret i32 %131
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TREEMAX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
