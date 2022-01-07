; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_flush_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_flush_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_line() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = call i32 (...) @getchar()
  store i32 %3, i32* %1, align 4
  %4 = icmp ne i32 %3, 10
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp ne i32 %6, %7
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i1 [ false, %2 ], [ %8, %5 ]
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %2

12:                                               ; preds = %9
  %13 = load i32, i32* @stdin, align 4
  %14 = call i64 @ferror(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @perror_fatal(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @perror_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
