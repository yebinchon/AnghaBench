; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_matching_cpu_name_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_matching_cpu_name_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @mips_matching_cpu_name_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_matching_cpu_name_p(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @mips_strict_matching_cpu_name_p(i8* %6, i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %76

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call signext i8 @TOLOWER(i8 signext %13)
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 114
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @ISDIGIT(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %76

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call signext i8 @TOLOWER(i8 signext %29)
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 118
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = call signext i8 @TOLOWER(i8 signext %36)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 114
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %4, align 8
  br label %72

43:                                               ; preds = %33, %26
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call signext i8 @TOLOWER(i8 signext %46)
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 114
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = call signext i8 @TOLOWER(i8 signext %53)
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 109
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %4, align 8
  br label %71

60:                                               ; preds = %50, %43
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = call signext i8 @TOLOWER(i8 signext %63)
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 114
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @mips_strict_matching_cpu_name_p(i8* %73, i8* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %25, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mips_strict_matching_cpu_name_p(i8*, i8*) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
