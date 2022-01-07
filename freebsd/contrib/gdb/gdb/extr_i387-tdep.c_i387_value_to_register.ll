; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_value_to_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_value_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.type = type { i32 }

@I386_MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Cannot convert non-floating-point type to floating-point register value.\00", align 1
@builtin_type_i387_ext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_value_to_register(%struct.frame_info* %0, i32 %1, %struct.type* %2, i8* %3) #0 {
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.type* %2, %struct.type** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @I386_MAX_REGISTER_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @i386_fp_regnum_p(i32 %16)
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load %struct.type*, %struct.type** %7, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_FLT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @warning(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.type*, %struct.type** %7, align 8
  %28 = load i32, i32* @builtin_type_i387_ext, align 4
  %29 = call i32 @convert_typed_floating(i8* %26, %struct.type* %27, i8* %15, i32 %28)
  %30 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @put_frame_register(%struct.frame_info* %30, i32 %31, i8* %15)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %37 [
    i32 0, label %36
    i32 1, label %36
  ]

36:                                               ; preds = %33, %33
  ret void

37:                                               ; preds = %33
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gdb_assert(i32) #2

declare dso_local i32 @i386_fp_regnum_p(i32) #2

declare dso_local i64 @TYPE_CODE(%struct.type*) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @convert_typed_floating(i8*, %struct.type*, i8*, i32) #2

declare dso_local i32 @put_frame_register(%struct.frame_info*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
