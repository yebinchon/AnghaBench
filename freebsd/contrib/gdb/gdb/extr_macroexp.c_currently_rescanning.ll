; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_currently_rescanning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_currently_rescanning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_name_list = type { i32, %struct.macro_name_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_name_list*, i8*)* @currently_rescanning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @currently_rescanning(%struct.macro_name_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macro_name_list*, align 8
  %5 = alloca i8*, align 8
  store %struct.macro_name_list* %0, %struct.macro_name_list** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %18, %2
  %7 = load %struct.macro_name_list*, %struct.macro_name_list** %4, align 8
  %8 = icmp ne %struct.macro_name_list* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.macro_name_list*, %struct.macro_name_list** %4, align 8
  %12 = getelementptr inbounds %struct.macro_name_list, %struct.macro_name_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.macro_name_list*, %struct.macro_name_list** %4, align 8
  %20 = getelementptr inbounds %struct.macro_name_list, %struct.macro_name_list* %19, i32 0, i32 1
  %21 = load %struct.macro_name_list*, %struct.macro_name_list** %20, align 8
  store %struct.macro_name_list* %21, %struct.macro_name_list** %4, align 8
  br label %6

22:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
