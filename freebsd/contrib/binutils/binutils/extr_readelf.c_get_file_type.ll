; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_file_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_file_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_file_type.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"NONE (None)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"REL (Relocatable file)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EXEC (Executable file)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DYN (Shared object file)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CORE (Core file)\00", align 1
@ET_LOPROC = common dso_local global i32 0, align 4
@ET_HIPROC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Processor Specific: (%x)\00", align 1
@ET_LOOS = common dso_local global i32 0, align 4
@ET_HIOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"OS Specific: (%x)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<unknown>: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_file_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_file_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 129, label %5
    i32 128, label %7
    i32 130, label %9
    i32 131, label %11
    i32 132, label %13
  ]

5:                                                ; preds = %1
  %6 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %45

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %45

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ET_LOPROC, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ET_HIPROC, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_file_type.buff, i64 0, i64 0), i32 32, i8* %24, i32 %25)
  br label %44

27:                                               ; preds = %19, %15
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ET_LOOS, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ET_HIOS, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_file_type.buff, i64 0, i64 0), i32 32, i8* %36, i32 %37)
  br label %43

39:                                               ; preds = %31, %27
  %40 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_file_type.buff, i64 0, i64 0), i32 32, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %23
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_file_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %44, %13, %11, %9, %7, %5
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
