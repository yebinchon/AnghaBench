; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_exp_init_os.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_exp_init_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_15__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_14__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_13__ = type { %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @exp_init_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp_init_os(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %4 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %68 [
    i32 133, label %8
    i32 130, label %8
    i32 132, label %13
    i32 129, label %22
    i32 134, label %35
    i32 128, label %40
    i32 131, label %45
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  call void @exp_init_os(%struct.TYPE_21__* %12)
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  call void @exp_init_os(%struct.TYPE_21__* %17)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  call void @exp_init_os(%struct.TYPE_21__* %21)
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  call void @exp_init_os(%struct.TYPE_21__* %26)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  call void @exp_init_os(%struct.TYPE_21__* %30)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  call void @exp_init_os(%struct.TYPE_21__* %34)
  br label %69

35:                                               ; preds = %1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  call void @exp_init_os(%struct.TYPE_21__* %39)
  br label %69

40:                                               ; preds = %1
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  call void @exp_init_os(%struct.TYPE_21__* %44)
  br label %69

45:                                               ; preds = %1
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %67 [
    i32 137, label %50
    i32 136, label %50
    i32 135, label %50
  ]

50:                                               ; preds = %45, %45, %45
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_20__* @lang_output_section_find(i32 %54)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %3, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = icmp ne %struct.TYPE_20__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = call i32 @init_os(%struct.TYPE_20__* %64, i32* null, i32 0)
  br label %66

66:                                               ; preds = %63, %58, %50
  br label %67

67:                                               ; preds = %66, %45
  br label %69

68:                                               ; preds = %1
  br label %69

69:                                               ; preds = %68, %67, %40, %35, %22, %13, %8
  ret void
}

declare dso_local %struct.TYPE_20__* @lang_output_section_find(i32) #1

declare dso_local i32 @init_os(%struct.TYPE_20__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
