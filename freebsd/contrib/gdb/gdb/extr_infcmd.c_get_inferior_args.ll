; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_get_inferior_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_get_inferior_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_argc = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@inferior_argv = common dso_local global i32 0, align 4
@inferior_args = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_inferior_args() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i64, i64* @inferior_argc, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = load i64, i64* @inferior_argc, align 8
  %8 = load i32, i32* @inferior_argv, align 4
  %9 = call i8* @gdbarch_construct_inferior_arguments(i32 %6, i64 %7, i32 %8)
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @set_inferior_args(i8* %10)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @xfree(i8* %12)
  br label %14

14:                                               ; preds = %5, %0
  %15 = load i8*, i8** @inferior_args, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** @inferior_args, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** @inferior_args, align 8
  ret i8* %20
}

declare dso_local i8* @gdbarch_construct_inferior_arguments(i32, i64, i32) #1

declare dso_local i8* @set_inferior_args(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
