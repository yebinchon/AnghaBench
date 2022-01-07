; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_checkend.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_checkend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEOF = common dso_local global i32 0, align 4
@plinno = common dso_local global i32 0, align 4
@doprompt = common dso_local global i32 0, align 4
@needprompt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @checkend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkend(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %15, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @pgetc()
  store i32 %16, i32* %4, align 4
  br label %12

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %42, %24
  %28 = call i32 (...) @pgetc()
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %27

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PEOF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %66

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* @PEOF, align 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @plinno, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @plinno, align 4
  %64 = load i32, i32* @doprompt, align 4
  store i32 %64, i32* @needprompt, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %78

66:                                               ; preds = %52, %49
  %67 = call i32 (...) @pungetc()
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = ptrtoint i8* %70 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @pushstring(i8* %69, i32 %76, i32* null)
  br label %78

78:                                               ; preds = %66, %65
  br label %93

79:                                               ; preds = %18
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @PEOF, align 4
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @plinno, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @plinno, align 4
  %91 = load i32, i32* @doprompt, align 4
  store i32 %91, i32* @needprompt, align 4
  br label %92

92:                                               ; preds = %87, %82, %79
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @pgetc(...) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @pushstring(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
