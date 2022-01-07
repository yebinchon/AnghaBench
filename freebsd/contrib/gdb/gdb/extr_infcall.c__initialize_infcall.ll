; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c__initialize_infcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c__initialize_infcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"coerce-float-to-double\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@coerce_float_to_double_p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [471 x i8] c"Set coercion of floats to doubles when calling functions\0AVariables of type float should generally be converted to doubles before\0Acalling an unprototyped function, and left alone when calling a prototyped\0Afunction.  However, some older debug info formats do not provide enough\0Ainformation to determine that a function is prototyped.  If this flag is\0Aset, GDB will perform the conversion for a function it considers\0Aunprototyped.\0AThe default is to perform the conversion.\0A\00", align 1
@.str.2 = private unnamed_addr constant [472 x i8] c"Show coercion of floats to doubles when calling functions\0AVariables of type float should generally be converted to doubles before\0Acalling an unprototyped function, and left alone when calling a prototyped\0Afunction.  However, some older debug info formats do not provide enough\0Ainformation to determine that a function is prototyped.  If this flag is\0Aset, GDB will perform the conversion for a function it considers\0Aunprototyped.\0AThe default is to perform the conversion.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"unwindonsignal\00", align 1
@no_class = common dso_local global i32 0, align 4
@unwind_on_signal_p = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [363 x i8] c"Set unwinding of stack if a signal is received while in a call dummy.\0AThe unwindonsignal lets the user determine what gdb should do if a signal\0Ais received while in a function called from gdb (call dummy).  If set, gdb\0Aunwinds the stack and restore the context to what as it was before the call.\0AThe default is to stop in the frame where the signal was received.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_infcall() #0 {
  %1 = load i32, i32* @class_obscure, align 4
  %2 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %1, i32* @coerce_float_to_double_p, i8* getelementptr inbounds ([471 x i8], [471 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([472 x i8], [472 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  %3 = load i32, i32* @no_class, align 4
  %4 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %3, i32* @unwind_on_signal_p, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  ret void
}

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
