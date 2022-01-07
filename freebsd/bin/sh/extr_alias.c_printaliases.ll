; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_printaliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_printaliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i8*, %struct.alias* }

@INTOFF = common dso_local global i32 0, align 4
@aliases = common dso_local global i32 0, align 4
@ATABSIZE = common dso_local global i32 0, align 4
@atab = common dso_local global %struct.alias** null, align 8
@comparealiases = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printaliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printaliases() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.alias**, align 8
  %4 = alloca %struct.alias*, align 8
  %5 = load i32, i32* @INTOFF, align 4
  %6 = load i32, i32* @aliases, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  %10 = call %struct.alias** @ckmalloc(i32 %9)
  store %struct.alias** %10, %struct.alias*** %3, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %44, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @ATABSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.alias**, %struct.alias*** @atab, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.alias*, %struct.alias** %16, i64 %18
  %20 = load %struct.alias*, %struct.alias** %19, align 8
  store %struct.alias* %20, %struct.alias** %4, align 8
  br label %21

21:                                               ; preds = %39, %15
  %22 = load %struct.alias*, %struct.alias** %4, align 8
  %23 = icmp ne %struct.alias* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.alias*, %struct.alias** %4, align 8
  %26 = getelementptr inbounds %struct.alias, %struct.alias* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.alias*, %struct.alias** %4, align 8
  %33 = load %struct.alias**, %struct.alias*** %3, align 8
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.alias*, %struct.alias** %33, i64 %36
  store %struct.alias* %32, %struct.alias** %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.alias*, %struct.alias** %4, align 8
  %41 = getelementptr inbounds %struct.alias, %struct.alias* %40, i32 0, i32 1
  %42 = load %struct.alias*, %struct.alias** %41, align 8
  store %struct.alias* %42, %struct.alias** %4, align 8
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.alias**, %struct.alias*** %3, align 8
  %49 = load i32, i32* @aliases, align 4
  %50 = load i32, i32* @comparealiases, align 4
  %51 = call i32 @qsort(%struct.alias** %48, i32 %49, i32 8, i32 %50)
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %67, %47
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @aliases, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.alias**, %struct.alias*** %3, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.alias*, %struct.alias** %57, i64 %59
  %61 = load %struct.alias*, %struct.alias** %60, align 8
  %62 = call i32 @printalias(%struct.alias* %61)
  %63 = call i64 (...) @int_pending()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %52

70:                                               ; preds = %65, %52
  %71 = load %struct.alias**, %struct.alias*** %3, align 8
  %72 = call i32 @ckfree(%struct.alias** %71)
  %73 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local %struct.alias** @ckmalloc(i32) #1

declare dso_local i32 @qsort(%struct.alias**, i32, i32, i32) #1

declare dso_local i32 @printalias(%struct.alias*) #1

declare dso_local i64 @int_pending(...) #1

declare dso_local i32 @ckfree(%struct.alias**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
