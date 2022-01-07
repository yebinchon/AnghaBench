; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-linux.c_linux_gt_pch_get_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_host-linux.c_linux_gt_pch_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRY_EMPTY_VM_SPACE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"/proc/sys/kernel/randomize_va_space\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"/proc/sys/kernel/exec-shield-randomize\00", align 1
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @linux_gt_pch_get_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linux_gt_pch_get_address(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 33554432, i64* %6, align 8
  %13 = load i64, i64* @TRY_EMPTY_VM_SPACE, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @PROT_READ, align 4
  %17 = load i32, i32* @PROT_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAP_PRIVATE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @mmap(i8* %14, i64 %15, i32 %18, i32 %19, i32 %20, i32 0)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* @MAP_FAILED, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = icmp eq i8* %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %103

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @munmap(i8* %28, i64 %29)
  %31 = load i64, i64* @TRY_EMPTY_VM_SPACE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* @TRY_EMPTY_VM_SPACE, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = icmp eq i8* %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %3, align 8
  br label %103

40:                                               ; preds = %33, %27
  %41 = call i32* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32* @fopen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %44, %40
  store i32 0, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @fread(i8* %50, i32 1, i32 99, i32* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %59 = call i64 @atoi(i8* %58)
  %60 = icmp sgt i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @fclose(i32* %63)
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %3, align 8
  br label %103

70:                                               ; preds = %65
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @PROT_NONE, align 4
  %73 = load i32, i32* @MAP_PRIVATE, align 4
  %74 = load i32, i32* @MAP_ANON, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @mmap(i8* null, i64 %71, i32 %72, i32 %75, i32 -1, i32 0)
  store i8* %76, i8** %8, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* @PROT_READ, align 4
  %79 = load i32, i32* @PROT_WRITE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MAP_PRIVATE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i8* @mmap(i8* null, i64 %77, i32 %80, i32 %81, i32 %82, i32 0)
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* @MAP_FAILED, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = icmp ne i8* %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %70
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @munmap(i8* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %70
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* @MAP_FAILED, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = icmp eq i8* %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i8* null, i8** %3, align 8
  br label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @munmap(i8* %99, i64 %100)
  %102 = load i8*, i8** %7, align 8
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %98, %97, %68, %38, %26
  %104 = load i8*, i8** %3, align 8
  ret i8* %104
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
