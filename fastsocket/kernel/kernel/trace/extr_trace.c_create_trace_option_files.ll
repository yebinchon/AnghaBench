; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_create_trace_option_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_create_trace_option_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_option_dentry = type { i32 }
%struct.tracer = type { %struct.tracer_flags* }
%struct.tracer_flags = type { %struct.tracer_opt* }
%struct.tracer_opt = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_option_dentry* (%struct.tracer*)* @create_trace_option_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_option_dentry* @create_trace_option_files(%struct.tracer* %0) #0 {
  %2 = alloca %struct.trace_option_dentry*, align 8
  %3 = alloca %struct.tracer*, align 8
  %4 = alloca %struct.trace_option_dentry*, align 8
  %5 = alloca %struct.tracer_flags*, align 8
  %6 = alloca %struct.tracer_opt*, align 8
  %7 = alloca i32, align 4
  store %struct.tracer* %0, %struct.tracer** %3, align 8
  %8 = load %struct.tracer*, %struct.tracer** %3, align 8
  %9 = icmp ne %struct.tracer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.trace_option_dentry* null, %struct.trace_option_dentry** %2, align 8
  br label %72

11:                                               ; preds = %1
  %12 = load %struct.tracer*, %struct.tracer** %3, align 8
  %13 = getelementptr inbounds %struct.tracer, %struct.tracer* %12, i32 0, i32 0
  %14 = load %struct.tracer_flags*, %struct.tracer_flags** %13, align 8
  store %struct.tracer_flags* %14, %struct.tracer_flags** %5, align 8
  %15 = load %struct.tracer_flags*, %struct.tracer_flags** %5, align 8
  %16 = icmp ne %struct.tracer_flags* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.tracer_flags*, %struct.tracer_flags** %5, align 8
  %19 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %18, i32 0, i32 0
  %20 = load %struct.tracer_opt*, %struct.tracer_opt** %19, align 8
  %21 = icmp ne %struct.tracer_opt* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11
  store %struct.trace_option_dentry* null, %struct.trace_option_dentry** %2, align 8
  br label %72

23:                                               ; preds = %17
  %24 = load %struct.tracer_flags*, %struct.tracer_flags** %5, align 8
  %25 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %24, i32 0, i32 0
  %26 = load %struct.tracer_opt*, %struct.tracer_opt** %25, align 8
  store %struct.tracer_opt* %26, %struct.tracer_opt** %6, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %36, %23
  %28 = load %struct.tracer_opt*, %struct.tracer_opt** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %28, i64 %30
  %32 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.trace_option_dentry* @kcalloc(i32 %41, i32 4, i32 %42)
  store %struct.trace_option_dentry* %43, %struct.trace_option_dentry** %4, align 8
  %44 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %45 = icmp ne %struct.trace_option_dentry* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store %struct.trace_option_dentry* null, %struct.trace_option_dentry** %2, align 8
  br label %72

47:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load %struct.tracer_opt*, %struct.tracer_opt** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %49, i64 %51
  %53 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %57, i64 %59
  %61 = load %struct.tracer_flags*, %struct.tracer_flags** %5, align 8
  %62 = load %struct.tracer_opt*, %struct.tracer_opt** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %62, i64 %64
  %66 = call i32 @create_trace_option_file(%struct.trace_option_dentry* %60, %struct.tracer_flags* %61, %struct.tracer_opt* %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  store %struct.trace_option_dentry* %71, %struct.trace_option_dentry** %2, align 8
  br label %72

72:                                               ; preds = %70, %46, %22, %10
  %73 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  ret %struct.trace_option_dentry* %73
}

declare dso_local %struct.trace_option_dentry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @create_trace_option_file(%struct.trace_option_dentry*, %struct.tracer_flags*, %struct.tracer_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
