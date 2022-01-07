; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_get_insn_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_get_insn_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8**, i8* (i32, i32)* }
%struct.TYPE_5__ = type { i32 }

@insn_data = common dso_local global %struct.TYPE_6__* null, align 8
@which_alternative = common dso_local global i64 0, align 8
@recog_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_insn_template(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %44 [
    i32 128, label %12
    i32 129, label %20
    i32 130, label %31
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @which_alternative, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %46

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i8* (i32, i32)*, i8* (i32, i32)** %39, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 0), align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i8* %40(i32 %41, i32 %42)
  store i8* %43, i8** %3, align 8
  br label %46

44:                                               ; preds = %2
  %45 = call i32 (...) @gcc_unreachable()
  br label %46

46:                                               ; preds = %12, %20, %31, %44
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
