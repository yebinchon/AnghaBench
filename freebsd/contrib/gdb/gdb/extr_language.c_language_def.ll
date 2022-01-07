; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_language_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_language_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.language_defn = type { i32 }

@languages_size = common dso_local global i32 0, align 4
@languages = common dso_local global %struct.language_defn** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.language_defn* @language_def(i32 %0) #0 {
  %2 = alloca %struct.language_defn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @languages_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.language_defn**, %struct.language_defn*** @languages, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.language_defn*, %struct.language_defn** %10, i64 %12
  %14 = load %struct.language_defn*, %struct.language_defn** %13, align 8
  %15 = getelementptr inbounds %struct.language_defn, %struct.language_defn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.language_defn**, %struct.language_defn*** @languages, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.language_defn*, %struct.language_defn** %20, i64 %22
  %24 = load %struct.language_defn*, %struct.language_defn** %23, align 8
  store %struct.language_defn* %24, %struct.language_defn** %2, align 8
  br label %30

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.language_defn* null, %struct.language_defn** %2, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.language_defn*, %struct.language_defn** %2, align 8
  ret %struct.language_defn* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
