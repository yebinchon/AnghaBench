; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_set_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_set_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.libunwind_descr = type { i32, i32, i32, i32 }

@libunwind_descr_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libunwind_frame_set_descr(%struct.gdbarch* %0, %struct.libunwind_descr* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.libunwind_descr*, align 8
  %5 = alloca %struct.libunwind_descr*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.libunwind_descr* %1, %struct.libunwind_descr** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = icmp ne %struct.gdbarch* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @gdb_assert(i32 %8)
  %10 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %11 = load i32, i32* @libunwind_descr_handle, align 4
  %12 = call %struct.libunwind_descr* @gdbarch_data(%struct.gdbarch* %10, i32 %11)
  store %struct.libunwind_descr* %12, %struct.libunwind_descr** %5, align 8
  %13 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %14 = icmp eq %struct.libunwind_descr* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %17 = call %struct.libunwind_descr* @libunwind_descr_init(%struct.gdbarch* %16)
  store %struct.libunwind_descr* %17, %struct.libunwind_descr** %5, align 8
  %18 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %19 = load i32, i32* @libunwind_descr_handle, align 4
  %20 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %21 = call i32 @set_gdbarch_data(%struct.gdbarch* %18, i32 %19, %struct.libunwind_descr* %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.libunwind_descr*, %struct.libunwind_descr** %4, align 8
  %24 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %27 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.libunwind_descr*, %struct.libunwind_descr** %4, align 8
  %29 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %32 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.libunwind_descr*, %struct.libunwind_descr** %4, align 8
  %34 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %37 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.libunwind_descr*, %struct.libunwind_descr** %4, align 8
  %39 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.libunwind_descr*, %struct.libunwind_descr** %5, align 8
  %42 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.libunwind_descr* @gdbarch_data(%struct.gdbarch*, i32) #1

declare dso_local %struct.libunwind_descr* @libunwind_descr_init(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_data(%struct.gdbarch*, i32, %struct.libunwind_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
