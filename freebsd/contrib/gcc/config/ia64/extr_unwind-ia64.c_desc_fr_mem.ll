; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_fr_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_fr_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNW_REG_F2 = common dso_local global i64 0, align 8
@UNW_WHERE_SPILL_HOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.unw_state_record*)* @desc_fr_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_fr_mem(i8 zeroext %0, %struct.unw_state_record* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.unw_state_record*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store %struct.unw_state_record* %1, %struct.unw_state_record** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %16 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNW_REG_F2, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @UNW_WHERE_SPILL_HOME, align 4
  %25 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %26 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %29 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @set_reg(i64 %23, i32 %24, i64 %32, i32 0)
  %34 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %35 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %14, %9
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 1
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %3, align 1
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @set_reg(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
