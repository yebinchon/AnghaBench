; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_is_C_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_is_C_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_C_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_C_identifier(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 34
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @isalpha(i32 %17) #2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 95
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 36
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %78

27:                                               ; preds = %23, %20, %12
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 34
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @isalnum(i32 %35) #2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 95
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %78

45:                                               ; preds = %41, %38, %34
  br label %28

46:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %78

47:                                               ; preds = %1
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @isalpha(i32 %48) #2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 95
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 36
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %78

58:                                               ; preds = %54, %51, %47
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @isalnum(i32 %66) #2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 95
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 36
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %78

76:                                               ; preds = %72, %69, %65
  br label %59

77:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %75, %57, %46, %44, %26
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
