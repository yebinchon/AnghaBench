; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_alt_syntax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_alt_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32, i32 }

@REG_TYPE_CN = common dso_local global i32 0, align 4
@REG_TYPE_MMXWCG = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.reg_entry*, i32)* @arm_reg_alt_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_reg_alt_syntax(i8** %0, i8* %1, %struct.reg_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.reg_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.reg_entry* %2, %struct.reg_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %55 [
    i32 129, label %12
    i32 131, label %12
    i32 128, label %12
    i32 130, label %12
    i32 133, label %26
    i32 132, label %41
  ]

12:                                               ; preds = %4, %4, %4, %4
  %13 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %14 = icmp ne %struct.reg_entry* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %17 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REG_TYPE_CN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %23 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %15, %12
  br label %56

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = call i64 @strtoul(i8* %27, i8** %28, i32 10)
  store i64 %29, i64* %10, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i64, i64* %10, align 8
  %36 = icmp ule i64 %35, 15
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %34, %26
  br label %41

41:                                               ; preds = %4, %40
  %42 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %43 = icmp ne %struct.reg_entry* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %46 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REG_TYPE_MMXWCG, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %52 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %44, %41
  br label %56

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %54, %25
  %57 = load i32, i32* @FAIL, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %50, %37, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
