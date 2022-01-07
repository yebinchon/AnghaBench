; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_dirty_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_dirty_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64 }
%struct.ubifs_lprops = type { i32, i64, i64, i32 }
%struct.scan_data = type { i64, i32, i32, i64 }

@LPT_SCAN_CONTINUE = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPT_SCAN_ADD = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPT_SCAN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_lprops*, i32, %struct.scan_data*)* @scan_for_dirty_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_for_dirty_cb(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2, %struct.scan_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_lprops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scan_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scan_data* %3, %struct.scan_data** %9, align 8
  %11 = load i32, i32* @LPT_SCAN_CONTINUE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %13 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LPROPS_TAKEN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @LPT_SCAN_CONTINUE, align 4
  store i32 %19, i32* %5, align 4
  br label %100

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %25 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %26 = call i64 @valuable(%struct.ubifs_info* %24, %struct.ubifs_lprops* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @LPT_SCAN_ADD, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %23, %20
  %33 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %37 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %41 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %100

46:                                               ; preds = %32
  %47 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %48 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LPROPS_INDEX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %100

60:                                               ; preds = %51, %46
  %61 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %62 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %65 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %74 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %100

79:                                               ; preds = %72
  br label %91

80:                                               ; preds = %60
  %81 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %82 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %100

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %93 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %96 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @LPT_SCAN_ADD, align 4
  %98 = load i32, i32* @LPT_SCAN_STOP, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %91, %88, %77, %58, %44, %18
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @valuable(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
