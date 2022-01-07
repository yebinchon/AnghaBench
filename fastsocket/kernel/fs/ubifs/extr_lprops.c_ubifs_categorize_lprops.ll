; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_categorize_lprops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_categorize_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64 }
%struct.ubifs_lprops = type { i32, i64, i64 }

@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_UNCAT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPROPS_EMPTY = common dso_local global i32 0, align 4
@LPROPS_FRDI_IDX = common dso_local global i32 0, align 4
@LPROPS_FREEABLE = common dso_local global i32 0, align 4
@LPROPS_DIRTY_IDX = common dso_local global i32 0, align 4
@LPROPS_DIRTY = common dso_local global i32 0, align 4
@LPROPS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  %6 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LPROPS_TAKEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LPROPS_UNCAT, align 4
  store i32 %13, i32* %3, align 4
  br label %106

14:                                               ; preds = %2
  %15 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LPROPS_INDEX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(i32 %30)
  %32 = load i32, i32* @LPROPS_EMPTY, align 4
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %14
  %34 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %47 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LPROPS_INDEX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @LPROPS_FRDI_IDX, align 4
  store i32 %53, i32* %3, align 4
  br label %106

54:                                               ; preds = %45
  %55 = load i32, i32* @LPROPS_FREEABLE, align 4
  store i32 %55, i32* %3, align 4
  br label %106

56:                                               ; preds = %33
  %57 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %58 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LPROPS_INDEX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @LPROPS_DIRTY_IDX, align 4
  store i32 %76, i32* %3, align 4
  br label %106

77:                                               ; preds = %63
  br label %104

78:                                               ; preds = %56
  %79 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %80 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %88 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %91 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @LPROPS_DIRTY, align 4
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %86, %78
  %97 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %98 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @LPROPS_FREE, align 4
  store i32 %102, i32* %3, align 4
  br label %106

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32, i32* @LPROPS_UNCAT, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %101, %94, %75, %54, %52, %22, %12
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
