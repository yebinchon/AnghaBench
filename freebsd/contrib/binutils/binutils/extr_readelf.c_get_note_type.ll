; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_note_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_note_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@get_note_type.buff = internal global [64 x i8] zeroinitializer, align 16
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ET_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"NT_AUXV (auxiliary vector)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"NT_PRSTATUS (prstatus structure)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"NT_FPREGSET (floating point registers)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"NT_PRPSINFO (prpsinfo structure)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"NT_TASKSTRUCT (task structure)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"NT_PRXFPREG (user_xfpregs structure)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"NT_PSTATUS (pstatus structure)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NT_FPREGS (floating point registers)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"NT_PSINFO (psinfo structure)\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"NT_LWPSTATUS (lwpstatus_t structure)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"NT_LWPSINFO (lwpsinfo_t structure)\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"NT_WIN32PSTATUS (win32_pstatus structure)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"NT_FILE\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"NT_SIGINFO\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"NT_VERSION (version)\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"NT_ARCH (architecture)\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Unknown note type: (0x%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_note_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_note_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %5 = load i64, i64* @ET_CORE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %37 [
    i32 142, label %9
    i32 135, label %11
    i32 139, label %13
    i32 136, label %15
    i32 130, label %17
    i32 134, label %19
    i32 132, label %21
    i32 140, label %23
    i32 133, label %25
    i32 137, label %27
    i32 138, label %29
    i32 128, label %31
    i32 141, label %33
    i32 131, label %35
  ]

9:                                                ; preds = %7
  %10 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %51

11:                                               ; preds = %7
  %12 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %51

13:                                               ; preds = %7
  %14 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %51

15:                                               ; preds = %7
  %16 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %51

17:                                               ; preds = %7
  %18 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %51

19:                                               ; preds = %7
  %20 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %51

21:                                               ; preds = %7
  %22 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %51

23:                                               ; preds = %7
  %24 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %51

25:                                               ; preds = %7
  %26 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %51

27:                                               ; preds = %7
  %28 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  store i8* %28, i8** %2, align 8
  br label %51

29:                                               ; preds = %7
  %30 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %51

31:                                               ; preds = %7
  %32 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %51

33:                                               ; preds = %7
  %34 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %34, i8** %2, align 8
  br label %51

35:                                               ; preds = %7
  %36 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i8* %36, i8** %2, align 8
  br label %51

37:                                               ; preds = %7
  br label %38

38:                                               ; preds = %37
  br label %47

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %45 [
    i32 129, label %41
    i32 143, label %43
  ]

41:                                               ; preds = %39
  %42 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i8* %42, i8** %2, align 8
  br label %51

43:                                               ; preds = %39
  %44 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %51

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %38
  %48 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_note_type.buff, i64 0, i64 0), i32 64, i8* %48, i32 %49)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_note_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %51

51:                                               ; preds = %47, %43, %41, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
