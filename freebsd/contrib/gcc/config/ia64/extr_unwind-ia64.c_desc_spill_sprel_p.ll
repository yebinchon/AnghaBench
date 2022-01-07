; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_spill_sprel_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_spill_sprel_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.unw_reg_info* }
%struct.unw_reg_info = type { i32, i64, i32 }

@UNW_WHERE_SPREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i8, i32, %struct.unw_state_record*)* @desc_spill_sprel_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_spill_sprel_p(i8 zeroext %0, i32 %1, i8 zeroext %2, i32 %3, %struct.unw_state_record* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.unw_state_record*, align 8
  %11 = alloca %struct.unw_reg_info*, align 8
  store i8 %0, i8* %6, align 1
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store %struct.unw_state_record* %4, %struct.unw_state_record** %10, align 8
  %12 = load i8, i8* %6, align 1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %15 = call i32 @desc_is_active(i8 zeroext %12, i32 %13, %struct.unw_state_record* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %46

18:                                               ; preds = %5
  %19 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %20 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.unw_reg_info*, %struct.unw_reg_info** %21, align 8
  %23 = load i8, i8* %8, align 1
  %24 = call i32 @decode_abreg(i8 zeroext %23, i32 1)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %22, i64 %25
  store %struct.unw_reg_info* %26, %struct.unw_reg_info** %11, align 8
  %27 = load i32, i32* @UNW_WHERE_SPREL, align 4
  %28 = load %struct.unw_reg_info*, %struct.unw_reg_info** %11, align 8
  %29 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %31 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %35 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i64 @MIN(i32 %33, i64 %37)
  %39 = add nsw i64 %32, %38
  %40 = load %struct.unw_reg_info*, %struct.unw_reg_info** %11, align 8
  %41 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 4, %42
  %44 = load %struct.unw_reg_info*, %struct.unw_reg_info** %11, align 8
  %45 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @desc_is_active(i8 zeroext, i32, %struct.unw_state_record*) #1

declare dso_local i32 @decode_abreg(i8 zeroext, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
