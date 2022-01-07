; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_find_unused_pba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_find_unused_pba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sddr09_card_info = type { i32, i32, i32, i64* }

@sddr09_find_unused_pba.lastpba = internal global i32 1, align 4
@UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sddr09_card_info*, i32)* @sddr09_find_unused_pba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_find_unused_pba(%struct.sddr09_card_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sddr09_card_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sddr09_card_info* %0, %struct.sddr09_card_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = udiv i32 %9, 1000
  %11 = shl i32 %10, 10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %4, align 8
  %13 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %4, align 8
  %16 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %4, align 8
  %19 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = ashr i32 %14, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 1024
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1024, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* @sddr09_find_unused_pba.lastpba, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %54, %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %4, align 8
  %38 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UNDEF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* @sddr09_find_unused_pba.lastpba, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %3, align 4
  br label %84

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %32

57:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @sddr09_find_unused_pba.lastpba, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %4, align 8
  %64 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UNDEF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* @sddr09_find_unused_pba.lastpba, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %58

83:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %74, %48
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
