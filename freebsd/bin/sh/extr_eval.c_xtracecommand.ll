; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_xtracecommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_xtracecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32, i8** }

@out2 = common dso_local global i32 0, align 4
@errout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arglist*, i32, i8**)* @xtracecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtracecommand(%struct.arglist* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.arglist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.arglist* %0, %struct.arglist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8 0, i8* %7, align 1
  %12 = call i8* (...) @ps4val()
  %13 = call i8* @expandstr(i8* %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  br label %20

18:                                               ; preds = %3
  %19 = call i8* (...) @ps4val()
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @out2str(i8* %21)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %65, %20
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.arglist*, %struct.arglist** %4, align 8
  %26 = getelementptr inbounds %struct.arglist, %struct.arglist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %23
  %30 = load %struct.arglist*, %struct.arglist** %4, align 8
  %31 = getelementptr inbounds %struct.arglist, %struct.arglist* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 @out2c(i8 signext 32)
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 61)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* @out2, align 4
  %58 = call i32 @outbin(i8* %50, i8* %56, i32 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @out2qstr(i8* %59)
  br label %64

61:                                               ; preds = %42
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @out2qstr(i8* %62)
  br label %64

64:                                               ; preds = %61, %47
  store i8 32, i8* %7, align 1
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %23

68:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %8, align 8
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 @out2c(i8 signext 32)
  br label %84

84:                                               ; preds = %82, %73
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @out2qstr(i8* %85)
  store i8 32, i8* %7, align 1
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %69

90:                                               ; preds = %69
  %91 = call i32 @out2c(i8 signext 10)
  %92 = call i32 @flushout(i32* @errout)
  ret void
}

declare dso_local i8* @expandstr(i8*) #1

declare dso_local i8* @ps4val(...) #1

declare dso_local i32 @out2str(i8*) #1

declare dso_local i32 @out2c(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @outbin(i8*, i8*, i32) #1

declare dso_local i32 @out2qstr(i8*) #1

declare dso_local i32 @flushout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
