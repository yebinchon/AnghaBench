; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_symbolic_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_symbolic_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dSP = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@PUTBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"main::define_symbolic_field\00", align 1
@G_SCALAR = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @define_symbolic_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_symbolic_field(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @dSP, align 4
  %6 = load i32, i32* @ENTER, align 4
  %7 = load i32, i32* @SAVETMPS, align 4
  %8 = load i32, i32* @SP, align 4
  %9 = call i32 @PUSHMARK(i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @newSVpv(i8* %10, i32 0)
  %12 = call i32 @sv_2mortal(i32 %11)
  %13 = call i32 @XPUSHs(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @newSVpv(i8* %14, i32 0)
  %16 = call i32 @sv_2mortal(i32 %15)
  %17 = call i32 @XPUSHs(i32 %16)
  %18 = load i32, i32* @PUTBACK, align 4
  %19 = call i64 @get_cv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @G_SCALAR, align 4
  %23 = call i32 @call_pv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @SPAGAIN, align 4
  %26 = load i32, i32* @PUTBACK, align 4
  %27 = load i32, i32* @FREETMPS, align 4
  %28 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local i32 @PUSHMARK(i32) #1

declare dso_local i32 @XPUSHs(i32) #1

declare dso_local i32 @sv_2mortal(i32) #1

declare dso_local i32 @newSVpv(i8*, i32) #1

declare dso_local i64 @get_cv(i8*, i32) #1

declare dso_local i32 @call_pv(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
