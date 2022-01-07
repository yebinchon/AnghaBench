; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_decode_x1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_decode_x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_x1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_x1(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %7, align 1
  %14 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %14, i32* %9, align 4
  %15 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %15, i32* %10, align 4
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 127
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @X1, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i8, i8* %8, align 1
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @UNW_DEC_SPILL_SPREL(i32 %25, i32 %26, i8 zeroext %27, i32 %28, i8* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* @X1, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8, i8* %8, align 1
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @UNW_DEC_SPILL_PSPREL(i32 %32, i32 %33, i8 zeroext %34, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_SPILL_SPREL(i32, i32, i8 zeroext, i32, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_PSPREL(i32, i32, i8 zeroext, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
