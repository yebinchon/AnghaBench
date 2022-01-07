; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_extract_bdp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_extract_bdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_OPCODE_POWER4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32*)* @extract_bdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_bdp(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 2097152
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 32768
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32*, i32** %6, align 8
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %11
  br label %35

24:                                               ; preds = %3
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 48234496
  %27 = icmp ne i64 %26, 14680064
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = and i64 %29, 60817408
  %31 = icmp ne i64 %30, 52428800
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %28, %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64, i64* %4, align 8
  %37 = and i64 %36, 65532
  %38 = xor i64 %37, 32768
  %39 = sub i64 %38, 32768
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
