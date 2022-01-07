; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_set_current_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_set_current_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.anon = type { i32, [24 x i8] }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@PIOCSSIG = common dso_local global i32 0, align 4
@PCSSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_set_current_signal(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_6__* @find_procinfo_or_die(i32 %15, i32 0)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %19 = bitcast [24 x i8]* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = call i32 (...) @getpid()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @getuid()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PIOCSSIG, align 4
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %36 = bitcast [24 x i8]* %35 to i8*
  %37 = call i64 @ioctl(i32 %33, i32 %34, i8* %36)
  %38 = icmp sge i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_6__* @find_procinfo_or_die(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
