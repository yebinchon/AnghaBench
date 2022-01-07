; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_o64_extract_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_o64_extract_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.return_value_word = type { i32, i32, i64, i64 }

@NUM_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, i8*)* @mips_o64_extract_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_o64_extract_return_value(%struct.type* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.return_value_word, align 8
  %8 = alloca %struct.return_value_word, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @return_value_location(%struct.type* %9, %struct.return_value_word* %8, %struct.return_value_word* %7)
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* @NUM_REGS, align 8
  %18 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %17, %19
  %21 = call i32 @DEPRECATED_REGISTER_BYTE(i64 %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %16, i64 %22
  %24 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %7, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcpy(i8* %15, i8* %27, i64 %29)
  %31 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* @NUM_REGS, align 8
  %42 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = call i32 @DEPRECATED_REGISTER_BYTE(i64 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %40, i64 %46
  %48 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %8, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i8* %39, i8* %51, i64 %53)
  br label %55

55:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @return_value_location(%struct.type*, %struct.return_value_word*, %struct.return_value_word*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
