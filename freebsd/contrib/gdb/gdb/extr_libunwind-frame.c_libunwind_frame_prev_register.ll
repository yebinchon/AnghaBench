; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.libunwind_frame_cache = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.libunwind_descr = type { i64 (i32)*, i64 (i64)* }

@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No registers.\00", align 1
@not_lval = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@lval_register = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libunwind_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.libunwind_frame_cache*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.libunwind_descr*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %27 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %28 = load i8**, i8*** %10, align 8
  %29 = call %struct.libunwind_frame_cache* @libunwind_frame_cache(%struct.frame_info* %27, i8** %28)
  store %struct.libunwind_frame_cache* %29, %struct.libunwind_frame_cache** %17, align 8
  %30 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %31 = call i32 @get_frame_arch(%struct.frame_info* %30)
  %32 = call %struct.libunwind_descr* @libunwind_descr(i32 %31)
  store %struct.libunwind_descr* %32, %struct.libunwind_descr** %26, align 8
  %33 = load %struct.libunwind_descr*, %struct.libunwind_descr** %26, align 8
  %34 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %33, i32 0, i32 0
  %35 = load i64 (i32)*, i64 (i32)** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 %35(i32 %36)
  store i64 %37, i64* %25, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @gdb_assert(i32 %40)
  %42 = load i32, i32* @target_has_registers, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %8
  %45 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %8
  %47 = load i32*, i32** %12, align 8
  store i32 0, i32* %47, align 4
  %48 = load i64*, i64** %14, align 8
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @not_lval, align 4
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %15, align 8
  store i32 -1, i32* %51, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* @current_gdbarch, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @register_size(i32 %53, i32 %54)
  %56 = call i32 @memset(i8* %52, i32 0, i32 %55)
  %57 = load i64, i64* %25, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %113

60:                                               ; preds = %46
  %61 = load %struct.libunwind_descr*, %struct.libunwind_descr** %26, align 8
  %62 = getelementptr inbounds %struct.libunwind_descr, %struct.libunwind_descr* %61, i32 0, i32 1
  %63 = load i64 (i64)*, i64 (i64)** %62, align 8
  %64 = load i64, i64* %25, align 8
  %65 = call i64 %63(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.libunwind_frame_cache*, %struct.libunwind_frame_cache** %17, align 8
  %69 = getelementptr inbounds %struct.libunwind_frame_cache, %struct.libunwind_frame_cache* %68, i32 0, i32 0
  %70 = load i64, i64* %25, align 8
  %71 = call i32 @unw_get_fpreg_p(i32* %69, i64 %70, i32* %24)
  store i32 %71, i32* %22, align 4
  %72 = bitcast i32* %24 to i8*
  store i8* %72, i8** %18, align 8
  br label %79

73:                                               ; preds = %60
  %74 = load %struct.libunwind_frame_cache*, %struct.libunwind_frame_cache** %17, align 8
  %75 = getelementptr inbounds %struct.libunwind_frame_cache, %struct.libunwind_frame_cache* %74, i32 0, i32 0
  %76 = load i64, i64* %25, align 8
  %77 = call i32 @unw_get_reg_p(i32* %75, i64 %76, i32* %23)
  store i32 %77, i32* %22, align 4
  %78 = bitcast i32* %23 to i8*
  store i8* %78, i8** %18, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %22, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %113

83:                                               ; preds = %79
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = load i32, i32* @current_gdbarch, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @register_size(i32 %86, i32 %87)
  %89 = call i32 @memcpy(i8* %84, i8* %85, i32 %88)
  %90 = load %struct.libunwind_frame_cache*, %struct.libunwind_frame_cache** %17, align 8
  %91 = getelementptr inbounds %struct.libunwind_frame_cache, %struct.libunwind_frame_cache* %90, i32 0, i32 0
  %92 = load i64, i64* %25, align 8
  %93 = call i64 @unw_get_saveloc_p(i32* %91, i64 %92, %struct.TYPE_5__* %20)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %113

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %113 [
    i32 129, label %99
    i32 130, label %101
    i32 128, label %108
  ]

99:                                               ; preds = %96
  %100 = load i32*, i32** %12, align 8
  store i32 1, i32* %100, align 4
  br label %113

101:                                              ; preds = %96
  %102 = load i32, i32* @lval_memory, align 4
  %103 = load i32*, i32** %13, align 8
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %14, align 8
  store i64 %106, i64* %107, align 8
  br label %113

108:                                              ; preds = %96
  %109 = load i32, i32* @lval_register, align 4
  %110 = load i32*, i32** %13, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %15, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %59, %82, %95, %96, %108, %101, %99
  ret void
}

declare dso_local %struct.libunwind_frame_cache* @libunwind_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local %struct.libunwind_descr* @libunwind_descr(i32) #1

declare dso_local i32 @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i32 @unw_get_fpreg_p(i32*, i64, i32*) #1

declare dso_local i32 @unw_get_reg_p(i32*, i64, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @unw_get_saveloc_p(i32*, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
