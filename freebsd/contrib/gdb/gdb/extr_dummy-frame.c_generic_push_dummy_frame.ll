; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_push_dummy_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_push_dummy_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { %struct.dummy_frame*, i32, i32, i32, i64, i32, i32 }

@dummy_frame_stack = common dso_local global %struct.dummy_frame* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_push_dummy_frame() #0 {
  %1 = alloca %struct.dummy_frame*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @get_current_frame()
  %4 = call i32 @get_frame_base(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %5, %struct.dummy_frame** %1, align 8
  br label %6

6:                                                ; preds = %31, %0
  %7 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %8 = icmp ne %struct.dummy_frame* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %11 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @INNER_THAN(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %18 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %17, i32 0, i32 0
  %19 = load %struct.dummy_frame*, %struct.dummy_frame** %18, align 8
  store %struct.dummy_frame* %19, %struct.dummy_frame** @dummy_frame_stack, align 8
  %20 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %21 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regcache_xfree(i32 %22)
  %24 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %25 = call i32 @xfree(%struct.dummy_frame* %24)
  %26 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %26, %struct.dummy_frame** %1, align 8
  br label %31

27:                                               ; preds = %9
  %28 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %29 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %28, i32 0, i32 0
  %30 = load %struct.dummy_frame*, %struct.dummy_frame** %29, align 8
  store %struct.dummy_frame* %30, %struct.dummy_frame** %1, align 8
  br label %31

31:                                               ; preds = %27, %16
  br label %6

32:                                               ; preds = %6
  %33 = call %struct.dummy_frame* @xmalloc(i32 40)
  store %struct.dummy_frame* %33, %struct.dummy_frame** %1, align 8
  %34 = load i32, i32* @current_gdbarch, align 4
  %35 = call i32 @regcache_xmalloc(i32 %34)
  %36 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %37 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = call i32 (...) @read_pc()
  %39 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %40 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = call i32 (...) @read_sp()
  %42 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %43 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %45 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %2, align 4
  %47 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %48 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = call i32 (...) @get_current_frame()
  %50 = call i32 @get_frame_id(i32 %49)
  %51 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %52 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %54 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @current_regcache, align 4
  %57 = call i32 @regcache_cpy(i32 %55, i32 %56)
  %58 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  %59 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %60 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %59, i32 0, i32 0
  store %struct.dummy_frame* %58, %struct.dummy_frame** %60, align 8
  %61 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  store %struct.dummy_frame* %61, %struct.dummy_frame** @dummy_frame_stack, align 8
  ret void
}

declare dso_local i32 @get_frame_base(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i64 @INNER_THAN(i32, i32) #1

declare dso_local i32 @regcache_xfree(i32) #1

declare dso_local i32 @xfree(%struct.dummy_frame*) #1

declare dso_local %struct.dummy_frame* @xmalloc(i32) #1

declare dso_local i32 @regcache_xmalloc(i32) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @get_frame_id(i32) #1

declare dso_local i32 @regcache_cpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
