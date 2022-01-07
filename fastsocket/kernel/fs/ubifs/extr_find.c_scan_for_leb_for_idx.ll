; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_leb_for_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_scan_for_leb_for_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i64, i64, i32 }
%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.scan_data = type { i32 }

@scan_for_idx_cb = common dso_local global i64 0, align 8
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_lprops* (%struct.ubifs_info*)* @scan_for_leb_for_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_lprops*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca %struct.scan_data, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* @scan_for_idx_cb, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info* %8, i32 -1, i32 %11, i32 %13, %struct.scan_data* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ubifs_lprops* @ERR_PTR(i32 %18)
  store %struct.ubifs_lprops* %19, %struct.ubifs_lprops** %2, align 8
  br label %92

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br label %34

34:                                               ; preds = %27, %20
  %35 = phi i1 [ false, %20 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @ubifs_assert(i32 %36)
  %38 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %42, i32 %44)
  store %struct.ubifs_lprops* %45, %struct.ubifs_lprops** %4, align 8
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %47 = call i64 @IS_ERR(%struct.ubifs_lprops* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %50, %struct.ubifs_lprops** %2, align 8
  br label %92

51:                                               ; preds = %34
  %52 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %53 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ubifs_assert(i32 %58)
  %60 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ubifs_assert(i32 %71)
  %73 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %74 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LPROPS_TAKEN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @ubifs_assert(i32 %80)
  %82 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LPROPS_INDEX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @ubifs_assert(i32 %89)
  %91 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %91, %struct.ubifs_lprops** %2, align 8
  br label %92

92:                                               ; preds = %51, %49, %17
  %93 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %2, align 8
  ret %struct.ubifs_lprops* %93
}

declare dso_local i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info*, i32, i32, i32, %struct.scan_data*) #1

declare dso_local %struct.ubifs_lprops* @ERR_PTR(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
