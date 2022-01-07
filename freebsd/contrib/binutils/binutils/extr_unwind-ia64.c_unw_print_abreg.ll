; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_print_abreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_print_abreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unw_print_abreg.special_reg = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"psp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"@priunat\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ar.bsp\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ar.bspstore\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ar.rnat\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ar.unat\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ar.fpsr\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ar.pfs\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ar.lc\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Unknown11\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Unknown12\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Unknown13\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Unknown14\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Unknown15\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"r%u\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"f%u\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"b%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @unw_print_abreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unw_print_abreg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 3
  switch i32 %7, label %31 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %18
    i32 3, label %23
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 31
  %12 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %11)
  br label %31

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 31
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %16)
  br label %31

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 31
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %21)
  br label %31

23:                                               ; preds = %2
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 15
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8*], [16 x i8*]* @unw_print_abreg.special_reg, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcpy(i8* %24, i8* %29)
  br label %31

31:                                               ; preds = %2, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
