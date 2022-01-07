; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_store_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_store_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.return_value_word = type { i32, i32, i64, i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*)* @mips_eabi_store_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_eabi_store_return_value(%struct.type* %0, i8* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.return_value_word, align 8
  %8 = alloca %struct.return_value_word, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @return_value_location(%struct.type* %13, %struct.return_value_word* %8, %struct.return_value_word* %7)
  %15 = trunc i64 %10 to i32
  %16 = call i32 @memset(i8* %12, i32 0, i32 %15)
  %17 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %12, i64 %19
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @memcpy(i8* %20, i8* %25, i64 %27)
  %29 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DEPRECATED_REGISTER_BYTE(i32 %30)
  %32 = load i32, i32* @current_gdbarch, align 4
  %33 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @register_size(i32 %32, i32 %34)
  %36 = call i32 @deprecated_write_register_bytes(i32 %31, i8* %12, i32 %35)
  %37 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %2
  %41 = trunc i64 %10 to i32
  %42 = call i32 @memset(i8* %12, i32 0, i32 %41)
  %43 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %12, i64 %45
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i8* %46, i8* %51, i64 %53)
  %55 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DEPRECATED_REGISTER_BYTE(i32 %56)
  %58 = load i32, i32* @current_gdbarch, align 4
  %59 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @register_size(i32 %58, i32 %60)
  %62 = call i32 @deprecated_write_register_bytes(i32 %57, i8* %12, i32 %61)
  br label %63

63:                                               ; preds = %40, %2
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @return_value_location(%struct.type*, %struct.return_value_word*, %struct.return_value_word*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @deprecated_write_register_bytes(i32, i8*, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i32) #2

declare dso_local i32 @register_size(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
