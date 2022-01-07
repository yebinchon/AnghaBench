; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_define_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_define_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro = type { i32, i32, %struct.macro*, %struct.macro* }

@macros = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @define_macro(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macro*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i8* @malloc(i32 24)
  %8 = bitcast i8* %7 to %struct.macro*
  store %struct.macro* %8, %struct.macro** %6, align 8
  %9 = icmp eq %struct.macro* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = call i8* @malloc(i32 %14)
  %16 = bitcast i8* %15 to %struct.macro*
  %17 = load %struct.macro*, %struct.macro** %6, align 8
  %18 = getelementptr inbounds %struct.macro, %struct.macro* %17, i32 0, i32 3
  store %struct.macro* %16, %struct.macro** %18, align 8
  %19 = icmp eq %struct.macro* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.macro*, %struct.macro** %6, align 8
  %22 = call i32 @free(%struct.macro* %21)
  store i32 -1, i32* %3, align 4
  br label %59

23:                                               ; preds = %11
  %24 = load %struct.macro*, %struct.macro** %6, align 8
  %25 = getelementptr inbounds %struct.macro, %struct.macro* %24, i32 0, i32 3
  %26 = load %struct.macro*, %struct.macro** %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcpy(%struct.macro* %26, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = call i8* @malloc(i32 %31)
  %33 = bitcast i8* %32 to %struct.macro*
  %34 = load %struct.macro*, %struct.macro** %6, align 8
  %35 = getelementptr inbounds %struct.macro, %struct.macro* %34, i32 0, i32 2
  store %struct.macro* %33, %struct.macro** %35, align 8
  %36 = icmp eq %struct.macro* %33, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.macro*, %struct.macro** %6, align 8
  %39 = getelementptr inbounds %struct.macro, %struct.macro* %38, i32 0, i32 3
  %40 = load %struct.macro*, %struct.macro** %39, align 8
  %41 = call i32 @free(%struct.macro* %40)
  %42 = load %struct.macro*, %struct.macro** %6, align 8
  %43 = call i32 @free(%struct.macro* %42)
  store i32 -1, i32* %3, align 4
  br label %59

44:                                               ; preds = %23
  %45 = load %struct.macro*, %struct.macro** %6, align 8
  %46 = getelementptr inbounds %struct.macro, %struct.macro* %45, i32 0, i32 2
  %47 = load %struct.macro*, %struct.macro** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcpy(%struct.macro* %47, i8* %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load %struct.macro*, %struct.macro** %6, align 8
  %53 = getelementptr inbounds %struct.macro, %struct.macro* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.macro*, %struct.macro** %6, align 8
  %55 = getelementptr inbounds %struct.macro, %struct.macro* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.macro*, %struct.macro** %6, align 8
  %57 = load i32, i32* @link, align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* @macros, %struct.macro* %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %44, %37, %20, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(%struct.macro*) #1

declare dso_local i32 @strcpy(%struct.macro*, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.macro*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
