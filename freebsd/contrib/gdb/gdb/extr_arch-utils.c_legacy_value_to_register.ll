; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_legacy_value_to_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_legacy_value_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.type = type { i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @legacy_value_to_register(%struct.frame_info* %0, i32 %1, %struct.type* %2, i8* %3) #0 {
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.type* %2, %struct.type** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.type*, %struct.type** %7, align 8
  %17 = call i32 @TYPE_LENGTH(%struct.type* %16)
  %18 = call i8* @alloca(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load %struct.type*, %struct.type** %7, align 8
  %22 = call i32 @TYPE_LENGTH(%struct.type* %21)
  %23 = call i32 @memcpy(i8* %19, i8* %20, i32 %22)
  %24 = load %struct.type*, %struct.type** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @DEPRECATED_REGISTER_CONVERT_TO_RAW(%struct.type* %24, i32 %25, i8* %26, i8* %15)
  %28 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @put_frame_register(%struct.frame_info* %28, i32 %29, i8* %15)
  %31 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @alloca(i32) #2

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_CONVERT_TO_RAW(%struct.type*, i32, i8*, i8*) #2

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
