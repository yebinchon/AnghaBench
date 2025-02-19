; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_reverse_path_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_reverse_path_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfile_check = type { i32, %struct.tfile_check*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@base_tfile_check = common dso_local global %struct.tfile_check zeroinitializer, align 8
@poll_loop_ncalls = common dso_local global i32 0, align 4
@EP_MAX_NESTS = common dso_local global i32 0, align 4
@reverse_path_check_proc = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reverse_path_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reverse_path_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tfile_check*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.tfile_check* @base_tfile_check, %struct.tfile_check** %5, align 8
  br label %6

6:                                                ; preds = %50, %0
  %7 = load %struct.tfile_check*, %struct.tfile_check** %5, align 8
  %8 = icmp ne %struct.tfile_check* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %47, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.tfile_check*, %struct.tfile_check** %5, align 8
  %13 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  %19 = call i32 (...) @path_count_init()
  %20 = load i32, i32* @EP_MAX_NESTS, align 4
  %21 = load i32, i32* @reverse_path_check_proc, align 4
  %22 = load %struct.tfile_check*, %struct.tfile_check** %5, align 8
  %23 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tfile_check*, %struct.tfile_check** %5, align 8
  %32 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @current, align 4
  %41 = call i32 @ep_call_nested(i32* @poll_loop_ncalls, i32 %20, i32 %21, i32 %30, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %16
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %1, align 4
  br label %56

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.tfile_check*, %struct.tfile_check** %5, align 8
  %52 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %51, i32 0, i32 1
  %53 = load %struct.tfile_check*, %struct.tfile_check** %52, align 8
  store %struct.tfile_check* %53, %struct.tfile_check** %5, align 8
  br label %6

54:                                               ; preds = %6
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @path_count_init(...) #1

declare dso_local i32 @ep_call_nested(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
