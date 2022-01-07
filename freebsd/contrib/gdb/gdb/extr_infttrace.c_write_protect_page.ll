; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_write_protect_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_write_protect_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@TT_PROC_GET_MPROTECT = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@memory_page_dictionary = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@TT_PROC_SET_MPROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @write_protect_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_protect_page(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @TT_PROC_GET_MPROTECT, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @TT_NIL, align 4
  %14 = ptrtoint i32* %7 to i32
  %15 = call i32 @call_ttrace(i32 %9, i32 %10, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %47

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memory_page_dictionary, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PROT_WRITE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @TT_PROC_SET_MPROTECT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memory_page_dictionary, i32 0, i32 0), align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @call_ttrace(i32 %30, i32 %31, i32 %33, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %25
  store i32 0, i32* %3, align 4
  br label %47

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
