; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_memory_insert_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_memory_insert_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUNDLE_LEN = common dso_local global i32 0, align 4
@SLOT_MULTIPLIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Can't insert breakpoint for slot numbers greater than 2.\00", align 1
@template_encoding_table = common dso_local global i64** null, align 8
@L = common dso_local global i64 0, align 8
@IA64_BREAKPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ia64_memory_insert_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_memory_insert_breakpoint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @BUNDLE_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 15
  %17 = load i32, i32* @SLOT_MULTIPLIER, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, -16
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BUNDLE_LEN, align 4
  %28 = call i32 @target_read_memory(i32 %26, i8* %14, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = call i32 @extract_bit_field(i8* %14, i32 0, i32 5)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load i64**, i64*** @template_encoding_table, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @L, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 2, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %32, %23
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @slotN_contents(i8* %14, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @memcpy(i8* %46, i64* %8, i32 8)
  %48 = load i32, i32* @IA64_BREAKPOINT, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @replace_slotN_contents(i8* %14, i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @BUNDLE_LEN, align 4
  %56 = call i32 @target_write_memory(i32 %54, i8* %14, i32 %55)
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @target_read_memory(i32, i8*, i32) #2

declare dso_local i32 @extract_bit_field(i8*, i32, i32) #2

declare dso_local i64 @slotN_contents(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i64*, i32) #2

declare dso_local i32 @replace_slotN_contents(i8*, i32, i32) #2

declare dso_local i32 @target_write_memory(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
