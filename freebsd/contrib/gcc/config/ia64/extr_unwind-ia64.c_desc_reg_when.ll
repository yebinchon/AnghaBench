; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_reg_when.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_reg_when.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.unw_reg_info* }
%struct.unw_reg_info = type { i64, i64 }

@UNW_WHERE_NONE = common dso_local global i64 0, align 8
@UNW_WHERE_GR_SAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i64, %struct.unw_state_record*)* @desc_reg_when to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_reg_when(i8 zeroext %0, i64 %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.unw_state_record*, align 8
  %7 = alloca %struct.unw_reg_info*, align 8
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store %struct.unw_state_record* %2, %struct.unw_state_record** %6, align 8
  %8 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %9 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.unw_reg_info*, %struct.unw_reg_info** %10, align 8
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %11, i64 %14
  store %struct.unw_reg_info* %15, %struct.unw_reg_info** %7, align 8
  %16 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %17 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNW_WHERE_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* @UNW_WHERE_GR_SAVE, align 8
  %23 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %24 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %27 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %32 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i64 @MIN(i32 %30, i64 %34)
  %36 = add nsw i64 %28, %35
  %37 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %38 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  ret void
}

declare dso_local i64 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
