; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_get_string_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_get_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sym_get_string_value(%struct.symbol* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %5 = load %struct.symbol*, %struct.symbol** %3, align 8
  %6 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %16 [
    i32 132, label %8
    i32 131, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.symbol*, %struct.symbol** %3, align 8
  %10 = call i32 @sym_get_tristate_value(%struct.symbol* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %15 [
    i32 129, label %12
    i32 130, label %13
    i32 128, label %14
  ]

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %23

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %23

15:                                               ; preds = %8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.symbol*, %struct.symbol** %3, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %17, %14, %13, %12
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
