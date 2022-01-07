; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_reg_sprel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_reg_sprel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNW_WHERE_SPREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, %struct.unw_state_record*)* @desc_reg_sprel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_reg_sprel(i8 zeroext %0, i32 %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.unw_state_record*, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store %struct.unw_state_record* %2, %struct.unw_state_record** %6, align 8
  %7 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %8 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load i32, i32* @UNW_WHERE_SPREL, align 4
  %15 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %16 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %19 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 4, %23
  %25 = call i32 @set_reg(i64 %13, i32 %14, i64 %22, i32 %24)
  ret void
}

declare dso_local i32 @set_reg(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
