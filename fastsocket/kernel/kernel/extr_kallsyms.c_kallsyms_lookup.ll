; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSYM_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kallsyms_lookup(i64 %0, i64* %1, i64* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = load i32, i32* @KSYM_NAME_LEN, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @is_ksym_addr(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = load i64, i64* %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i64 @get_symbol_pos(i64 %24, i64* %25, i64* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @get_symbol_offset(i64 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @kallsyms_expand_symbol(i32 %29, i8* %30)
  %32 = load i8**, i8*** %10, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i8**, i8*** %10, align 8
  store i8* null, i8** %35, align 8
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i8*, i8** %11, align 8
  store i8* %37, i8** %6, align 8
  br label %45

38:                                               ; preds = %5
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @module_address_lookup(i64 %39, i64* %40, i64* %41, i8** %42, i8* %43)
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i8*, i8** %6, align 8
  ret i8* %46
}

declare dso_local i64 @is_ksym_addr(i64) #1

declare dso_local i64 @get_symbol_pos(i64, i64*, i64*) #1

declare dso_local i32 @kallsyms_expand_symbol(i32, i8*) #1

declare dso_local i32 @get_symbol_offset(i64) #1

declare dso_local i8* @module_address_lookup(i64, i64*, i64*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
