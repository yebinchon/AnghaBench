; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_deprecated_read_register_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_deprecated_read_register_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_read_register_bytes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %109, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NUM_REGS, align 4
  %27 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %112

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DEPRECATED_REGISTER_BYTE(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %30
  br label %109

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @REGISTER_NAME(i32 %47)
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @REGISTER_NAME(i32 %51)
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @deprecated_read_register_gen(i32 %57, i8* %23)
  br label %66

59:                                               ; preds = %50, %46
  %60 = load i32*, i32** @deprecated_registers, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @memcpy(i8* %23, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i8*, i8** %5, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %109

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %14, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %15, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %105, %86
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %23, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8 %98, i8* %104, align 1
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %88

108:                                              ; preds = %88
  br label %109

109:                                              ; preds = %108, %69, %45
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %24

112:                                              ; preds = %24
  %113 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i8* @REGISTER_NAME(i32) #2

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
