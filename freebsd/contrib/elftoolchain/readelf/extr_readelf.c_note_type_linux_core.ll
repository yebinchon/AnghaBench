; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_note_type_linux_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_note_type_linux_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"NT_PRSTATUS (Process status)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"NT_FPREGSET (Floating point information)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"NT_PRPSINFO (Process information)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"NT_TASKSTRUCT (Task structure)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"NT_AUXV (Auxiliary vector)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"NT_PSTATUS (Linux process status)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"NT_FPREGS (Linux floating point regset)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"NT_PSINFO (Linux process information)\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"NT_LWPSTATUS (Linux lwpstatus_t type)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"NT_LWPSINFO (Linux lwpinfo_t type)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"NT_WIN32PSTATUS (win32_pstatus structure)\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"NT_PPC_VMX (ppc Altivec registers)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"NT_PPC_VSX (ppc VSX registers)\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"NT_X86_XSTATE (x86 XSAVE extended state)\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"NT_S390_HIGH_GPRS (s390 upper register halves)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"NT_S390_TIMER (s390 timer register)\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"NT_S390_TODCMP (s390 TOD comparator register)\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"NT_S390_TODPREG (s390 TOD programmable register)\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"NT_S390_CTRS (s390 control registers)\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"NT_S390_PREFIX (s390 prefix register)\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"NT_ARM_VFP (arm VFP registers)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"NT_FILE (mapped files)\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"NT_PRXFPREG (Linux user_xfpregs structure)\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"NT_SIGINFO (siginfo_t data)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @note_type_linux_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @note_type_linux_core(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 6, label %9
    i32 10, label %10
    i32 12, label %11
    i32 13, label %12
    i32 16, label %13
    i32 17, label %14
    i32 18, label %15
    i32 256, label %16
    i32 258, label %17
    i32 514, label %18
    i32 768, label %19
    i32 769, label %20
    i32 770, label %21
    i32 771, label %22
    i32 772, label %23
    i32 773, label %24
    i32 1024, label %25
    i32 1179208773, label %26
    i32 1189489535, label %27
    i32 1397311305, label %28
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %32

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %32

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %32

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %32

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %32

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %32

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %32

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %32

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %32

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %32

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %32

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %32

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %32

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %32

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %32

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i8* @note_type_unknown(i32 %30)
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i8* @note_type_unknown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
