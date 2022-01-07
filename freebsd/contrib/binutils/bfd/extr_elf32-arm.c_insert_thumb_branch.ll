; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_insert_thumb_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_insert_thumb_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW_HI_ORDER = common dso_local global i32 0, align 4
@HI_LOW_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @insert_thumb_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_thumb_branch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @BFD_ASSERT(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 2047
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 11
  %18 = and i32 %17, 2047
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LOW_HI_ORDER, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @LOW_HI_ORDER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @LOW_HI_ORDER, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %25, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @HI_LOW_ORDER, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @HI_LOW_ORDER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @HI_LOW_ORDER, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %31
  %45 = call i32 (...) @abort() #3
  unreachable

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BFD_ASSERT(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
