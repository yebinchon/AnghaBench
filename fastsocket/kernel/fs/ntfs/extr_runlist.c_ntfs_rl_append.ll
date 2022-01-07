; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_runlist.c_ntfs_rl_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_runlist.c_ntfs_rl_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64 }

@LCN_ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32)* @ntfs_rl_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ntfs_rl_append(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 -1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 1
  %39 = call i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__* %33, %struct.TYPE_15__* %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %28, %5
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__* %41, i32 %42, i32 %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = call i64 @IS_ERR(%struct.TYPE_15__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %6, align 8
  br label %143

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 -1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 1
  %68 = call i32 @__ntfs_rl_merge(%struct.TYPE_15__* %62, %struct.TYPE_15__* %67)
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %80, %84
  %86 = call i32 @ntfs_rl_mm(%struct.TYPE_15__* %74, i32 %75, i32 %79, i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @ntfs_rl_mc(%struct.TYPE_15__* %87, i32 %89, %struct.TYPE_15__* %90, i32 0, i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %99, %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i64 %106, i64* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @LCN_ENOENT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %69
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %127, %134
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  store i64 %135, i64* %140, align 8
  br label %141

141:                                              ; preds = %120, %69
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %6, align 8
  br label %143

143:                                              ; preds = %141, %52
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %144
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @__ntfs_rl_merge(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ntfs_rl_mm(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ntfs_rl_mc(%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
