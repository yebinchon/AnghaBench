; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_match_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_match_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@words = common dso_local global i32* null, align 8
@cr16_instruction = common dso_local global %struct.TYPE_3__* null, align 8
@NUMOPCODES = common dso_local global i32 0, align 4
@instruction = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @match_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_opcode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @words, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @words, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 16
  %11 = add nsw i32 %6, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cr16_instruction, align 8
  %14 = load i32, i32* @NUMOPCODES, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** @instruction, align 8
  br label %18

18:                                               ; preds = %39, %0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instruction, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cr16_instruction, align 8
  %21 = icmp uge %struct.TYPE_3__* %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = call i64 (...) @build_mask()
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %2, align 8
  %26 = and i64 %24, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instruction, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instruction, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @BIN(i32 %29, i32 %32)
  %34 = icmp eq i64 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 1, i32* %1, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instruction, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 -1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** @instruction, align 8
  br label %39

39:                                               ; preds = %36
  br label %18

40:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i64 @build_mask(...) #1

declare dso_local i64 @BIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
