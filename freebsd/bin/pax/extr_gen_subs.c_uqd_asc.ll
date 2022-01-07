; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_uqd_asc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_uqd_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uqd_asc(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @HEX, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp uge i8* %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %11, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = trunc i32 %30 to i8
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 48, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  br label %46

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 10
  %40 = trunc i32 %39 to i8
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 97, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %10, align 8
  store i8 %43, i8* %44, align 1
  br label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %52

51:                                               ; preds = %46
  br label %21

52:                                               ; preds = %50, %21
  br label %73

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp uge i8* %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 7
  %61 = trunc i32 %60 to i8
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 48, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %10, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 3
  store i32 %68, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %72

71:                                               ; preds = %58
  br label %54

72:                                               ; preds = %70, %54
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = icmp uge i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %80, i8** %10, align 8
  store i8 48, i8* %79, align 1
  br label %74

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -1, i32* %5, align 4
  br label %86

85:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
