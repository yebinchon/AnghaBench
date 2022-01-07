; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_matching_cpu_name_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_matching_cpu_name_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @mips_matching_cpu_name_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_matching_cpu_name_p(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @mips_strict_matching_cpu_name_p(i8* %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %3, align 8
  br label %78

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call signext i8 @TOLOWER(i8 signext %14)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 114
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @ISDIGIT(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %3, align 8
  br label %78

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = call signext i8 @TOLOWER(i8 signext %31)
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 118
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @TOLOWER(i8 signext %38)
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 114
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %4, align 8
  br label %74

45:                                               ; preds = %35, %28
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = call signext i8 @TOLOWER(i8 signext %48)
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 114
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = call signext i8 @TOLOWER(i8 signext %55)
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 109
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %4, align 8
  br label %73

62:                                               ; preds = %52, %45
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = call signext i8 @TOLOWER(i8 signext %65)
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 114
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @mips_strict_matching_cpu_name_p(i8* %75, i8* %76)
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %74, %26, %10
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @mips_strict_matching_cpu_name_p(i8*, i8*) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
