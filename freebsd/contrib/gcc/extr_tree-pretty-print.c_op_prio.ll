; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_op_prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_op_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_prio(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 9999, i32* %2, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @TREE_CODE(i32* %8)
  switch i32 %9, label %30 [
    i32 146, label %10
    i32 196, label %10
    i32 205, label %10
    i32 169, label %11
    i32 179, label %11
    i32 195, label %12
    i32 139, label %13
    i32 140, label %13
    i32 142, label %14
    i32 143, label %14
    i32 203, label %15
    i32 201, label %16
    i32 138, label %16
    i32 204, label %17
    i32 192, label %18
    i32 166, label %18
    i32 133, label %19
    i32 134, label %19
    i32 135, label %19
    i32 136, label %19
    i32 137, label %19
    i32 175, label %19
    i32 163, label %19
    i32 132, label %19
    i32 174, label %19
    i32 178, label %19
    i32 182, label %19
    i32 183, label %19
    i32 176, label %20
    i32 149, label %20
    i32 177, label %20
    i32 150, label %20
    i32 128, label %21
    i32 162, label %21
    i32 172, label %21
    i32 129, label %22
    i32 193, label %22
    i32 168, label %22
    i32 145, label %22
    i32 199, label %22
    i32 185, label %22
    i32 152, label %22
    i32 157, label %22
    i32 191, label %22
    i32 144, label %22
    i32 198, label %22
    i32 184, label %22
    i32 151, label %22
    i32 141, label %23
    i32 202, label %23
    i32 160, label %23
    i32 161, label %23
    i32 158, label %23
    i32 159, label %23
    i32 167, label %23
    i32 208, label %23
    i32 170, label %23
    i32 180, label %23
    i32 209, label %23
    i32 186, label %23
    i32 164, label %23
    i32 194, label %23
    i32 187, label %23
    i32 190, label %23
    i32 189, label %23
    i32 188, label %23
    i32 147, label %23
    i32 200, label %24
    i32 206, label %24
    i32 207, label %24
    i32 197, label %24
    i32 171, label %25
    i32 173, label %25
    i32 210, label %25
    i32 156, label %25
    i32 181, label %25
    i32 155, label %25
    i32 154, label %25
    i32 153, label %25
    i32 131, label %25
    i32 130, label %25
    i32 148, label %26
    i32 165, label %26
  ]

10:                                               ; preds = %7, %7, %7
  store i32 1, i32* %2, align 4
  br label %31

11:                                               ; preds = %7, %7
  store i32 2, i32* %2, align 4
  br label %31

12:                                               ; preds = %7
  store i32 3, i32* %2, align 4
  br label %31

13:                                               ; preds = %7, %7
  store i32 4, i32* %2, align 4
  br label %31

14:                                               ; preds = %7, %7
  store i32 5, i32* %2, align 4
  br label %31

15:                                               ; preds = %7
  store i32 6, i32* %2, align 4
  br label %31

16:                                               ; preds = %7, %7
  store i32 7, i32* %2, align 4
  br label %31

17:                                               ; preds = %7
  store i32 8, i32* %2, align 4
  br label %31

18:                                               ; preds = %7, %7
  store i32 9, i32* %2, align 4
  br label %31

19:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 10, i32* %2, align 4
  br label %31

20:                                               ; preds = %7, %7, %7, %7
  store i32 11, i32* %2, align 4
  br label %31

21:                                               ; preds = %7, %7, %7
  store i32 12, i32* %2, align 4
  br label %31

22:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 13, i32* %2, align 4
  br label %31

23:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 14, i32* %2, align 4
  br label %31

24:                                               ; preds = %7, %7, %7, %7
  store i32 15, i32* %2, align 4
  br label %31

25:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 16, i32* %2, align 4
  br label %31

26:                                               ; preds = %7, %7
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @TREE_OPERAND(i32* %27, i32 0)
  %29 = call i32 @op_prio(i32* %28)
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %7
  store i32 9999, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
