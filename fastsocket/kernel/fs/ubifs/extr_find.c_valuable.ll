; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_valuable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_valuable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_2__, i64, %struct.ubifs_lpt_heap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ubifs_lpt_heap = type { i32, i32 }
%struct.ubifs_lprops = type { i32, i64, i64 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_lprops*)* @valuable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valuable(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_lpt_heap*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  %9 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %68 [
    i32 133, label %15
    i32 132, label %15
    i32 129, label %15
    i32 131, label %45
    i32 128, label %66
    i32 130, label %67
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 4
  %18 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %18, i64 %21
  store %struct.ubifs_lpt_heap* %22, %struct.ubifs_lpt_heap** %8, align 8
  %23 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %24 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %27 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %69

31:                                               ; preds = %15
  %32 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %36 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %69

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %69

45:                                               ; preds = %2
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %69

65:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %69

67:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %69

68:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64, %44, %43, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
