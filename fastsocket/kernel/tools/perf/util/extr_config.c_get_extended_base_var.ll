; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_get_extended_base_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_get_extended_base_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @get_extended_base_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_extended_base_var(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %16, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %71

13:                                               ; preds = %9
  %14 = call signext i8 (...) @get_next_char()
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %9, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 34
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %71

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 46, i8* %29, align 1
  br label %30

30:                                               ; preds = %63, %24
  %31 = call signext i8 (...) @get_next_char()
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %71

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %64

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = call signext i8 (...) @get_next_char()
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %71

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %8, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MAXNAME, align 4
  %60 = sdiv i32 %59, 2
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %71

63:                                               ; preds = %50
  br label %30

64:                                               ; preds = %39
  %65 = call signext i8 (...) @get_next_char()
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 93
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %68, %62, %48, %35, %23, %12
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local signext i8 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
