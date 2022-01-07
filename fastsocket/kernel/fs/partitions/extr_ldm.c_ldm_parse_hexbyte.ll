; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_hexbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_hexbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ldm_parse_hexbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_hexbyte(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 %9, 48
  store i32 %10, i32* %4, align 4
  %11 = icmp ule i32 %10, 9
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %5, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 97
  store i32 %19, i32* %4, align 4
  %20 = icmp ule i32 %19, 5
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 10
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %14
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 65
  store i32 %29, i32* %4, align 4
  %30 = icmp ule i32 %29, 5
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 10
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %75

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 4
  store i32 %39, i32* %5, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 48
  store i32 %44, i32* %4, align 4
  %45 = icmp ule i32 %44, 9
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %2, align 4
  br label %75

50:                                               ; preds = %37
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 97
  store i32 %55, i32* %4, align 4
  %56 = icmp ule i32 %55, 5
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 10
  %61 = or i32 %58, %60
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %50
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 65
  store i32 %67, i32* %4, align 4
  %68 = icmp ule i32 %67, 5
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 10
  %73 = or i32 %70, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %69, %57, %46, %34
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
