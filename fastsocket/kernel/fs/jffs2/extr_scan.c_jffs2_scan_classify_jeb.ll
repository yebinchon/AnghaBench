; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_jffs2_scan_classify_jeb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_jffs2_scan_classify_jeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32, i32, i32 }
%struct.jffs2_eraseblock = type { i64, i64, i64, i32, i32 }

@BLK_STATE_CLEANMARKER = common dso_local global i32 0, align 4
@BLK_STATE_CLEAN = common dso_local global i32 0, align 4
@BLK_STATE_PARTDIRTY = common dso_local global i32 0, align 4
@BLK_STATE_ALLDIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_scan_classify_jeb(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  %6 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %7 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %10 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @PAD(i32 %15)
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %20 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %25 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %30 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ref_next(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @BLK_STATE_CLEANMARKER, align 4
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %28, %18, %2
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %38 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %41 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %44 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = sub nsw i64 %39, %46
  %48 = call i32 @ISDIRTY(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %36
  %51 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %52 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %61 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %70 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %73 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %79 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @BLK_STATE_CLEAN, align 4
  store i32 %80, i32* %3, align 4
  br label %95

81:                                               ; preds = %36
  %82 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %83 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %88 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @BLK_STATE_PARTDIRTY, align 4
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @BLK_STATE_ALLDIRTY, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %91, %50, %34
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @PAD(i32) #1

declare dso_local i32 @ref_next(i32) #1

declare dso_local i32 @ISDIRTY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
