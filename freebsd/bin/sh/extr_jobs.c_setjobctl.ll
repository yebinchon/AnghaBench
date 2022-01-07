; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_setjobctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_setjobctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jobctl = common dso_local global i32 0, align 4
@rootshell = common dso_local global i64 0, align 8
@ttyfd = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@initialpgrp = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@rootpid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setjobctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @jobctl, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @rootshell, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %119

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %99

14:                                               ; preds = %11
  %15 = load i32, i32* @ttyfd, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ttyfd, align 4
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @_PATH_TTY, align 4
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_CLOEXEC, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @open(i32 %21, i32 %24)
  store i32 %25, i32* @ttyfd, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @isatty(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %28

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %47 = call i32 @fcntl(i32 %45, i32 %46, i32 10)
  store i32 %47, i32* @ttyfd, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %41
  %50 = call i32 (...) @jobctl_notty()
  br label %119

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* @ttyfd, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* @ttyfd, align 4
  %57 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %58 = call i32 @fcntl(i32 %56, i32 %57, i32 10)
  store i32 %58, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @jobctl_notty()
  br label %119

62:                                               ; preds = %55
  %63 = load i32, i32* @ttyfd, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* @ttyfd, align 4
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @ttyfd, align 4
  %69 = call i32 @tcgetpgrp(i32 %68)
  store i32 %69, i32* @initialpgrp, align 4
  %70 = load i32, i32* @initialpgrp, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (...) @jobctl_notty()
  br label %119

74:                                               ; preds = %67
  %75 = load i32, i32* @initialpgrp, align 4
  %76 = call i32 (...) @getpgrp()
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* @iflag, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  store i32 -1, i32* @initialpgrp, align 4
  %82 = call i32 (...) @jobctl_notty()
  br label %119

83:                                               ; preds = %78
  %84 = load i32, i32* @SIGTTIN, align 4
  %85 = call i32 @kill(i32 0, i32 %84)
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %83, %86
  %88 = load i32, i32* @SIGTSTP, align 4
  %89 = call i32 @setsignal(i32 %88)
  %90 = load i32, i32* @SIGTTOU, align 4
  %91 = call i32 @setsignal(i32 %90)
  %92 = load i32, i32* @SIGTTIN, align 4
  %93 = call i32 @setsignal(i32 %92)
  %94 = load i32, i32* @rootpid, align 4
  %95 = call i32 @setpgid(i32 0, i32 %94)
  %96 = load i32, i32* @ttyfd, align 4
  %97 = load i32, i32* @rootpid, align 4
  %98 = call i32 @tcsetpgrp(i32 %96, i32 %97)
  br label %117

99:                                               ; preds = %11
  %100 = load i32, i32* @initialpgrp, align 4
  %101 = call i32 @setpgid(i32 0, i32 %100)
  %102 = load i32, i32* @ttyfd, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @ttyfd, align 4
  %106 = load i32, i32* @initialpgrp, align 4
  %107 = call i32 @tcsetpgrp(i32 %105, i32 %106)
  %108 = load i32, i32* @ttyfd, align 4
  %109 = call i32 @close(i32 %108)
  store i32 -1, i32* @ttyfd, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* @SIGTSTP, align 4
  %112 = call i32 @setsignal(i32 %111)
  %113 = load i32, i32* @SIGTTOU, align 4
  %114 = call i32 @setsignal(i32 %113)
  %115 = load i32, i32* @SIGTTIN, align 4
  %116 = call i32 @setsignal(i32 %115)
  br label %117

117:                                              ; preds = %110, %87
  %118 = load i32, i32* %2, align 4
  store i32 %118, i32* @jobctl, align 4
  br label %119

119:                                              ; preds = %117, %81, %72, %60, %49, %10
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @jobctl_notty(...) #1

declare dso_local i32 @tcgetpgrp(i32) #1

declare dso_local i32 @getpgrp(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @setsignal(i32) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @tcsetpgrp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
