; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inftarg.c_child_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inftarg.c_child_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @child_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %40 [
    i32 130, label %17
    i32 129, label %36
    i32 132, label %37
    i32 128, label %38
    i32 131, label %39
  ]

17:                                               ; preds = %7
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %14, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %25 = call i32 @child_xfer_memory(i32 %21, i8* %22, i32 %23, i32 0, i32* null, %struct.target_ops* %24)
  store i32 %25, i32* %8, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %34 = call i32 @child_xfer_memory(i32 %30, i8* %31, i32 %32, i32 1, i32* null, %struct.target_ops* %33)
  store i32 %34, i32* %8, align 4
  br label %41

35:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %41

36:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %41

37:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %41

38:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %41

39:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %41

40:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %35, %29, %20
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @child_xfer_memory(i32, i8*, i32, i32, i32*, %struct.target_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
