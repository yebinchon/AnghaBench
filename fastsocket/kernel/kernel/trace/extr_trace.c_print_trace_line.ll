; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_trace_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_trace_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.trace_iterator*)* }

@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@TRACE_BPRINT = common dso_local global i64 0, align 8
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_PRINTK = common dso_local global i32 0, align 4
@TRACE_ITER_PRINTK_MSGONLY = common dso_local global i32 0, align 4
@TRACE_PRINT = common dso_local global i64 0, align 8
@TRACE_ITER_BIN = common dso_local global i32 0, align 4
@TRACE_ITER_HEX = common dso_local global i32 0, align 4
@TRACE_ITER_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_trace_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_trace_line(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %13, align 8
  %15 = icmp ne i32 (%struct.trace_iterator*)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %20, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %23 = call i32 %21(%struct.trace_iterator* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %99

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %9, %1
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRACE_BPRINT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load i32, i32* @trace_flags, align 4
  %40 = load i32, i32* @TRACE_ITER_PRINTK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @trace_flags, align 4
  %45 = load i32, i32* @TRACE_ITER_PRINTK_MSGONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %50 = call i32 @trace_print_bprintk_msg_only(%struct.trace_iterator* %49)
  store i32 %50, i32* %2, align 4
  br label %99

51:                                               ; preds = %43, %38, %30
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TRACE_PRINT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load i32, i32* @trace_flags, align 4
  %61 = load i32, i32* @TRACE_ITER_PRINTK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @trace_flags, align 4
  %66 = load i32, i32* @TRACE_ITER_PRINTK_MSGONLY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %71 = call i32 @trace_print_printk_msg_only(%struct.trace_iterator* %70)
  store i32 %71, i32* %2, align 4
  br label %99

72:                                               ; preds = %64, %59, %51
  %73 = load i32, i32* @trace_flags, align 4
  %74 = load i32, i32* @TRACE_ITER_BIN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %79 = call i32 @print_bin_fmt(%struct.trace_iterator* %78)
  store i32 %79, i32* %2, align 4
  br label %99

80:                                               ; preds = %72
  %81 = load i32, i32* @trace_flags, align 4
  %82 = load i32, i32* @TRACE_ITER_HEX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %87 = call i32 @print_hex_fmt(%struct.trace_iterator* %86)
  store i32 %87, i32* %2, align 4
  br label %99

88:                                               ; preds = %80
  %89 = load i32, i32* @trace_flags, align 4
  %90 = load i32, i32* @TRACE_ITER_RAW, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %95 = call i32 @print_raw_fmt(%struct.trace_iterator* %94)
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %88
  %97 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %98 = call i32 @print_trace_fmt(%struct.trace_iterator* %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %93, %85, %77, %69, %48, %27
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @trace_print_bprintk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_printk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @print_bin_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_hex_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_raw_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_fmt(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
