; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_endcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_endcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@dt_endcontext.cvars = internal constant [6 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"probeprov\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"probemod\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"probefunc\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"probename\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@_dtrace_defattr = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_endcontext(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* @dt_endcontext.cvars, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* @dt_endcontext.cvars, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.TYPE_7__* @dt_idhash_lookup(i32 %14, i8* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32, i32* @_dtrace_defattr, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @dt_idhash_lookup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
