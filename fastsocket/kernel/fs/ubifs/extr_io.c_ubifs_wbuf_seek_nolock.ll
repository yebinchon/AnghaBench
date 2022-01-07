; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_seek_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_seek_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i64, i32, i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"LEB %d:%d, jhead %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_wbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %13 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %12, i32 0, i32 7
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  store %struct.ubifs_info* %14, %struct.ubifs_info** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dbg_jhead(i32 %19)
  %21 = call i32 @dbg_io(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i1 [ false, %4 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %37, %40
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ false, %30 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 7
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %42
  %58 = phi i1 [ false, %42 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ubifs_assert(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %63 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ubifs_assert(i32 %66)
  %68 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %74 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %103

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %82 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %81, i32 0, i32 5
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %86 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %89 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %96 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %98 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %97, i32 0, i32 5
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %102 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %80, %77
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
