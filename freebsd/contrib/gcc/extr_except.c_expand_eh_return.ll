; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_expand_eh_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_expand_eh_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@current_function_calls_eh_return = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"__builtin_eh_return not supported on this target\00", align 1
@EH_RETURN_HANDLER_RTX = common dso_local global i32 0, align 4
@EH_RETURN_STACKADJ_RTX = common dso_local global i32 0, align 4
@HAVE_eh_return = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_eh_return() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %23

9:                                                ; preds = %0
  store i32 1, i32* @current_function_calls_eh_return, align 4
  %10 = call i32 (...) @gen_label_rtx()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @emit_jump(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @emit_label(i32 %17)
  %19 = call i32 (...) @clobber_return_register()
  %20 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @emit_label(i32 %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_jump(i32) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @clobber_return_register(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
