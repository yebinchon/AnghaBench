; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_find_shared.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_find_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64*, i32 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.inode*, i32, i32*, %struct.TYPE_7__*, i64*)* @ext3_find_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ext3_find_shared(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_7__* %3, i64* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
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
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call %struct.TYPE_7__* @ext3_get_branch(%struct.inode* %36, i32 %37, i32* %38, %struct.TYPE_7__* %39, i32* %14)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 -1
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %11, align 8
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %121

61:                                               ; preds = %54, %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %12, align 8
  br label %63

63:                                               ; preds = %82, %61
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = icmp ugt %struct.TYPE_7__* %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i64*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = call i64 @all_zeroes(i64* %73, i64* %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %67, %63
  %80 = phi i1 [ false, %63 ], [ %78, %67 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 -1
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %12, align 8
  br label %63

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 -1
  %92 = icmp eq %struct.TYPE_7__* %86, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = icmp ugt %struct.TYPE_7__* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 -1
  store i64* %101, i64** %99, align 8
  br label %108

102:                                              ; preds = %93, %85
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %10, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  br label %109

109:                                              ; preds = %113, %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = icmp ugt %struct.TYPE_7__* %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = call i32 @brelse(%struct.TYPE_8__* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 -1
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %11, align 8
  br label %109

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %60
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %122
}

declare dso_local %struct.TYPE_7__* @ext3_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @all_zeroes(i64*, i64*) #1

declare dso_local i32 @brelse(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
