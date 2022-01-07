; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_find_shared.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_find_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i64*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.inode*, i32, i32*, %struct.TYPE_8__*, i64*)* @ext2_find_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @ext2_find_shared(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_8__* %3, i64* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %32, %5
  %18 = load i32, i32* %13, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i1 [ false, %17 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  br label %17

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = call %struct.TYPE_8__* @ext2_get_branch(%struct.inode* %36, i32 %37, i32* %38, %struct.TYPE_8__* %39, i32* %14)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 -1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %11, align 8
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call %struct.TYPE_10__* @EXT2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @write_lock(i32* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call %struct.TYPE_10__* @EXT2_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @write_unlock(i32* %67)
  br label %136

69:                                               ; preds = %58, %49
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %12, align 8
  br label %71

71:                                               ; preds = %90, %69
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = icmp ugt %struct.TYPE_8__* %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = call i64 @all_zeroes(i64* %81, i64* %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %75, %71
  %88 = phi i1 [ false, %71 ], [ %86, %75 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 -1
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %12, align 8
  br label %71

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 -1
  %100 = icmp eq %struct.TYPE_8__* %94, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = icmp ugt %struct.TYPE_8__* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 -1
  store i64* %109, i64** %107, align 8
  br label %119

110:                                              ; preds = %101, %93
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %10, align 8
  store i64 %114, i64* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %110, %105
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = call %struct.TYPE_10__* @EXT2_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = call i32 @write_unlock(i32* %122)
  br label %124

124:                                              ; preds = %128, %119
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %127 = icmp ugt %struct.TYPE_8__* %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = call i32 @brelse(%struct.TYPE_9__* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 -1
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %11, align 8
  br label %124

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %64
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %137
}

declare dso_local %struct.TYPE_8__* @ext2_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i64 @all_zeroes(i64*, i64*) #1

declare dso_local i32 @brelse(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
