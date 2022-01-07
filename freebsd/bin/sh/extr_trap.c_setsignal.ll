; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_setsignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_setsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i64 }

@SIG_DFL = common dso_local global i64 0, align 8
@trap = common dso_local global i8** null, align 8
@rootshell = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@sigmode = common dso_local global i8* null, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@mflag = common dso_local global i64 0, align 8
@SIGTTIN = common dso_local global i32 0, align 4
@S_HARD_IGN = common dso_local global i8 0, align 1
@S_RESET = common dso_local global i8 0, align 1
@onsig = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setsignal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @SIG_DFL, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i8**, i8*** @trap, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 129, i32* %3, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 130, i32* %3, align 4
  br label %22

21:                                               ; preds = %15
  store i32 128, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  switch i32 %27, label %38 [
    i32 135, label %28
    i32 134, label %29
    i32 133, label %30
  ]

28:                                               ; preds = %26
  store i32 130, i32* %3, align 4
  br label %38

29:                                               ; preds = %26
  store i32 130, i32* %3, align 4
  br label %38

30:                                               ; preds = %26
  %31 = load i32, i32* @rootshell, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @iflag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 128, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %30
  br label %38

38:                                               ; preds = %26, %37, %29, %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** @sigmode, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @getsigaction(i32 %49, i64* %4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %113

53:                                               ; preds = %48
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @SIG_IGN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i64, i64* @mflag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %2, align 4
  %62 = icmp eq i32 %61, 132
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @SIGTTIN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %68, 131
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %63, %60
  %71 = load i8*, i8** %6, align 8
  store i8 -128, i8* %71, align 1
  br label %75

72:                                               ; preds = %67, %57
  %73 = load i8, i8* @S_HARD_IGN, align 1
  %74 = load i8*, i8** %6, align 8
  store i8 %73, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %70
  br label %79

76:                                               ; preds = %53
  %77 = load i8, i8* @S_RESET, align 1
  %78 = load i8*, i8** %6, align 8
  store i8 %77, i8* %78, align 1
  br label %79

79:                                               ; preds = %76, %75
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* @S_HARD_IGN, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %80
  br label %113

94:                                               ; preds = %87
  %95 = load i32, i32* %3, align 4
  switch i32 %95, label %102 [
    i32 129, label %96
    i32 130, label %98
    i32 128, label %100
  ]

96:                                               ; preds = %94
  %97 = load i64, i64* @SIG_DFL, align 8
  store i64 %97, i64* %4, align 8
  br label %102

98:                                               ; preds = %94
  %99 = load i64, i64* @onsig, align 8
  store i64 %99, i64* %4, align 8
  br label %102

100:                                              ; preds = %94
  %101 = load i64, i64* @SIG_IGN, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %94, %100, %98, %96
  %103 = load i32, i32* %3, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %6, align 8
  store i8 %104, i8* %105, align 1
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %110 = call i32 @sigemptyset(i32* %109)
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @sigaction(i32 %111, %struct.sigaction* %5, i32* null)
  br label %113

113:                                              ; preds = %102, %93, %52
  ret void
}

declare dso_local i32 @getsigaction(i32, i64*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
