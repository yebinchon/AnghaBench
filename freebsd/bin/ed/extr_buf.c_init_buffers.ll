; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_init_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@stdinbuf = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@buffer_head = common dso_local global i32 0, align 4
@ctab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_buffers() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @stdin, align 4
  %3 = load i32, i32* @stdinbuf, align 4
  %4 = call i32 @setbuffer(i32 %2, i32 %3, i32 1)
  %5 = load i32, i32* @stdout, align 4
  %6 = load i32, i32* @_IOLBF, align 4
  %7 = call i32 @setvbuf(i32 %5, i32* null, i32 %6, i32 0)
  %8 = call i64 (...) @open_sbuf()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @quit(i32 2)
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i32 @REQUE(i32* @buffer_head, i32* @buffer_head)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %23, %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = load i32*, i32** @ctab, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %14

26:                                               ; preds = %14
  ret void
}

declare dso_local i32 @setbuffer(i32, i32, i32) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i64 @open_sbuf(...) #1

declare dso_local i32 @quit(i32) #1

declare dso_local i32 @REQUE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
