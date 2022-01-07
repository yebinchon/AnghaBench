; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_commandtext.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_commandtext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i32 }

@MAXCMDTEXT = common dso_local global i64 0, align 8
@cmdnextc = common dso_local global i8* null, align 8
@cmdnleft = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @commandtext(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca i8*, align 8
  store %union.node* %0, %union.node** %2, align 8
  %4 = load i64, i64* @MAXCMDTEXT, align 8
  %5 = call i8* @ckmalloc(i64 %4)
  store i8* %5, i8** %3, align 8
  store i8* %5, i8** @cmdnextc, align 8
  %6 = load i64, i64* @MAXCMDTEXT, align 8
  %7 = sub nsw i64 %6, 4
  store i64 %7, i64* @cmdnleft, align 8
  %8 = load %union.node*, %union.node** %2, align 8
  %9 = call i32 @cmdtxt(%union.node* %8)
  %10 = load i8*, i8** @cmdnextc, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

declare dso_local i8* @ckmalloc(i64) #1

declare dso_local i32 @cmdtxt(%union.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
