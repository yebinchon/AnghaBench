; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_is_specified_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_is_specified_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symlist = type { i8*, %struct.symlist* }

@wildcard = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.symlist*)* @is_specified_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_specified_symbol(i8* %0, %struct.symlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symlist*, align 8
  %6 = alloca %struct.symlist*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.symlist* %1, %struct.symlist** %5, align 8
  %7 = load i64, i64* @wildcard, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load %struct.symlist*, %struct.symlist** %5, align 8
  store %struct.symlist* %10, %struct.symlist** %6, align 8
  br label %11

11:                                               ; preds = %43, %9
  %12 = load %struct.symlist*, %struct.symlist** %6, align 8
  %13 = icmp ne %struct.symlist* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load %struct.symlist*, %struct.symlist** %6, align 8
  %16 = getelementptr inbounds %struct.symlist, %struct.symlist* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 33
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.symlist*, %struct.symlist** %6, align 8
  %23 = getelementptr inbounds %struct.symlist, %struct.symlist* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @fnmatch(i8* %24, i8* %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %21
  br label %42

31:                                               ; preds = %14
  %32 = load %struct.symlist*, %struct.symlist** %6, align 8
  %33 = getelementptr inbounds %struct.symlist, %struct.symlist* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @fnmatch(i8* %35, i8* %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.symlist*, %struct.symlist** %6, align 8
  %45 = getelementptr inbounds %struct.symlist, %struct.symlist* %44, i32 0, i32 1
  %46 = load %struct.symlist*, %struct.symlist** %45, align 8
  store %struct.symlist* %46, %struct.symlist** %6, align 8
  br label %11

47:                                               ; preds = %11
  br label %68

48:                                               ; preds = %2
  %49 = load %struct.symlist*, %struct.symlist** %5, align 8
  store %struct.symlist* %49, %struct.symlist** %6, align 8
  br label %50

50:                                               ; preds = %63, %48
  %51 = load %struct.symlist*, %struct.symlist** %6, align 8
  %52 = icmp ne %struct.symlist* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.symlist*, %struct.symlist** %6, align 8
  %56 = getelementptr inbounds %struct.symlist, %struct.symlist* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %54, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.symlist*, %struct.symlist** %6, align 8
  %65 = getelementptr inbounds %struct.symlist, %struct.symlist* %64, i32 0, i32 1
  %66 = load %struct.symlist*, %struct.symlist** %65, align 8
  store %struct.symlist* %66, %struct.symlist** %6, align 8
  br label %50

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %60, %39, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
