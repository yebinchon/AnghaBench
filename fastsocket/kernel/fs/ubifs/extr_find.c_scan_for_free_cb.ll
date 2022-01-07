; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_free_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_free_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.ubifs_lprops = type { i32, i64, i64, i32 }
%struct.scan_data = type { i64, i32, i32 }

@LPT_SCAN_CONTINUE = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPT_SCAN_ADD = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPT_SCAN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_lprops*, i32, %struct.scan_data*)* @scan_for_free_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_for_free_cb(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2, %struct.scan_data* %3) #0 {
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
  br label %94

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
  %34 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LPROPS_INDEX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %94

41:                                               ; preds = %32
  %42 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %46 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %94

51:                                               ; preds = %41
  %52 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %53 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %58 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %94

66:                                               ; preds = %56, %51
  %67 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %68 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %71 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %75 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %80 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %94

85:                                               ; preds = %78, %66
  %86 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  %87 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scan_data*, %struct.scan_data** %9, align 8
  %90 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @LPT_SCAN_ADD, align 4
  %92 = load i32, i32* @LPT_SCAN_STOP, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %85, %83, %64, %49, %39, %18
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @valuable(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
