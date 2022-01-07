; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_util.c_copyfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_util.c_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyfile(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %74

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @slow_copyfile(i8* %20, i8* %21)
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %74

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @creat(i8* %31, i32 493)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %71

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @PROT_READ, align 4
  %40 = load i32, i32* @MAP_PRIVATE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @mmap(i32* null, i64 %38, i32 %39, i32 %40, i32 %41, i32 0)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** @MAP_FAILED, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %62

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @write(i32 %48, i8* %49, i64 %51)
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @munmap(i8* %58, i64 %60)
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @unlink(i8* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @close(i32 %72)
  br label %74

74:                                               ; preds = %71, %29, %14
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @slow_copyfile(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @creat(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
