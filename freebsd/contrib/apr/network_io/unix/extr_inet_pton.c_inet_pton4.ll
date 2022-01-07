; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* %18, i8** %11, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %70, %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = load i8*, i8** %12, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = sub i64 %35, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %37 = trunc i64 %36 to i32
  %38 = add i32 %33, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ugt i32 %39, 255
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

42:                                               ; preds = %29
  %43 = load i32, i32* %13, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %11, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

53:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %42
  br label %70

55:                                               ; preds = %25
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  store i8 0, i8* %67, align 1
  store i32 0, i32* %6, align 4
  br label %69

68:                                               ; preds = %58, %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %54
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @INADDRSZ, align 4
  %78 = call i32 @memcpy(i8* %76, i8* %18, i32 %77)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %74, %68, %64, %52, %41
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
