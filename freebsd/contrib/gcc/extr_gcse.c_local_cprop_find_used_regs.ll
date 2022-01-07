; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_local_cprop_find_used_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_local_cprop_find_used_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @local_cprop_find_used_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_cprop_find_used_regs(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @GET_CODE(i64 %12)
  switch i32 %13, label %25 [
    i32 128, label %14
    i32 131, label %14
    i32 130, label %14
    i32 134, label %15
    i32 133, label %15
    i32 137, label %15
    i32 136, label %15
    i32 132, label %15
    i32 135, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %11, %11, %11
  br label %30

15:                                               ; preds = %11, %11, %11, %11, %11, %11
  br label %30

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @SUBREG_REG(i64 %17)
  %19 = call i32 @GET_MODE(i32 %18)
  %20 = call i32 @GET_MODE_BITSIZE(i32 %19)
  %21 = load i32, i32* @BITS_PER_WORD, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %30

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i64*, i64** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @find_used_regs(i64* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %23, %15, %14, %10
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i64) #1

declare dso_local i32 @find_used_regs(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
