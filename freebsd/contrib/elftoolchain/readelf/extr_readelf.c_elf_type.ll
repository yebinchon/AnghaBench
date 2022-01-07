; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_elf_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_elf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@elf_type.s_type = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"NONE (None)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"REL (Relocatable file)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EXEC (Executable file)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DYN (Shared object file)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CORE (Core file)\00", align 1
@ET_LOPROC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"<proc: %#x>\00", align 1
@ET_LOOS = common dso_local global i32 0, align 4
@ET_HIOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"<os: %#x>\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"<unknown: %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @elf_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %10 [
    i32 129, label %5
    i32 128, label %6
    i32 130, label %7
    i32 131, label %8
    i32 132, label %9
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %33

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %33

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ET_LOPROC, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @elf_type.s_type, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  br label %32

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ET_LOOS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ET_HIOS, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @elf_type.s_type, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @elf_type.s_type, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %14
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @elf_type.s_type, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %32, %9, %8, %7, %6, %5
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
