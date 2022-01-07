; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_on_each_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_on_each_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type opaque
%struct.module.0 = type opaque

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@kallsyms_num_syms = common dso_local global i64 0, align 8
@kallsyms_addresses = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kallsyms_on_each_symbol(i32 (i8*, i8*, %struct.module*, i64)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i8*, i8*, %struct.module*, i64)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 (i8*, i8*, %struct.module*, i64)* %0, i32 (i8*, i8*, %struct.module*, i64)** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @KSYM_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @kallsyms_num_syms, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @kallsyms_expand_symbol(i32 %21, i8* %15)
  store i32 %22, i32* %9, align 4
  %23 = load i32 (i8*, i8*, %struct.module*, i64)*, i32 (i8*, i8*, %struct.module*, i64)** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64*, i64** @kallsyms_addresses, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %23(i8* %24, i8* %15, %struct.module* null, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load i32 (i8*, i8*, %struct.module*, i64)*, i32 (i8*, i8*, %struct.module*, i64)** %4, align 8
  %40 = bitcast i32 (i8*, i8*, %struct.module*, i64)* %39 to i32 (i8*, i8*, %struct.module.0*, i64)*
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @module_kallsyms_on_each_symbol(i32 (i8*, i8*, %struct.module.0*, i64)* %40, i8* %41)
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kallsyms_expand_symbol(i32, i8*) #2

declare dso_local i32 @module_kallsyms_on_each_symbol(i32 (i8*, i8*, %struct.module.0*, i64)*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
