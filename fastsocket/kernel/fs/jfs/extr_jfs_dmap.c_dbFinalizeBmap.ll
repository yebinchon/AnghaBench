; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFinalizeBmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFinalizeBmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bmap = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.bmap* }

@.str = private unnamed_addr constant [38 x i8] c"cannot find ag with average freespace\00", align 1
@L2BPERDMAP = common dso_local global i32 0, align 4
@L2LPERCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbFinalizeBmap(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.bmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @JFS_SBI(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.bmap*, %struct.bmap** %17, align 8
  store %struct.bmap* %18, %struct.bmap** %3, align 8
  %19 = load %struct.bmap*, %struct.bmap** %3, align 8
  %20 = getelementptr inbounds %struct.bmap, %struct.bmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.bmap*, %struct.bmap** %3, align 8
  %24 = getelementptr inbounds %struct.bmap, %struct.bmap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bmap*, %struct.bmap** %3, align 8
  %29 = getelementptr inbounds %struct.bmap, %struct.bmap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bmap*, %struct.bmap** %3, align 8
  %32 = getelementptr inbounds %struct.bmap, %struct.bmap* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.bmap*, %struct.bmap** %3, align 8
  %45 = getelementptr inbounds %struct.bmap, %struct.bmap* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %43, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  br label %56

50:                                               ; preds = %38, %1
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.bmap*, %struct.bmap** %3, align 8
  %53 = getelementptr inbounds %struct.bmap, %struct.bmap* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %51, %54
  br label %56

56:                                               ; preds = %50, %41
  %57 = phi i32 [ %49, %41 ], [ %55, %50 ]
  store i32 %57, i32* %9, align 4
  %58 = load %struct.bmap*, %struct.bmap** %3, align 8
  %59 = getelementptr inbounds %struct.bmap, %struct.bmap* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.bmap*, %struct.bmap** %3, align 8
  %67 = getelementptr inbounds %struct.bmap, %struct.bmap* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.bmap*, %struct.bmap** %3, align 8
  %70 = getelementptr inbounds %struct.bmap, %struct.bmap* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %56
  %77 = load %struct.bmap*, %struct.bmap** %3, align 8
  %78 = getelementptr inbounds %struct.bmap, %struct.bmap* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %99, %76
  %80 = load %struct.bmap*, %struct.bmap** %3, align 8
  %81 = getelementptr inbounds %struct.bmap, %struct.bmap* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.bmap*, %struct.bmap** %3, align 8
  %88 = getelementptr inbounds %struct.bmap, %struct.bmap* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.bmap*, %struct.bmap** %3, align 8
  %91 = getelementptr inbounds %struct.bmap, %struct.bmap* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %104

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.bmap*, %struct.bmap** %3, align 8
  %101 = getelementptr inbounds %struct.bmap, %struct.bmap* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %79

104:                                              ; preds = %97, %79
  %105 = load %struct.bmap*, %struct.bmap** %3, align 8
  %106 = getelementptr inbounds %struct.bmap, %struct.bmap* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.bmap*, %struct.bmap** %3, align 8
  %109 = getelementptr inbounds %struct.bmap, %struct.bmap* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp uge i64 %107, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load %struct.inode*, %struct.inode** %2, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @jfs_error(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %104
  br label %119

119:                                              ; preds = %118, %56
  %120 = load %struct.bmap*, %struct.bmap** %3, align 8
  %121 = getelementptr inbounds %struct.bmap, %struct.bmap* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BMAPSZTOLEV(i32 %122)
  %124 = load %struct.bmap*, %struct.bmap** %3, align 8
  %125 = getelementptr inbounds %struct.bmap, %struct.bmap* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.bmap*, %struct.bmap** %3, align 8
  %127 = getelementptr inbounds %struct.bmap, %struct.bmap* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @L2BPERDMAP, align 4
  %130 = load %struct.bmap*, %struct.bmap** %3, align 8
  %131 = getelementptr inbounds %struct.bmap, %struct.bmap* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @L2LPERCTL, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %129, %134
  %136 = sub nsw i32 %128, %135
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = ashr i32 %137, 1
  %139 = load %struct.bmap*, %struct.bmap** %3, align 8
  %140 = getelementptr inbounds %struct.bmap, %struct.bmap* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.bmap*, %struct.bmap** %3, align 8
  %143 = getelementptr inbounds %struct.bmap, %struct.bmap* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 1
  %146 = sub nsw i32 %141, %145
  %147 = shl i32 1, %146
  %148 = load %struct.bmap*, %struct.bmap** %3, align 8
  %149 = getelementptr inbounds %struct.bmap, %struct.bmap* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 8
  %150 = load %struct.bmap*, %struct.bmap** %3, align 8
  %151 = getelementptr inbounds %struct.bmap, %struct.bmap* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 5, %152
  store i32 %153, i32* %11, align 4
  %154 = load %struct.bmap*, %struct.bmap** %3, align 8
  %155 = getelementptr inbounds %struct.bmap, %struct.bmap* %154, i32 0, i32 11
  store i64 0, i64* %155, align 8
  store i32 1, i32* %12, align 4
  br label %156

156:                                              ; preds = %168, %119
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.bmap*, %struct.bmap** %3, align 8
  %163 = getelementptr inbounds %struct.bmap, %struct.bmap* %162, i32 0, i32 11
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i32, i32* %12, align 4
  %167 = shl i32 %166, 2
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %11, align 4
  br label %156

171:                                              ; preds = %156
  ret void
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @BMAPSZTOLEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
