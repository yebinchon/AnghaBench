; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_xdigit2bin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_xdigit2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN6PTON_DELIM = common dso_local global i32 0, align 4
@IN6PTON_COLON_MASK = common dso_local global i32 0, align 4
@IN6PTON_DOT = common dso_local global i32 0, align 4
@IN6PTON_XDIGIT = common dso_local global i8 0, align 1
@IN6PTON_DIGIT = common dso_local global i8 0, align 1
@IN6PTON_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @xdigit2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdigit2bin(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @IN6PTON_DELIM, align 4
  store i32 %15, i32* %3, align 4
  br label %85

16:                                               ; preds = %10
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %16
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @IN6PTON_DOT, align 4
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %22
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 48
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8, i8* @IN6PTON_XDIGIT, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @IN6PTON_DIGIT, align 1
  %40 = sext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 48
  %45 = or i32 %41, %44
  store i32 %45, i32* %3, align 4
  br label %85

46:                                               ; preds = %32, %28
  %47 = load i8, i8* %4, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 97
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8, i8* %4, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 102
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8, i8* @IN6PTON_XDIGIT, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %4, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 97
  %60 = add nsw i32 %59, 10
  %61 = or i32 %56, %60
  store i32 %61, i32* %3, align 4
  br label %85

62:                                               ; preds = %50, %46
  %63 = load i8, i8* %4, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 65
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i8, i8* %4, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 70
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i8, i8* @IN6PTON_XDIGIT, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 65
  %76 = add nsw i32 %75, 10
  %77 = or i32 %72, %76
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %66, %62
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @IN6PTON_DELIM, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @IN6PTON_UNKNOWN, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %81, %70, %54, %36, %26, %20, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
