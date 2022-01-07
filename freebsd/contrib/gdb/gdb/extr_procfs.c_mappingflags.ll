; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_mappingflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_mappingflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mappingflags.asciiflags = internal global [8 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [8 x i8] c"-------\00", align 1
@MA_STACK = common dso_local global i64 0, align 8
@MA_BREAK = common dso_local global i64 0, align 8
@MA_SHARED = common dso_local global i64 0, align 8
@MA_READ = common dso_local global i64 0, align 8
@MA_WRITE = common dso_local global i64 0, align 8
@MA_EXEC = common dso_local global i64 0, align 8
@MA_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @mappingflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mappingflags(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @MA_STACK, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 1), align 1
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MA_BREAK, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8 98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 2), align 1
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MA_SHARED, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 3), align 1
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @MA_READ, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8 114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 4), align 1
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @MA_WRITE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8 119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 5), align 1
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @MA_EXEC, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8 120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 6), align 1
  br label %39

39:                                               ; preds = %38, %33
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mappingflags.asciiflags, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
