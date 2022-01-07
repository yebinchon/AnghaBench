; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libnvpair/extr_libnvpair.c_prtctl_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libnvpair/extr_libnvpair.c_prtctl_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvlist_prtctl = type { i32, i8*, i8*, i8*, %struct.nvlist_printops*, %struct.nvlist_printops*, i64, i64, i32, i32* }
%struct.nvlist_printops = type { i32 }

@NVLIST_INDENT_TABBED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@defprtops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.nvlist_prtctl*, %struct.nvlist_printops*)* @prtctl_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prtctl_defaults(i32* %0, %struct.nvlist_prtctl* %1, %struct.nvlist_printops* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nvlist_prtctl*, align 8
  %6 = alloca %struct.nvlist_printops*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nvlist_prtctl* %1, %struct.nvlist_prtctl** %5, align 8
  store %struct.nvlist_printops* %2, %struct.nvlist_printops** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %9 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %8, i32 0, i32 9
  store i32* %7, i32** %9, align 8
  %10 = load i32, i32* @NVLIST_INDENT_TABBED, align 4
  %11 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %12 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %14 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %16 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %18 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %20 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %22 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %24 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %26 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %25, i32 0, i32 5
  store %struct.nvlist_printops* bitcast (i32* @defprtops to %struct.nvlist_printops*), %struct.nvlist_printops** %26, align 8
  %27 = load %struct.nvlist_printops*, %struct.nvlist_printops** %6, align 8
  %28 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %5, align 8
  %29 = getelementptr inbounds %struct.nvlist_prtctl, %struct.nvlist_prtctl* %28, i32 0, i32 4
  store %struct.nvlist_printops* %27, %struct.nvlist_printops** %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
