; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_list_subnodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_list_subnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/* NULL pointer error */\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Nested too deep, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown tag 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @list_subnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_subnodes(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %69, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fdt_next_tag(i8* %15, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %61 [
    i32 131, label %19
    i32 129, label %52
    i32 130, label %59
    i32 128, label %60
  ]

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @fdt_get_name(i8* %20, i32 %21, i32* null)
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @puts(i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MAX_LEVEL, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %72

51:                                               ; preds = %43
  br label %69

52:                                               ; preds = %14
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %52
  br label %69

59:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %72

60:                                               ; preds = %14
  br label %69

61:                                               ; preds = %14
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %61
  store i32 1, i32* %3, align 4
  br label %72

69:                                               ; preds = %60, %58, %51
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %5, align 4
  br label %11

71:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %59, %49
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local i8* @fdt_get_name(i8*, i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
