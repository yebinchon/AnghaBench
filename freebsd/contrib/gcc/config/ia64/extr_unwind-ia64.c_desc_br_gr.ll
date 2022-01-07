; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_br_gr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_br_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNW_REG_B1 = common dso_local global i64 0, align 8
@UNW_WHERE_GR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.unw_state_record*)* @desc_br_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_br_gr(i8 zeroext %0, i8 zeroext %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.unw_state_record*, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.unw_state_record* %2, %struct.unw_state_record** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %18 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNW_REG_B1, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @UNW_WHERE_GR, align 4
  %27 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %28 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %31 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = sub nsw i64 %33, 1
  %35 = load i8, i8* %5, align 1
  %36 = add i8 %35, 1
  store i8 %36, i8* %5, align 1
  %37 = zext i8 %35 to i32
  %38 = call i32 @set_reg(i64 %25, i32 %26, i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %16, %11
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 1
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %4, align 1
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @set_reg(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
