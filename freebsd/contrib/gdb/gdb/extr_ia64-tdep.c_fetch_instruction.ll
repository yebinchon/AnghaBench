; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_fetch_instruction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_fetch_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUNDLE_LEN = common dso_local global i32 0, align 4
@SLOT_MULTIPLIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Can't fetch instructions for slot numbers greater than 2.\0AUsing slot 0 instead\00", align 1
@template_encoding_table = common dso_local global i32** null, align 8
@L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64*)* @fetch_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_instruction(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* @BUNDLE_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 15
  %20 = load i32, i32* @SLOT_MULTIPLIER, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @warning(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -16
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BUNDLE_LEN, align 4
  %31 = call i32 @target_read_memory(i32 %29, i8* %17, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @slotN_contents(i8* %17, i32 %36)
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  %39 = call i64 @extract_bit_field(i8* %17, i32 0, i32 5)
  store i64 %39, i64* %11, align 8
  %40 = load i32**, i32*** @template_encoding_table, align 8
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %61, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @L, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %35
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 16
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %56, %53
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* @SLOT_MULTIPLIER, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %34
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @target_read_memory(i32, i8*, i32) #2

declare dso_local i64 @slotN_contents(i8*, i32) #2

declare dso_local i64 @extract_bit_field(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
