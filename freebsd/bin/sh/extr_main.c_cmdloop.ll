; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_cmdloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_cmdloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i32 }
%struct.stackmark = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cmdloop(%d) called\0A\00", align 1
@pendingsig = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@SHOWJOBS_DEFAULT = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@NEOF = common dso_local global %union.node* null, align 8
@Iflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\0AUse \22exit\22 to leave shell.\0A\00", align 1
@nflag = common dso_local global i64 0, align 8
@job_warning = common dso_local global i32 0, align 4
@evalskip = common dso_local global i64 0, align 8
@SKIPRETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cmdloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdloop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.node*, align 8
  %4 = alloca %struct.stackmark, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @TRACE(i8* %9)
  %11 = call i32 @setstackmark(%struct.stackmark* %4)
  br label %12

12:                                               ; preds = %80, %1
  %13 = load i64, i64* @pendingsig, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @dotrap()
  br label %17

17:                                               ; preds = %15, %12
  store i32 0, i32* %5, align 4
  %18 = load i64, i64* @iflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SHOWJOBS_DEFAULT, align 4
  %27 = call i32 @showjobs(i32 1, i32 %26)
  %28 = call i32 @chkmail(i32 0)
  %29 = call i32 @flushout(i32* @output)
  br label %30

30:                                               ; preds = %23, %20, %17
  %31 = load i32, i32* %5, align 4
  %32 = call %union.node* @parsecmd(i32 %31)
  store %union.node* %32, %union.node** %3, align 8
  %33 = load %union.node*, %union.node** %3, align 8
  %34 = load %union.node*, %union.node** @NEOF, align 8
  %35 = icmp eq %union.node* %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 50
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  br label %81

43:                                               ; preds = %39
  %44 = call i32 (...) @stoppedjobs()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @Iflag, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %81

50:                                               ; preds = %46
  %51 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %69

55:                                               ; preds = %30
  %56 = load %union.node*, %union.node** %3, align 8
  %57 = icmp ne %union.node* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* @nflag, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @job_warning, align 4
  %63 = icmp eq i32 %62, 2
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  store i32 %65, i32* @job_warning, align 4
  store i32 0, i32* %6, align 4
  %66 = load %union.node*, %union.node** %3, align 8
  %67 = call i32 @evaltree(%union.node* %66, i32 0)
  br label %68

68:                                               ; preds = %61, %58, %55
  br label %69

69:                                               ; preds = %68, %52
  %70 = call i32 @popstackmark(%struct.stackmark* %4)
  %71 = call i32 @setstackmark(%struct.stackmark* %4)
  %72 = load i64, i64* @evalskip, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @evalskip, align 8
  %76 = load i64, i64* @SKIPRETURN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* @evalskip, align 8
  br label %79

79:                                               ; preds = %78, %74
  br label %81

80:                                               ; preds = %69
  br label %12

81:                                               ; preds = %79, %49, %42
  %82 = call i32 @popstackmark(%struct.stackmark* %4)
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @dotrap(...) #1

declare dso_local i32 @showjobs(i32, i32) #1

declare dso_local i32 @chkmail(i32) #1

declare dso_local i32 @flushout(i32*) #1

declare dso_local %union.node* @parsecmd(i32) #1

declare dso_local i32 @stoppedjobs(...) #1

declare dso_local i32 @out2fmt_flush(i8*) #1

declare dso_local i32 @evaltree(%union.node*, i32) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
