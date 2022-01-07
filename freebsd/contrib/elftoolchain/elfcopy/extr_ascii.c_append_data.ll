; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_append_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i64, i64, i32* }

@_SEC_INIT_CAP = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.section*, i8*, i64)* @append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_data(%struct.section* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.section*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.section* %0, %struct.section** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.section*, %struct.section** %4, align 8
  %9 = getelementptr inbounds %struct.section, %struct.section* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.section*, %struct.section** %4, align 8
  %14 = getelementptr inbounds %struct.section, %struct.section* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* @_SEC_INIT_CAP, align 8
  %16 = load %struct.section*, %struct.section** %4, align 8
  %17 = getelementptr inbounds %struct.section, %struct.section* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.section*, %struct.section** %4, align 8
  %19 = getelementptr inbounds %struct.section, %struct.section* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32* @malloc(i64 %20)
  %22 = load %struct.section*, %struct.section** %4, align 8
  %23 = getelementptr inbounds %struct.section, %struct.section* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = icmp eq i32* %21, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @err(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %12
  br label %29

29:                                               ; preds = %28, %3
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.section*, %struct.section** %4, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = load %struct.section*, %struct.section** %4, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %30
  %41 = load %struct.section*, %struct.section** %4, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 %43, 2
  store i64 %44, i64* %42, align 8
  %45 = load %struct.section*, %struct.section** %4, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.section*, %struct.section** %4, align 8
  %49 = getelementptr inbounds %struct.section, %struct.section* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32* @realloc(i32* %47, i32 %51)
  %53 = load %struct.section*, %struct.section** %4, align 8
  %54 = getelementptr inbounds %struct.section, %struct.section* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @err(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %40
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.section*, %struct.section** %4, align 8
  %62 = getelementptr inbounds %struct.section, %struct.section* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.section*, %struct.section** %4, align 8
  %66 = getelementptr inbounds %struct.section, %struct.section* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @memcpy(i32* %68, i8* %69, i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.section*, %struct.section** %4, align 8
  %74 = getelementptr inbounds %struct.section, %struct.section* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
