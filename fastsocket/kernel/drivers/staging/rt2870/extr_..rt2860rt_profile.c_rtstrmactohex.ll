; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860rt_profile.c_rtstrmactohex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860rt_profile.c_rtstrmactohex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_MAC_ADDR_STR_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtstrmactohex(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = load i32, i32* @ETH_MAC_ADDR_STR_LEN, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %58, %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  store i8 0, i8* %28, align 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @isxdigit(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isxdigit(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %34, %30
  br label %59

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = call i32 @AtoH(i8* %47, i8* %52, i32 1)
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %59

58:                                               ; preds = %46
  br label %18

59:                                               ; preds = %57, %45, %18
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @TRUE, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @FALSE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @AtoH(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
