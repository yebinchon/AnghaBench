; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pcloseve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pcloseve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, %struct.pid*, i32* }

@pidlist = common dso_local global %struct.pid* null, align 8
@ESRCH = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@pidlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcloseve(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.pid* null, %struct.pid** %5, align 8
  %8 = load %struct.pid*, %struct.pid** @pidlist, align 8
  store %struct.pid* %8, %struct.pid** %4, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load %struct.pid*, %struct.pid** %4, align 8
  %11 = icmp ne %struct.pid* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.pid*, %struct.pid** %4, align 8
  %14 = getelementptr inbounds %struct.pid, %struct.pid* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %25

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.pid*, %struct.pid** %4, align 8
  store %struct.pid* %21, %struct.pid** %5, align 8
  %22 = load %struct.pid*, %struct.pid** %4, align 8
  %23 = getelementptr inbounds %struct.pid, %struct.pid* %22, i32 0, i32 1
  %24 = load %struct.pid*, %struct.pid** %23, align 8
  store %struct.pid* %24, %struct.pid** %4, align 8
  br label %9

25:                                               ; preds = %18, %9
  %26 = load %struct.pid*, %struct.pid** %4, align 8
  %27 = icmp eq %struct.pid* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @ESRCH, align 8
  store i64 %29, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %70

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load %struct.pid*, %struct.pid** %5, align 8
  %34 = icmp eq %struct.pid* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.pid*, %struct.pid** %4, align 8
  %37 = getelementptr inbounds %struct.pid, %struct.pid* %36, i32 0, i32 1
  %38 = load %struct.pid*, %struct.pid** %37, align 8
  store %struct.pid* %38, %struct.pid** @pidlist, align 8
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.pid*, %struct.pid** %4, align 8
  %41 = getelementptr inbounds %struct.pid, %struct.pid* %40, i32 0, i32 1
  %42 = load %struct.pid*, %struct.pid** %41, align 8
  %43 = load %struct.pid*, %struct.pid** %5, align 8
  %44 = getelementptr inbounds %struct.pid, %struct.pid* %43, i32 0, i32 1
  store %struct.pid* %42, %struct.pid** %44, align 8
  br label %45

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %58, %45
  %47 = load %struct.pid*, %struct.pid** %4, align 8
  %48 = getelementptr inbounds %struct.pid, %struct.pid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @waitpid(i32 %49, i32* %6, i32 0)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %46, label %60

60:                                               ; preds = %58
  %61 = load %struct.pid*, %struct.pid** %4, align 8
  %62 = call i32 @free(%struct.pid* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ -1, %65 ], [ %67, %66 ]
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
