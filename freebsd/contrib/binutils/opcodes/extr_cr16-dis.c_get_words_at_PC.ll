; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_get_words_at_PC.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_get_words_at_PC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32 }

@words = common dso_local global i64* null, align 8
@allWords = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.disassemble_info*)* @get_words_at_PC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_words_at_PC(i32 %0, %struct.disassemble_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.disassemble_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %14 = call i64 @get_word_at_PC(i32 %12, %struct.disassemble_info* %13)
  %15 = load i64*, i64** @words, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %14, i64* %18, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %6, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i64*, i64** @words, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 32
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** @words, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 %33, 16
  %35 = add i64 %30, %34
  %36 = load i64*, i64** @words, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  store i64 %39, i64* @allWords, align 8
  ret void
}

declare dso_local i64 @get_word_at_PC(i32, %struct.disassemble_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
