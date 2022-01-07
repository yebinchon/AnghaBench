; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_sleeping_prematurely.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_sleeping_prematurely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.zone* }
%struct.zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64)* @sleeping_prematurely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleeping_prematurely(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zone*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.zone*, %struct.zone** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.zone, %struct.zone* %23, i64 %25
  store %struct.zone* %26, %struct.zone** %9, align 8
  %27 = load %struct.zone*, %struct.zone** %9, align 8
  %28 = call i32 @populated_zone(%struct.zone* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.zone*, %struct.zone** %9, align 8
  %33 = call i64 @zone_is_all_unreclaimable(%struct.zone* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %45

36:                                               ; preds = %31
  %37 = load %struct.zone*, %struct.zone** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.zone*, %struct.zone** %9, align 8
  %40 = call i32 @high_wmark_pages(%struct.zone* %39)
  %41 = call i32 @zone_watermark_ok_safe(%struct.zone* %37, i32 %38, i32 %40, i32 0, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %49

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %35, %30
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @populated_zone(%struct.zone*) #1

declare dso_local i64 @zone_is_all_unreclaimable(%struct.zone*) #1

declare dso_local i32 @zone_watermark_ok_safe(%struct.zone*, i32, i32, i32, i32) #1

declare dso_local i32 @high_wmark_pages(%struct.zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
