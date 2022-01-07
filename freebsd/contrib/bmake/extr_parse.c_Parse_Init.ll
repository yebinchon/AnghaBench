; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mainNode = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@parseIncPath = common dso_local global i8* null, align 8
@sysIncPath = common dso_local global i8* null, align 8
@defIncPath = common dso_local global i8* null, align 8
@includes = common dso_local global i8* null, align 8
@targCmds = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Parse_Init() #0 {
  store i32* null, i32** @mainNode, align 8
  %1 = load i32, i32* @FALSE, align 4
  %2 = call i8* @Lst_Init(i32 %1)
  store i8* %2, i8** @parseIncPath, align 8
  %3 = load i32, i32* @FALSE, align 4
  %4 = call i8* @Lst_Init(i32 %3)
  store i8* %4, i8** @sysIncPath, align 8
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i8* @Lst_Init(i32 %5)
  store i8* %6, i8** @defIncPath, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i8* @Lst_Init(i32 %7)
  store i8* %8, i8** @includes, align 8
  ret void
}

declare dso_local i8* @Lst_Init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
