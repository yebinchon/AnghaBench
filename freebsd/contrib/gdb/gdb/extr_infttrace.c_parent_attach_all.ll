; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_parent_attach_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_parent_attach_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@TT_VERSION = common dso_local global i64 0, align 8
@TT_PROC_SETTRC = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i64 0, align 8
@startup_semaphore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEM_TALK = common dso_local global i64 0, align 8
@SEM_LISTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"mismatched semaphore magic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parent_attach_all(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @TT_VERSION, align 8
  store i64 %11, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @TT_PROC_SETTRC, align 4
  %13 = load i64, i64* @TT_NIL, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* @TT_NIL, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* @TT_NIL, align 8
  %18 = load i64, i64* @TT_VERSION, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* @TT_NIL, align 8
  %21 = call i32 @call_real_ttrace(i32 %12, i32 %14, i32 %16, i64 %17, i32 %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %28 = load i64, i64* @SEM_TALK, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write(i32 %30, i64* %9, i32 8)
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %33 = load i64, i64* @SEM_LISTEN, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @read(i32 %35, i64* %10, i32 8)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %44 = load i64, i64* @SEM_LISTEN, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %49 = load i64, i64* @SEM_TALK, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %54 = load i64, i64* @SEM_LISTEN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %59 = load i64, i64* @SEM_TALK, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %42, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @call_real_ttrace(i32, i32, i32, i64, i32, i64) #1

declare dso_local i32 @write(i32, i64*, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
