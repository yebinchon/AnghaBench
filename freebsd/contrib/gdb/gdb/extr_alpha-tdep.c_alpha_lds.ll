; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_lds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_lds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @alpha_lds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_lds(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @extract_unsigned_integer(i8* %12, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 8388607
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 31
  %19 = and i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 30
  %22 = and i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 23
  %25 = and i32 %24, 127
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 10
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 127
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2047, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, 896
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 63
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 52
  %49 = or i32 %46, %48
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 29
  %52 = or i32 %49, %51
  store i32 %52, i32* %11, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @store_unsigned_integer(i8* %53, i32 8, i32 %54)
  ret void
}

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
