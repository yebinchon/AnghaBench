; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_longjmp_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_longjmp_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32 }

@INT_REGISTER_SIZE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @arm_get_longjmp_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_get_longjmp_target(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @current_gdbarch, align 4
  %14 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %13)
  store %struct.gdbarch_tdep* %14, %struct.gdbarch_tdep** %7, align 8
  %15 = load i32, i32* @ARM_A1_REGNUM, align 4
  %16 = call i64 @read_register(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %19 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %22 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %17, %25
  %27 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %28 = call i64 @target_read_memory(i64 %26, i8* %12, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %33 = call i64 @extract_unsigned_integer(i8* %12, i32 %32)
  %34 = load i64*, i64** %3, align 8
  store i64 %33, i64* %34, align 8
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #2

declare dso_local i64 @read_register(i32) #2

declare dso_local i64 @target_read_memory(i64, i8*, i32) #2

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
