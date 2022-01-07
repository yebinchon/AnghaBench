; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_read_fp_register_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_read_fp_register_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't read register %d (%s)\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, i8*)* @mips_read_fp_register_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_read_fp_register_single(%struct.frame_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @current_gdbarch, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @register_size(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @alloca(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @frame_register_read(%struct.frame_info* %15, i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @REGISTER_NAME(i32 %22)
  %24 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %30 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 4, i32* %9, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i32 @memcpy(i8* %35, i8* %39, i32 4)
  br label %45

41:                                               ; preds = %25
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @memcpy(i8* %42, i8* %43, i32 4)
  br label %45

45:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @frame_register_read(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
