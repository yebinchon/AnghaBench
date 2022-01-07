; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_fmt_xlong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_fmt_xlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @fmt_xlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmt_xlong(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %7, 12
  %9 = and i32 %8, 15
  %10 = call signext i8 @tohex(i32 %9)
  %11 = load i8*, i8** %3, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 48
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %4, align 4
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 15
  %27 = call signext i8 @tohex(i32 %26)
  %28 = load i8*, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 48
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %23
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %4, align 4
  %42 = lshr i32 %41, 4
  %43 = and i32 %42, 15
  %44 = call signext i8 @tohex(i32 %43)
  %45 = load i8*, i8** %3, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 48
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %40
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 15
  %60 = call signext i8 @tohex(i32 %59)
  %61 = load i8*, i8** %3, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = add nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  ret i32 %68
}

declare dso_local signext i8 @tohex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
