; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_symbolic_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_symbolic_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dSP = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@PUTBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"main::define_symbolic_value\00", align 1
@G_SCALAR = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @define_symbolic_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_symbolic_value(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @dSP, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @eval_flag(i8* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @ENTER, align 4
  %14 = load i32, i32* @SAVETMPS, align 4
  %15 = load i32, i32* @SP, align 4
  %16 = call i32 @PUSHMARK(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @newSVpv(i8* %17, i32 0)
  %19 = call i32 @sv_2mortal(i32 %18)
  %20 = call i32 @XPUSHs(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @newSVpv(i8* %21, i32 0)
  %23 = call i32 @sv_2mortal(i32 %22)
  %24 = call i32 @XPUSHs(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @newSVuv(i64 %25)
  %27 = call i32 @sv_2mortal(i32 %26)
  %28 = call i32 @XPUSHs(i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @newSVpv(i8* %29, i32 0)
  %31 = call i32 @sv_2mortal(i32 %30)
  %32 = call i32 @XPUSHs(i32 %31)
  %33 = load i32, i32* @PUTBACK, align 4
  %34 = call i64 @get_cv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @G_SCALAR, align 4
  %38 = call i32 @call_pv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %4
  %40 = load i32, i32* @SPAGAIN, align 4
  %41 = load i32, i32* @PUTBACK, align 4
  %42 = load i32, i32* @FREETMPS, align 4
  %43 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local i64 @eval_flag(i8*) #1

declare dso_local i32 @PUSHMARK(i32) #1

declare dso_local i32 @XPUSHs(i32) #1

declare dso_local i32 @sv_2mortal(i32) #1

declare dso_local i32 @newSVpv(i8*, i32) #1

declare dso_local i32 @newSVuv(i64) #1

declare dso_local i64 @get_cv(i8*, i32) #1

declare dso_local i32 @call_pv(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
