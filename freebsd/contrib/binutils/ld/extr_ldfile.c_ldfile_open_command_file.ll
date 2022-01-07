; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_command_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_command_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bfd_error_system_call = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%P%F: cannot open linker script file %s: %E\0A\00", align 1
@ldfile_input_filename = common dso_local global i8* null, align 8
@lineno = common dso_local global i32 0, align 4
@saved_script_handle = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldfile_open_command_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32* @ldfile_find_command_file(i8* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @bfd_error_system_call, align 4
  %10 = call i32 @bfd_set_error(i32 %9)
  %11 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @einfo(i32 %11, i8* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @lex_push_file(i32* %15, i8* %16)
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** @ldfile_input_filename, align 8
  store i32 1, i32* @lineno, align 4
  %19 = load i32*, i32** %3, align 8
  store i32* %19, i32** @saved_script_handle, align 8
  ret void
}

declare dso_local i32* @ldfile_find_command_file(i8*, i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @lex_push_file(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
