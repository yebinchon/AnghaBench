; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRexpect = common dso_local global i32 0, align 4
@RRexpect = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@exit_code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* @SRexpect, align 4
  store i32 -1, i32* @RRexpect, align 4
  %5 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %5, i32* @exit_code, align 4
  %6 = call i32 (...) @set_signals()
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getargs(i32 %7, i8** %8)
  %10 = call i32 (...) @open_files()
  %11 = call i32 (...) @reader()
  %12 = call i32 (...) @lr0()
  %13 = call i32 (...) @lalr()
  %14 = call i32 (...) @make_parser()
  %15 = call i32 (...) @graph()
  %16 = call i32 (...) @finalize_closure()
  %17 = call i32 (...) @verbose()
  %18 = call i32 (...) @output()
  %19 = load i32, i32* @exit_code, align 4
  %20 = call i32 @done(i32 %19)
  ret i32 0
}

declare dso_local i32 @set_signals(...) #1

declare dso_local i32 @getargs(i32, i8**) #1

declare dso_local i32 @open_files(...) #1

declare dso_local i32 @reader(...) #1

declare dso_local i32 @lr0(...) #1

declare dso_local i32 @lalr(...) #1

declare dso_local i32 @make_parser(...) #1

declare dso_local i32 @graph(...) #1

declare dso_local i32 @finalize_closure(...) #1

declare dso_local i32 @verbose(...) #1

declare dso_local i32 @output(...) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
