; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_breakup_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_breakup_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @breakup_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakup_args(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %6, align 8
  store i8 0, i8* %7, align 1
  br label %9

9:                                                ; preds = %86, %2
  store i8 0, i8* %7, align 1
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br label %25

25:                                               ; preds = %20, %15, %10
  %26 = phi i1 [ true, %15 ], [ true, %10 ], [ %24, %20 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  br label %10

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %89

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 34
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 34)
  %46 = icmp ne i8* %45, null
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  br label %50

50:                                               ; preds = %41, %36
  %51 = load i8*, i8** %6, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %4, align 8
  store i8* %51, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %7, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 34)
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i8*, i8** %6, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8, i8* %7, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 32)
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 9)
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %6, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 10)
  store i8* %80, i8** %6, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %6, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %5, align 8
  br label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 0, i8* %87, align 1
  br label %9

89:                                               ; preds = %84, %35
  %90 = load i8**, i8*** %4, align 8
  store i8* null, i8** %90, align 8
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
