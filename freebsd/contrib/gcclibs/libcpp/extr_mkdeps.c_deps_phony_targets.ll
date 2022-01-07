; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_deps_phony_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_deps_phony_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deps_phony_targets(%struct.deps* %0, i32* %1) #0 {
  %3 = alloca %struct.deps*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.deps* %0, %struct.deps** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.deps*, %struct.deps** %3, align 8
  %9 = getelementptr inbounds %struct.deps, %struct.deps* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @putc(i8 signext 10, i32* %13)
  %15 = load %struct.deps*, %struct.deps** %3, align 8
  %16 = getelementptr inbounds %struct.deps, %struct.deps* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fputs(i32 %21, i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @putc(i8 signext 58, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @putc(i8 signext 10, i32* %26)
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
