; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgrep = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"[-LSfilnoqvx] [-d delim]\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[-signal] [-ILfilnovx]\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [174 x i8] c"usage: %s %s [-F pidfile] [-G gid] [-M core] [-N system]\0A             [-P ppid] [-U uid] [-c class] [-g pgrp] [-j jail]\0A             [-s sid] [-t tty] [-u euid] pattern ...\0A\00", align 1
@STATUS_BADUSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @pgrep, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* @stderr, align 4
  %8 = call i8* (...) @getprogname()
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.2, i64 0, i64 0), i8* %8, i8* %9)
  %11 = load i32, i32* @STATUS_BADUSAGE, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
