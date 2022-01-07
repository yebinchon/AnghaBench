; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_add_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_add_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)* }
%struct.option = type { i32 }

@ld_emulation = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldemul_add_options(i32 %0, i8** %1, i32 %2, %struct.option** %3, i32 %4, %struct.option** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.option**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.option**, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.option** %3, %struct.option*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.option** %5, %struct.option*** %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ld_emulation, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)*, i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)** %14, align 8
  %16 = icmp ne i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ld_emulation, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)*, i32 (i32, i8**, i32, %struct.option**, i32, %struct.option**)** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8**, i8*** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.option**, %struct.option*** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.option**, %struct.option*** %12, align 8
  %27 = call i32 %20(i32 %21, i8** %22, i32 %23, %struct.option** %24, i32 %25, %struct.option** %26)
  br label %28

28:                                               ; preds = %17, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
