; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_card_find_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_card_find_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda_card_info = type { i8 }

@alauda_card_ids = common dso_local global %struct.alauda_card_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alauda_card_info* (i8)* @alauda_card_find_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alauda_card_info* @alauda_card_find_id(i8 zeroext %0) #0 {
  %2 = alloca %struct.alauda_card_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.alauda_card_info*, %struct.alauda_card_info** @alauda_card_ids, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.alauda_card_info, %struct.alauda_card_info* %6, i64 %8
  %10 = getelementptr inbounds %struct.alauda_card_info, %struct.alauda_card_info* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %5
  %15 = load %struct.alauda_card_info*, %struct.alauda_card_info** @alauda_card_ids, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.alauda_card_info, %struct.alauda_card_info* %15, i64 %17
  %19 = getelementptr inbounds %struct.alauda_card_info, %struct.alauda_card_info* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.alauda_card_info*, %struct.alauda_card_info** @alauda_card_ids, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.alauda_card_info, %struct.alauda_card_info* %26, i64 %28
  store %struct.alauda_card_info* %29, %struct.alauda_card_info** %2, align 8
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  store %struct.alauda_card_info* null, %struct.alauda_card_info** %2, align 8
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.alauda_card_info*, %struct.alauda_card_info** %2, align 8
  ret %struct.alauda_card_info* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
