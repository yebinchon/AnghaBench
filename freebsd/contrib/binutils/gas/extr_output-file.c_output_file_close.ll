; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_output-file.c_output_file_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_output-file.c_output_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdoutput = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"can't close %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_file_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32*, i32** @stdoutput, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load i32*, i32** @stdoutput, align 8
  %9 = call i32 @bfd_close(i32* %8)
  store i32 %9, i32* %3, align 4
  store i32* null, i32** @stdoutput, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 (...) @bfd_get_error()
  %16 = call i32 @bfd_errmsg(i32 %15)
  %17 = call i32 @as_fatal(i32 %13, i8* %14, i32 %16)
  br label %18

18:                                               ; preds = %6, %12, %7
  ret void
}

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @as_fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
