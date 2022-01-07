; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_clear_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_clear_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_clear_contents(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @bfd_get_reloc_size(%struct.TYPE_4__* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %12 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %19
    i32 4, label %23
    i32 8, label %27
  ]

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %12
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @bfd_get_8(i32* %16, i32* %17)
  store i32 %18, i32* %8, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @bfd_get_16(i32* %20, i32* %21)
  store i32 %22, i32* %8, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @bfd_get_32(i32* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %29

27:                                               ; preds = %3
  %28 = call i32 (...) @abort() #3
  unreachable

29:                                               ; preds = %23, %19, %15
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %37 [
    i32 0, label %38
    i32 1, label %40
    i32 2, label %45
    i32 4, label %50
    i32 8, label %55
  ]

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %29, %37
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %29
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @bfd_put_8(i32* %41, i32 %42, i32* %43)
  br label %57

45:                                               ; preds = %29
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @bfd_put_16(i32* %46, i32 %47, i32* %48)
  br label %57

50:                                               ; preds = %29
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @bfd_put_32(i32* %51, i32 %52, i32* %53)
  br label %57

55:                                               ; preds = %29
  %56 = call i32 (...) @abort() #3
  unreachable

57:                                               ; preds = %50, %45, %40
  ret void
}

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_4__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_8(i32*, i32*) #1

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_8(i32*, i32, i32*) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
