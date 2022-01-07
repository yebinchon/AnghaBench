; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_lpt_tgc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_lpt_tgc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"LEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @lpt_tgc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_tgc_start(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %87, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %90

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %87

22:                                               ; preds = %10
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %22
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %40, %48
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %32
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %64, i64* %71, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @dbg_lp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %54, %32, %22
  br label %87

87:                                               ; preds = %86, %21
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %4

90:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dbg_lp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
