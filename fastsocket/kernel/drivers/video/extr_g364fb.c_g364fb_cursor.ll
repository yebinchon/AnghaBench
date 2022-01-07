; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_g364fb.c_g364fb_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_g364fb.c_g364fb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_cursor = type { i32 }

@CURS_TOGGLE = common dso_local global i32 0, align 4
@CTLA_REG = common dso_local global i64 0, align 8
@x = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@CURS_POS_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g364fb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_cursor*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %4, align 8
  %5 = load %struct.fb_cursor*, %struct.fb_cursor** %4, align 8
  %6 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %38 [
    i32 129, label %8
    i32 128, label %14
    i32 130, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @CURS_TOGGLE, align 4
  %10 = load i64, i64* @CTLA_REG, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %38

14:                                               ; preds = %2, %2
  %15 = load i32, i32* @CURS_TOGGLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i64, i64* @CTLA_REG, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @x, align 4
  %22 = load i32, i32* @p, align 4
  %23 = call i32 @fontwidth(i32 %22)
  %24 = mul nsw i32 %21, %23
  %25 = shl i32 %24, 12
  %26 = load i32, i32* @y, align 4
  %27 = load i32, i32* @p, align 4
  %28 = call i32 @fontheight(i32 %27)
  %29 = mul nsw i32 %26, %28
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %29, %33
  %35 = or i32 %25, %34
  %36 = load i64, i64* @CURS_POS_REG, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %2, %14, %8
  ret i32 0
}

declare dso_local i32 @fontwidth(i32) #1

declare dso_local i32 @fontheight(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
