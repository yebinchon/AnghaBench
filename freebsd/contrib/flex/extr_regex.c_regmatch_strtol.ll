; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_regex.c_regmatch_strtol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_regex.c_regmatch_strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@bufsz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmatch_strtol(%struct.TYPE_6__* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i32 @regmatch_len(%struct.TYPE_6__* %22)
  %24 = icmp slt i32 %23, 20
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @regmatch_cpy(%struct.TYPE_6__* %26, i8* %27, i8* %28)
  store i8* %29, i8** %12, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @regmatch_dup(%struct.TYPE_6__* %31, i8* %32)
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %12, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @strtol(i8* %35, i8** %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @regmatch_len(%struct.TYPE_6__*) #1

declare dso_local i8* @regmatch_cpy(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i8* @regmatch_dup(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
