; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-stub.c_set_debug_traps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-stub.c_set_debug_traps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remcomStack = common dso_local global i32* null, align 8
@STACKSIZE = common dso_local global i32 0, align 4
@stackPtr = common dso_local global i32* null, align 8
@_catchException0 = common dso_local global i32 0, align 4
@_catchException1 = common dso_local global i32 0, align 4
@_catchException3 = common dso_local global i32 0, align 4
@_catchException4 = common dso_local global i32 0, align 4
@_catchException5 = common dso_local global i32 0, align 4
@_catchException6 = common dso_local global i32 0, align 4
@_catchException7 = common dso_local global i32 0, align 4
@_catchException8 = common dso_local global i32 0, align 4
@_catchException9 = common dso_local global i32 0, align 4
@_catchException10 = common dso_local global i32 0, align 4
@_catchException11 = common dso_local global i32 0, align 4
@_catchException12 = common dso_local global i32 0, align 4
@_catchException13 = common dso_local global i32 0, align 4
@_catchException14 = common dso_local global i32 0, align 4
@_catchException16 = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_debug_traps() #0 {
  %1 = load i32*, i32** @remcomStack, align 8
  %2 = load i32, i32* @STACKSIZE, align 4
  %3 = sext i32 %2 to i64
  %4 = udiv i64 %3, 4
  %5 = sub i64 %4, 1
  %6 = getelementptr inbounds i32, i32* %1, i64 %5
  store i32* %6, i32** @stackPtr, align 8
  %7 = load i32, i32* @_catchException0, align 4
  %8 = call i32 @exceptionHandler(i32 0, i32 %7)
  %9 = load i32, i32* @_catchException1, align 4
  %10 = call i32 @exceptionHandler(i32 1, i32 %9)
  %11 = load i32, i32* @_catchException3, align 4
  %12 = call i32 @exceptionHandler(i32 3, i32 %11)
  %13 = load i32, i32* @_catchException4, align 4
  %14 = call i32 @exceptionHandler(i32 4, i32 %13)
  %15 = load i32, i32* @_catchException5, align 4
  %16 = call i32 @exceptionHandler(i32 5, i32 %15)
  %17 = load i32, i32* @_catchException6, align 4
  %18 = call i32 @exceptionHandler(i32 6, i32 %17)
  %19 = load i32, i32* @_catchException7, align 4
  %20 = call i32 @exceptionHandler(i32 7, i32 %19)
  %21 = load i32, i32* @_catchException8, align 4
  %22 = call i32 @exceptionHandler(i32 8, i32 %21)
  %23 = load i32, i32* @_catchException9, align 4
  %24 = call i32 @exceptionHandler(i32 9, i32 %23)
  %25 = load i32, i32* @_catchException10, align 4
  %26 = call i32 @exceptionHandler(i32 10, i32 %25)
  %27 = load i32, i32* @_catchException11, align 4
  %28 = call i32 @exceptionHandler(i32 11, i32 %27)
  %29 = load i32, i32* @_catchException12, align 4
  %30 = call i32 @exceptionHandler(i32 12, i32 %29)
  %31 = load i32, i32* @_catchException13, align 4
  %32 = call i32 @exceptionHandler(i32 13, i32 %31)
  %33 = load i32, i32* @_catchException14, align 4
  %34 = call i32 @exceptionHandler(i32 14, i32 %33)
  %35 = load i32, i32* @_catchException16, align 4
  %36 = call i32 @exceptionHandler(i32 16, i32 %35)
  store i32 1, i32* @initialized, align 4
  ret void
}

declare dso_local i32 @exceptionHandler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
