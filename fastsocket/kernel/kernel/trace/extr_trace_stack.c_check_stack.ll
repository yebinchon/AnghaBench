; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stack.c_check_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stack.c_check_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@max_stack_size = common dso_local global i64 0, align 8
@max_stack_lock = common dso_local global i32 0, align 4
@max_stack_trace = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@stack_dump_index = common dso_local global i64* null, align 8
@stack_dump_trace = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_stack() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = ptrtoint i64* %1 to i64
  %9 = load i32, i32* @THREAD_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = and i64 %8, %11
  store i64 %12, i64* %1, align 8
  %13 = load i32, i32* @THREAD_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %1, align 8
  %16 = sub i64 %14, %15
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @max_stack_size, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %108

21:                                               ; preds = %0
  %22 = call i32 @object_is_on_stack(i64* %1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %108

25:                                               ; preds = %21
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = call i32 @__raw_spin_lock(i32* @max_stack_lock)
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @max_stack_size, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %104

33:                                               ; preds = %25
  %34 = load i64, i64* %1, align 8
  store i64 %34, i64* @max_stack_size, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_stack_trace, i32 0, i32 0), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_stack_trace, i32 0, i32 1), align 4
  %35 = call i32 @save_stack_trace(%struct.TYPE_3__* @max_stack_trace)
  store i32 0, i32* %6, align 4
  store i64* %1, i64** %5, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = ptrtoint i64* %36 to i64
  %38 = load i32, i32* @THREAD_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = xor i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = and i64 %37, %41
  %43 = load i32, i32* @THREAD_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %4, align 8
  br label %47

47:                                               ; preds = %102, %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_stack_trace, i32 0, i32 0), align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  %52 = load i64, i64* %1, align 8
  %53 = load i64*, i64** @stack_dump_index, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  %57 = load i64*, i64** %5, align 8
  store i64* %57, i64** %3, align 8
  br label %58

58:                                               ; preds = %93, %51
  %59 = load i64*, i64** %3, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = icmp ult i64* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_stack_trace, i32 0, i32 0), align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %96

68:                                               ; preds = %66
  %69 = load i64*, i64** %3, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** @stack_dump_trace, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load i64*, i64** %4, align 8
  %79 = load i64*, i64** %3, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = mul i64 %83, 8
  %85 = load i64*, i64** @stack_dump_index, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  store i64 %84, i64* %89, align 8
  store i64 %84, i64* %1, align 8
  store i32 1, i32* %7, align 4
  %90 = load i64*, i64** %3, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  store i64* %91, i64** %5, align 8
  br label %92

92:                                               ; preds = %77, %68
  br label %93

93:                                               ; preds = %92
  %94 = load i64*, i64** %3, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %3, align 8
  br label %58

96:                                               ; preds = %66
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %96
  br label %47

103:                                              ; preds = %47
  br label %104

104:                                              ; preds = %103, %32
  %105 = call i32 @__raw_spin_unlock(i32* @max_stack_lock)
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @local_irq_restore(i64 %106)
  br label %108

108:                                              ; preds = %104, %24, %20
  ret void
}

declare dso_local i32 @object_is_on_stack(i64*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i32 @save_stack_trace(%struct.TYPE_3__*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
