; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_flush_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_flush_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"\09%s\090x%08x\09%s Starting RVA for chunk\0A\00", align 1
@ASM_LONG = common dso_local global i8* null, align 8
@ASM_C = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"\09%s\090x%x\09%s Size of block\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\09%s\090x%lx\0A\00", align 1
@ASM_SHORT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\09%s\090x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32, i32)* @flush_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_page(i32* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** @ASM_LONG, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** @ASM_C, align 8
  %15 = call i32 (i32*, i8*, i8*, i32, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i8* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** @ASM_LONG, align 8
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 2
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 1
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %19, %22
  %24 = add nsw i32 %23, 8
  %25 = load i8*, i8** @ASM_C, align 8
  %26 = call i32 (i32*, i8*, i8*, i32, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %24, i8* %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %52, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = or i64 %43, 12288
  %45 = and i64 %44, 65535
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %39, %31
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** @ASM_SHORT, align 8
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i32*, i8*, i8*, i32, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** @ASM_SHORT, align 8
  %62 = call i32 (i32*, i8*, i8*, i32, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 0)
  br label %63

63:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
