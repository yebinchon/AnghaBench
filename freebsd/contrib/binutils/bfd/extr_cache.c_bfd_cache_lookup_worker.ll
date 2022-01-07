; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_bfd_cache_lookup_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_bfd_cache_lookup_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_9__* }

@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@bfd_last_cache = common dso_local global %struct.TYPE_9__* null, align 8
@CACHE_NO_OPEN = common dso_local global i32 0, align 4
@CACHE_NO_SEEK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@CACHE_NO_SEEK_ERROR = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"reopening %B: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32)* @bfd_cache_lookup_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bfd_cache_lookup_worker(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BFD_IN_MEMORY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %4, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bfd_last_cache, align 8
  %33 = icmp ne %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @snip(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call i32 @insert(%struct.TYPE_9__* %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %3, align 8
  br label %88

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CACHE_NO_OPEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* null, i32** %3, align 8
  br label %88

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = call i32* @bfd_open_file(%struct.TYPE_9__* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %82

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CACHE_NO_SEEK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i64 @real_fseek(i32* %62, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @CACHE_NO_SEEK_ERROR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @bfd_error_system_call, align 4
  %76 = call i32 @bfd_set_error(i32 %75)
  br label %81

77:                                               ; preds = %69, %59, %54
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %3, align 8
  br label %88

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %53
  %83 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = call i32 (...) @bfd_get_error()
  %86 = call i32 @bfd_errmsg(i32 %85)
  %87 = call i32 @_bfd_error_handler(i32 %83, %struct.TYPE_9__* %84, i32 %86)
  store i32* null, i32** %3, align 8
  br label %88

88:                                               ; preds = %82, %77, %48, %39
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @snip(%struct.TYPE_9__*) #2

declare dso_local i32 @insert(%struct.TYPE_9__*) #2

declare dso_local i32* @bfd_open_file(%struct.TYPE_9__*) #2

declare dso_local i64 @real_fseek(i32*, i32, i32) #2

declare dso_local i32 @bfd_set_error(i32) #2

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @bfd_errmsg(i32) #2

declare dso_local i32 @bfd_get_error(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
