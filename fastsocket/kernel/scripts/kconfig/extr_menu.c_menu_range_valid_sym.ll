; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_range_valid_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_range_valid_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i32 }

@S_INT = common dso_local global i64 0, align 8
@S_HEX = common dso_local global i64 0, align 8
@S_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.symbol*)* @menu_range_valid_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_range_valid_sym(%struct.symbol* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %5 = load %struct.symbol*, %struct.symbol** %4, align 8
  %6 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @S_INT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S_HEX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = load %struct.symbol*, %struct.symbol** %4, align 8
  %18 = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.symbol*, %struct.symbol** %3, align 8
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @sym_string_valid(%struct.symbol* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi i1 [ false, %16 ], [ %28, %22 ]
  br label %31

31:                                               ; preds = %29, %10, %2
  %32 = phi i1 [ true, %10 ], [ true, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @sym_string_valid(%struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
