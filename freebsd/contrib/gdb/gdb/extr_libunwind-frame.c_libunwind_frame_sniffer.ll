; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }
%struct.libunwind_descr = type { i32* }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@__BIG_ENDIAN = common dso_local global i32 0, align 4
@__LITTLE_ENDIAN = common dso_local global i32 0, align 4
@libunwind_frame_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_unwind* @libunwind_frame_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libunwind_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = call i32 @get_frame_arch(%struct.frame_info* %10)
  %12 = call %struct.libunwind_descr* @libunwind_descr(i32 %11)
  store %struct.libunwind_descr* %12, %struct.libunwind_descr** %7, align 8
  %13 = load %struct.libunwind_descr*, %struct.libunwind_descr** %7, align 8
  %14 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %18 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @__BIG_ENDIAN, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @__LITTLE_ENDIAN, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @unw_create_addr_space_p(i32* %16, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = call i32 @unw_init_remote_p(i32* %4, i32 %27, %struct.frame_info* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @unw_step_p(i32* %4)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %39

38:                                               ; preds = %34
  store %struct.frame_unwind* @libunwind_frame_unwind, %struct.frame_unwind** %2, align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %40
}

declare dso_local %struct.libunwind_descr* @libunwind_descr(i32) #1

declare dso_local i32 @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @unw_create_addr_space_p(i32*, i32) #1

declare dso_local i32 @unw_init_remote_p(i32*, i32, %struct.frame_info*) #1

declare dso_local i32 @unw_step_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
