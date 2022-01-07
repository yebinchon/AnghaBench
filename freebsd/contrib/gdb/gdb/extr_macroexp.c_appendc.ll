; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_appendc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_appendc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macro_buffer*, i32)* @appendc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendc(%struct.macro_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.macro_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macro_buffer* %0, %struct.macro_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @resize_buffer(%struct.macro_buffer* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32 %20, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.macro_buffer*, %struct.macro_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i32 @resize_buffer(%struct.macro_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
