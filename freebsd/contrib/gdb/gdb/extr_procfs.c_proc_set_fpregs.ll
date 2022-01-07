; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_set_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_set_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }

@FD_CTL = common dso_local global i32 0, align 4
@PIOCSFPREG = common dso_local global i32 0, align 4
@PCSFPREG = common dso_local global i32 0, align 4
@PIOCTSFPREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_set_fpregs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i32* @proc_get_fpregs(%struct.TYPE_7__* %6)
  store i32* %7, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @FD_CTL, align 4
  %18 = call i64 @open_procinfo_files(%struct.TYPE_7__* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

21:                                               ; preds = %15, %10
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @PIOCSFPREG, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 (i64, i32, ...) @ioctl(i64 %24, i32 %25, i32* %26)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %20, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @proc_get_fpregs(%struct.TYPE_7__*) #1

declare dso_local i64 @open_procinfo_files(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ioctl(i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
