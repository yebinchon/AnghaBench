; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_freebsd_note_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_freebsd_note_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@get_freebsd_note_type.buff = internal global [64 x i8] zeroinitializer, align 16
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ET_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"NT_THRMISC (thrmisc structure)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"NT_PROCSTAT_PROC (proc data)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"NT_PROCSTAT_FILES (files data)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"NT_PROCSTAT_VMMAP (vmmap data)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"NT_PROCSTAT_GROUPS (groups data)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"NT_PROCSTAT_UMASK (umask data)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"NT_PROCSTAT_RLIMIT (rlimit data)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"NT_PROCSTAT_OSREL (osreldate data)\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"NT_PROCSTAT_PSSTRINGS (ps_strings data)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"NT_PROCSTAT_AUXV (auxv data)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"NT_X86_XSTATE (x86 XSAVE extended state)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"NT_FREEBSD_ABI_TAG\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"NT_FREEBSD_NOINIT_TAG\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"NT_FREEBSD_ARCH_TAG\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unknown note type: (0x%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_freebsd_note_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_freebsd_note_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %5 = load i64, i64* @ET_CORE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 134, label %11
    i32 137, label %13
    i32 130, label %15
    i32 136, label %17
    i32 131, label %19
    i32 132, label %21
    i32 135, label %23
    i32 133, label %25
    i32 138, label %27
    i32 128, label %29
  ]

9:                                                ; preds = %7
  %10 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %48

11:                                               ; preds = %7
  %12 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %48

13:                                               ; preds = %7
  %14 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %48

15:                                               ; preds = %7
  %16 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %48

17:                                               ; preds = %7
  %18 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %48

19:                                               ; preds = %7
  %20 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %48

21:                                               ; preds = %7
  %22 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %48

23:                                               ; preds = %7
  %24 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %48

25:                                               ; preds = %7
  %26 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %48

27:                                               ; preds = %7
  %28 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i8* %28, i8** %2, align 8
  br label %48

29:                                               ; preds = %7
  %30 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %48

31:                                               ; preds = %7
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @get_note_type(i32 %32)
  store i8* %33, i8** %2, align 8
  br label %48

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  switch i32 %35, label %42 [
    i32 141, label %36
    i32 139, label %38
    i32 140, label %40
  ]

36:                                               ; preds = %34
  %37 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i8* %37, i8** %2, align 8
  br label %48

38:                                               ; preds = %34
  %39 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  store i8* %39, i8** %2, align 8
  br label %48

40:                                               ; preds = %34
  %41 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i8* %41, i8** %2, align 8
  br label %48

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_freebsd_note_type.buff, i64 0, i64 0), i32 64, i8* %45, i32 %46)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_freebsd_note_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %44, %40, %38, %36, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @get_note_type(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
