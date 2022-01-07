; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_setopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_setopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }

@yypcb = common dso_local global i32 0, align 4
@DTRACEACT_LIBACT = common dso_local global i8* null, align 8
@DT_ACT_SETOPT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*)* @dt_action_setopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_setopt(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_7__* @dt_stmt_action(i32* %16, i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  %19 = load i32, i32* @yypcb, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = call i32 @dt_cg(i32 %19, %struct.TYPE_8__* %20)
  %22 = load i32, i32* @yypcb, align 4
  %23 = call i8* @dt_as(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @DTRACEACT_LIBACT, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @DT_ACT_SETOPT, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_7__* @dt_stmt_action(i32* %32, i32* %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = load i8*, i8** @DTRACEACT_LIBACT, align 8
  %40 = call i32 @dt_action_difconst(%struct.TYPE_7__* %38, i32 0, i8* %39)
  br label %52

41:                                               ; preds = %3
  %42 = load i32, i32* @yypcb, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = call i32 @dt_cg(i32 %42, %struct.TYPE_8__* %43)
  %45 = load i32, i32* @yypcb, align 4
  %46 = call i8* @dt_as(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @DTRACEACT_LIBACT, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %41, %37
  %53 = load i8*, i8** @DT_ACT_SETOPT, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @dt_stmt_action(i32*, i32*) #1

declare dso_local i32 @dt_cg(i32, %struct.TYPE_8__*) #1

declare dso_local i8* @dt_as(i32) #1

declare dso_local i32 @dt_action_difconst(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
