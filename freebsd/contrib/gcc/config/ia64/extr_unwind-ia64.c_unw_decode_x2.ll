; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_decode_x2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_decode_x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_x2(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %7, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %8, align 1
  %19 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %19, i32* %12, align 4
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 127
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %8, align 1
  store i8 %24, i8* %11, align 1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 7
  %28 = and i32 %27, 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @X2, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i8, i8* %9, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @UNW_DEC_RESTORE(i32 %39, i32 %40, i8 zeroext %41, i8* %42)
  br label %52

44:                                               ; preds = %34, %3
  %45 = load i32, i32* @X2, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i8, i8* %9, align 1
  %48 = load i8, i8* %10, align 1
  %49 = load i8, i8* %11, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @UNW_DEC_SPILL_REG(i32 %45, i32 %46, i8 zeroext %47, i8 zeroext %48, i8 zeroext %49, i8* %50)
  br label %52

52:                                               ; preds = %44, %38
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_RESTORE(i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_REG(i32, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
