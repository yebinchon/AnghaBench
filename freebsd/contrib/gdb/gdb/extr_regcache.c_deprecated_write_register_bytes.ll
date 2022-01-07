; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_deprecated_write_register_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_deprecated_write_register_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_write_register_bytes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @target_prepare_to_store()
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %89, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NUM_REGS, align 4
  %22 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DEPRECATED_REGISTER_BYTE(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %29)
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %25
  br label %88

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = call i32 @deprecated_write_register_gen(i32 %49, i8* %55)
  br label %87

57:                                               ; preds = %44, %40
  %58 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %11, align 8
  %61 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @max(i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @min(i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @deprecated_read_register_gen(i32 %68, i8* %61)
  %70 = load i32*, i32** @deprecated_registers, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @memcpy(i32* %73, i8* %79, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @target_store_registers(i32 %84)
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %57, %48
  br label %88

88:                                               ; preds = %87, %39
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %19

92:                                               ; preds = %19
  ret void
}

declare dso_local i32 @target_prepare_to_store(...) #1

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @deprecated_write_register_gen(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @target_store_registers(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
