; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_mac_pton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_mac_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"0123456789abcdefABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_pton(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = mul nsw i32 3, %9
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @strchr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %91

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 3
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @strchr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %91

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %47, 3
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 58
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %91

56:                                               ; preds = %45, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %15

60:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @hex_to_bin(i8 signext %71)
  %73 = shl i32 %72, 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @hex_to_bin(i8 signext %80)
  %82 = or i32 %73, %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %65
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %61

90:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %55, %39, %28, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @hex_to_bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
