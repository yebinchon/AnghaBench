; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_token_starts_typename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_token_starts_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @c_token_starts_typename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_token_starts_typename(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 153, label %7
    i32 155, label %19
    i32 154, label %25
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 151, label %11
    i32 150, label %12
    i32 152, label %13
  ]

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %31

13:                                               ; preds = %7
  %14 = call i32 (...) @c_dialect_objc()
  %15 = call i32 @gcc_assert(i32 %14)
  store i32 1, i32* %2, align 4
  br label %31

16:                                               ; preds = %7
  %17 = call i32 (...) @gcc_unreachable()
  br label %18

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %1, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 130, label %23
    i32 137, label %23
    i32 135, label %23
    i32 134, label %23
    i32 146, label %23
    i32 138, label %23
    i32 147, label %23
    i32 139, label %23
    i32 141, label %23
    i32 129, label %23
    i32 143, label %23
    i32 142, label %23
    i32 144, label %23
    i32 148, label %23
    i32 140, label %23
    i32 133, label %23
    i32 131, label %23
    i32 132, label %23
    i32 145, label %23
    i32 128, label %23
    i32 136, label %23
    i32 149, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  store i32 1, i32* %2, align 4
  br label %31

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = call i32 (...) @c_dialect_objc()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %24, %23, %13, %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
