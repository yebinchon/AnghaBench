; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_spill_reg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_spill_reg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.unw_reg_info* }
%struct.unw_reg_info = type { i32, i8, i64 }

@UNW_WHERE_GR = common dso_local global i32 0, align 4
@UNW_WHERE_BR = common dso_local global i32 0, align 4
@UNW_WHERE_FR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i64, i8, i8, i8, %struct.unw_state_record*)* @desc_spill_reg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_spill_reg_p(i8 zeroext %0, i64 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, %struct.unw_state_record* %5) #0 {
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.unw_state_record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.unw_reg_info*, align 8
  store i8 %0, i8* %7, align 1
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store %struct.unw_state_record* %5, %struct.unw_state_record** %12, align 8
  %15 = load i32, i32* @UNW_WHERE_GR, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i8, i8* %7, align 1
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.unw_state_record*, %struct.unw_state_record** %12, align 8
  %19 = call i32 @desc_is_active(i8 zeroext %16, i64 %17, %struct.unw_state_record* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %66

22:                                               ; preds = %6
  %23 = load i8, i8* %10, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @UNW_WHERE_BR, align 4
  store i32 %26, i32* %13, align 4
  br label %35

27:                                               ; preds = %22
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @UNW_WHERE_FR, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.unw_state_record*, %struct.unw_state_record** %12, align 8
  %37 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.unw_reg_info*, %struct.unw_reg_info** %38, align 8
  %40 = load i8, i8* %9, align 1
  %41 = call i32 @decode_abreg(i8 zeroext %40, i32 0)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %39, i64 %42
  store %struct.unw_reg_info* %43, %struct.unw_reg_info** %14, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.unw_reg_info*, %struct.unw_reg_info** %14, align 8
  %46 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.unw_state_record*, %struct.unw_state_record** %12, align 8
  %48 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.unw_state_record*, %struct.unw_state_record** %12, align 8
  %53 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i64 @MIN(i32 %51, i64 %55)
  %57 = add nsw i64 %49, %56
  %58 = load %struct.unw_reg_info*, %struct.unw_reg_info** %14, align 8
  %59 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 127
  %63 = trunc i32 %62 to i8
  %64 = load %struct.unw_reg_info*, %struct.unw_reg_info** %14, align 8
  %65 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %64, i32 0, i32 1
  store i8 %63, i8* %65, align 4
  br label %66

66:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @desc_is_active(i8 zeroext, i64, %struct.unw_state_record*) #1

declare dso_local i32 @decode_abreg(i8 zeroext, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
