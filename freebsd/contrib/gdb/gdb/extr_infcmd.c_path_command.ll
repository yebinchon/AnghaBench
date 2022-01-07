; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_path_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_path_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_environ = common dso_local global i32 0, align 4
@path_var_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @path_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @dont_repeat()
  %8 = load i32, i32* @inferior_environ, align 4
  %9 = load i32, i32* @path_var_name, align 4
  %10 = call i8* @get_in_environ(i32 %8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @xstrdup(i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @mod_path(i8* %17, i8** %5)
  %19 = load i32, i32* @inferior_environ, align 4
  %20 = load i32, i32* @path_var_name, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @set_in_environ(i32 %19, i32 %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @xfree(i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @path_info(i8* null, i32 %28)
  br label %30

30:                                               ; preds = %27, %14
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i8* @get_in_environ(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @mod_path(i8*, i8**) #1

declare dso_local i32 @set_in_environ(i32, i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @path_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
