; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_memory_remove_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_memory_remove_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUNDLE_LEN = common dso_local global i32 0, align 4
@SLOT_MULTIPLIER = common dso_local global i32 0, align 4
@template_encoding_table = common dso_local global i64** null, align 8
@L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ia64_memory_remove_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_memory_remove_breakpoint(i32 %0, i8* %1) #0 {
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
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -16
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @BUNDLE_LEN, align 4
  %23 = call i32 @target_read_memory(i32 %21, i8* %14, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = call i32 @extract_bit_field(i8* %14, i32 0, i32 5)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load i64**, i64*** @template_encoding_table, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @L, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 2, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %27, %2
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @memcpy(i64* %8, i8* %39, i32 8)
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @replace_slotN_contents(i8* %14, i64 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @BUNDLE_LEN, align 4
  %49 = call i32 @target_write_memory(i32 %47, i8* %14, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @target_read_memory(i32, i8*, i32) #2

declare dso_local i32 @extract_bit_field(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i32 @replace_slotN_contents(i8*, i64, i32) #2

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
