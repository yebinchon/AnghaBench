; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_get_longjmp_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_get_longjmp_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@builtin_type_void_func_ptr = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @i386_get_longjmp_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_get_longjmp_target(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @builtin_type_void_func_ptr, align 4
  %14 = call i32 @TYPE_LENGTH(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load i32, i32* @current_regcache, align 4
  %20 = load i32, i32* @SP_REGNUM, align 4
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %22 = call i32 @regcache_cooked_read(i32 %19, i32 %20, i8* %21)
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %25 = call i64 @extract_typed_address(i8* %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @target_read_memory(i64 %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %53

35:                                               ; preds = %18
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %37 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %38 = call i64 @extract_typed_address(i8* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @target_read_memory(i64 %42, i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %35
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %50 = load i32, i32* @builtin_type_void_func_ptr, align 4
  %51 = call i64 @extract_typed_address(i8* %49, i32 %50)
  %52 = load i64*, i64** %3, align 8
  store i64 %51, i64* %52, align 8
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %47, %34, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @regcache_cooked_read(i32, i32, i8*) #1

declare dso_local i64 @extract_typed_address(i8*, i32) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
