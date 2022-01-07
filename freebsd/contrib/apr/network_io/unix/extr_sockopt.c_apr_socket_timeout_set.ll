; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockopt.c_apr_socket_timeout_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockopt.c_apr_socket_timeout_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@APR_SO_NONBLOCK = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_INCOMPLETE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_socket_timeout_set(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* @APR_SO_NONBLOCK, align 4
  %17 = call i32 @apr_is_option_set(%struct.TYPE_5__* %15, i32 %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sononblock(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @APR_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = load i32, i32* @APR_SO_NONBLOCK, align 4
  %31 = call i32 @apr_set_option(%struct.TYPE_5__* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %28, %14
  br label %61

33:                                               ; preds = %9, %2
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load i32, i32* @APR_SO_NONBLOCK, align 4
  %44 = call i32 @apr_is_option_set(%struct.TYPE_5__* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @soblock(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @APR_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %46
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i32, i32* @APR_SO_NONBLOCK, align 4
  %58 = call i32 @apr_set_option(%struct.TYPE_5__* %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %55, %41
  br label %60

60:                                               ; preds = %59, %36, %33
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i64, i64* %5, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @APR_INCOMPLETE_READ, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %53, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @apr_is_option_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sononblock(i32) #1

declare dso_local i32 @apr_set_option(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @soblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
