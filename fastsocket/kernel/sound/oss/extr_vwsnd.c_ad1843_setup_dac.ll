; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_setup_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_setup_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"(lith=0x%p, framerate=%d, fmt=%d, channels=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ad_mode = %d, ad_fmt = %d\0A\00", align 1
@ad1843_C1C = common dso_local global i32 0, align 4
@ad1843_DA1SM = common dso_local global i32 0, align 4
@ad1843_DA1F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @ad1843_setup_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1843_setup_dac(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @DBGEV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %22 [
    i32 129, label %17
    i32 128, label %18
    i32 130, label %19
    i32 131, label %20
    i32 132, label %21
  ]

17:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %24

18:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %24

19:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %24

20:                                               ; preds = %4
  store i32 2, i32* %9, align 4
  br label %24

21:                                               ; preds = %4
  store i32 3, i32* %9, align 4
  br label %24

22:                                               ; preds = %4
  %23 = call i32 @ASSERT(i32 0)
  br label %24

24:                                               ; preds = %22, %21, %20, %19, %18, %17
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %28 [
    i32 2, label %26
    i32 1, label %27
  ]

26:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %30

27:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %30

28:                                               ; preds = %24
  %29 = call i32 @ASSERT(i32 0)
  br label %30

30:                                               ; preds = %28, %27, %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DBGPV(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 4000
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 49000
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i1 [ false, %30 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ad1843_write_bits(i32* %43, i32* @ad1843_C1C, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ad1843_write_multi(i32* %46, i32 2, i32* @ad1843_DA1SM, i32 %47, i32* @ad1843_DA1F, i32 %48)
  ret void
}

declare dso_local i32 @DBGEV(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DBGPV(i8*, i32, i32) #1

declare dso_local i32 @ad1843_write_bits(i32*, i32*, i32) #1

declare dso_local i32 @ad1843_write_multi(i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
