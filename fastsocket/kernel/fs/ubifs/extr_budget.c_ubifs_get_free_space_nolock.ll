; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_get_free_space_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_get_free_space_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_get_free_space_nolock(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %11)
  %13 = icmp eq i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ubifs_assert(i32 %14)
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ubifs_calc_available(%struct.ubifs_info* %23, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %39, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %59, %63
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = mul nsw i32 %68, %75
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %47
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i64 @ubifs_reported_space(%struct.ubifs_info* %84, i64 %87)
  store i64 %88, i64* %7, align 8
  br label %90

89:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i64 @ubifs_calc_available(%struct.ubifs_info*, i64) #1

declare dso_local i64 @ubifs_reported_space(%struct.ubifs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
