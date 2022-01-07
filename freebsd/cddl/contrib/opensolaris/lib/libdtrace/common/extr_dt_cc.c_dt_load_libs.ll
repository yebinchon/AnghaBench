; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DTRACE_C_NOLIBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @dt_load_libs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_load_libs(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DTRACE_C_NOLIBS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

12:                                               ; preds = %1
  %13 = load i32, i32* @DTRACE_C_NOLIBS, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = call %struct.TYPE_9__* @dt_list_next(%struct.TYPE_9__* %19)
  %21 = call %struct.TYPE_9__* @dt_list_next(%struct.TYPE_9__* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  br label %22

22:                                               ; preds = %40, %12
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dt_load_libs_dir(%struct.TYPE_8__* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @DTRACE_C_NOLIBS, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 -1, i32* %2, align 4
  br label %66

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call %struct.TYPE_9__* @dt_list_next(%struct.TYPE_9__* %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %4, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = call %struct.TYPE_9__* @dt_list_next(%struct.TYPE_9__* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dt_load_libs_dir(%struct.TYPE_8__* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32, i32* @DTRACE_C_NOLIBS, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  store i32 -1, i32* %2, align 4
  br label %66

60:                                               ; preds = %43
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = call i64 @dt_load_libs_sort(%struct.TYPE_8__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %64, %53, %32, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_9__* @dt_list_next(%struct.TYPE_9__*) #1

declare dso_local i64 @dt_load_libs_dir(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @dt_load_libs_sort(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
