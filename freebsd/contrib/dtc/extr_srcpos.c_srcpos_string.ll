; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcpos_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcpos_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"<no-file>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s:%d.%d-%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s:%d.%d-%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s:%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @srcpos_string(%struct.srcpos* %0) #0 {
  %2 = alloca %struct.srcpos*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.srcpos* %0, %struct.srcpos** %2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %6 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %11 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %18 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %16, %9, %1
  %23 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %24 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %27 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %33 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %36 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %39 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %42 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8**, i8*, i8*, i32, i32, ...) @xasprintf(i8** %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %34, i32 %37, i32 %40, i32 %43)
  br label %75

45:                                               ; preds = %22
  %46 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %47 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %50 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %56 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %59 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %62 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8**, i8*, i8*, i32, i32, ...) @xasprintf(i8** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %57, i32 %60, i32 %63)
  br label %74

65:                                               ; preds = %45
  %66 = load i8*, i8** %3, align 8
  %67 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %68 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  %71 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8**, i8*, i8*, i32, i32, ...) @xasprintf(i8** %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %53
  br label %75

75:                                               ; preds = %74, %30
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
