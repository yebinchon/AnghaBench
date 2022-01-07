; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_andor.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_andor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i32 }

@TAND = common dso_local global i32 0, align 4
@NAND = common dso_local global i32 0, align 4
@TOR = common dso_local global i32 0, align 4
@NOR = common dso_local global i32 0, align 4
@tokpushback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* ()* @andor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @andor() #0 {
  %1 = alloca %union.node*, align 8
  %2 = alloca i32, align 4
  %3 = call %union.node* (...) @pipeline()
  store %union.node* %3, %union.node** %1, align 8
  br label %4

4:                                                ; preds = %21, %0
  %5 = call i32 (...) @readtoken()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @TAND, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, i32* @NAND, align 4
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TOR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @NOR, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @tokpushback, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @tokpushback, align 4
  %19 = load %union.node*, %union.node** %1, align 8
  ret %union.node* %19

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i32, i32* %2, align 4
  %23 = load %union.node*, %union.node** %1, align 8
  %24 = call %union.node* (...) @pipeline()
  %25 = call %union.node* @makebinary(i32 %22, %union.node* %23, %union.node* %24)
  store %union.node* %25, %union.node** %1, align 8
  br label %4
}

declare dso_local %union.node* @pipeline(...) #1

declare dso_local i32 @readtoken(...) #1

declare dso_local %union.node* @makebinary(i32, %union.node*, %union.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
