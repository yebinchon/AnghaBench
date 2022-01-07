; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_casematch.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_casematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nodelist* }
%struct.nodelist = type { i32 }
%struct.stackmark = type { i32 }

@expdest = common dso_local global i32 0, align 4
@EXP_TILDE = common dso_local global i32 0, align 4
@EXP_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @casematch(%union.node* %0, i8* %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stackmark, align 4
  %6 = alloca %struct.nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %union.node* %0, %union.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @setstackmark(%struct.stackmark* %5)
  %10 = load %union.node*, %union.node** %3, align 8
  %11 = bitcast %union.node* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.nodelist*, %struct.nodelist** %12, align 8
  store %struct.nodelist* %13, %struct.nodelist** %6, align 8
  %14 = load i32, i32* @expdest, align 4
  %15 = call i32 @STARTSTACKSTR(i32 %14)
  %16 = load %union.node*, %union.node** %3, align 8
  %17 = bitcast %union.node* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EXP_TILDE, align 4
  %21 = load i32, i32* @EXP_CASE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @argstr(i32 %19, %struct.nodelist** %6, i32 %22, i32* null)
  %24 = load i32, i32* @expdest, align 4
  %25 = call i32 @STPUTC(i8 signext 0, i32 %24)
  %26 = load i32, i32* @expdest, align 4
  %27 = call i8* @grabstackstr(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @patmatch(i8* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = call i32 @popstackmark(%struct.stackmark* %5)
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @STARTSTACKSTR(i32) #1

declare dso_local i32 @argstr(i32, %struct.nodelist**, i32, i32*) #1

declare dso_local i32 @STPUTC(i8 signext, i32) #1

declare dso_local i8* @grabstackstr(i32) #1

declare dso_local i32 @patmatch(i8*, i8*) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
