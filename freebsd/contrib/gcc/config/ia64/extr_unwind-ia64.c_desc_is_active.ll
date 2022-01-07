; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_is_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i64, %struct.unw_state_record*)* @desc_is_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_is_active(i8 zeroext %0, i64 %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.unw_state_record*, align 8
  store i8 %0, i8* %5, align 1
  store i64 %1, i64* %6, align 8
  store %struct.unw_state_record* %2, %struct.unw_state_record** %7, align 8
  %8 = load %struct.unw_state_record*, %struct.unw_state_record** %7, align 8
  %9 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.unw_state_record*, %struct.unw_state_record** %7, align 8
  %12 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.unw_state_record*, %struct.unw_state_record** %7, align 8
  %17 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i64 @MIN(i32 %15, i64 %19)
  %21 = add nsw i64 %13, %20
  %22 = icmp sle i64 %10, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.unw_state_record*, %struct.unw_state_record** %7, align 8
  %30 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = and i64 %31, %35
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %49

39:                                               ; preds = %28
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = load %struct.unw_state_record*, %struct.unw_state_record** %7, align 8
  %45 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %39, %24
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %38, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
