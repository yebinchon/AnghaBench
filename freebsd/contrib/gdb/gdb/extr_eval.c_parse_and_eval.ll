; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_parse_and_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_parse_and_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @parse_and_eval(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.expression*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.expression* @parse_expression(i8* %6)
  store %struct.expression* %7, %struct.expression** %3, align 8
  %8 = load i32, i32* @free_current_contents, align 4
  %9 = call %struct.cleanup* @make_cleanup(i32 %8, %struct.expression** %3)
  store %struct.cleanup* %9, %struct.cleanup** %5, align 8
  %10 = load %struct.expression*, %struct.expression** %3, align 8
  %11 = call %struct.value* @evaluate_expression(%struct.expression* %10)
  store %struct.value* %11, %struct.value** %4, align 8
  %12 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %13 = call i32 @do_cleanups(%struct.cleanup* %12)
  %14 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %14
}

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
