; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isp = common dso_local global i32* null, align 8
@tos = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"print: illegal print destination `%ld'\0A\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print() #0 {
  %1 = load i32*, i32** @isp, align 8
  %2 = load i32, i32* %1, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @tos, align 4
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @write_buffer(i32 %5, i32 %6)
  br label %22

8:                                                ; preds = %0
  %9 = load i32*, i32** @isp, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* @tos, align 4
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @write_buffer(i32 %13, i32 %14)
  br label %21

16:                                               ; preds = %8
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32*, i32** @isp, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32*, i32** @isp, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 -1
  store i32* %24, i32** @isp, align 8
  %25 = load i32, i32* @tos, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @tos, align 4
  %27 = call i32 (...) @icheck_range()
  %28 = call i32 (...) @check_range()
  %29 = load i32, i32* @pc, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @pc, align 4
  ret void
}

declare dso_local i32 @write_buffer(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @icheck_range(...) #1

declare dso_local i32 @check_range(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
