; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_mmiotrace_rw = type { %struct.mmiotrace_rw }
%struct.mmiotrace_rw = type { i32, i32, i32, i64, i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"R %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"W %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"UNKNOWN %u.%06lu %d 0x%llx %02lx,%02lx,%02lx 0x%lx %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rw what?\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @mmio_print_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_rw(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.trace_mmiotrace_rw*, align 8
  %6 = alloca %struct.mmiotrace_rw*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 2
  %14 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  store %struct.trace_entry* %14, %struct.trace_entry** %4, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 1
  store %struct.trace_seq* %16, %struct.trace_seq** %7, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ns2usecs(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @USEC_PER_SEC, align 4
  %23 = call i64 @do_div(i64 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %26 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %5, align 8
  %27 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %28 = call i32 @trace_assign_type(%struct.trace_mmiotrace_rw* %26, %struct.trace_entry* %27)
  %29 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %5, align 8
  %30 = getelementptr inbounds %struct.trace_mmiotrace_rw, %struct.trace_mmiotrace_rw* %29, i32 0, i32 0
  store %struct.mmiotrace_rw* %30, %struct.mmiotrace_rw** %6, align 8
  %31 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %32 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %103 [
    i32 130, label %34
    i32 128, label %54
    i32 129, label %74
  ]

34:                                               ; preds = %1
  %35 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %36 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %37 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %42 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %45 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %48 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %51 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i64 %40, i32 %43, i64 %46, i32 %49, i32 %52, i32 0)
  store i32 %53, i32* %11, align 4
  br label %106

54:                                               ; preds = %1
  %55 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %56 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %57 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %62 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %65 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %68 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %71 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i64 %60, i32 %63, i64 %66, i32 %69, i32 %72, i32 0)
  store i32 %73, i32* %11, align 4
  br label %106

74:                                               ; preds = %1
  %75 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %79 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %82 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %85 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %90 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %95 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 0
  %98 = and i32 %97, 255
  %99 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %100 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %76, i64 %77, i32 %80, i64 %83, i32 %88, i32 %93, i32 %98, i32 %101, i32 0)
  store i32 %102, i32* %11, align 4
  br label %106

103:                                              ; preds = %1
  %104 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %105 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %74, %54, %34
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %110, i32* %2, align 4
  br label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @ns2usecs(i32) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_assign_type(%struct.trace_mmiotrace_rw*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
