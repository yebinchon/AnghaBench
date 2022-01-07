; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_fp_encoding_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_fp_encoding_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fp_encoding_to_str.encs = internal constant [13 x i8*] [i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"COMPLEX\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DCOMPLEX\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"LDCOMPLEX\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LDOUBLE\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"INTERVAL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DINTERVAL\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"LDINTERVAL\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"IMAGINARY\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"DIMAGINARY\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"LDIMAGINARY\00", align 1
@fp_encoding_to_str.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @fp_encoding_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fp_encoding_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 13
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fp_encoding_to_str.buf, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %11)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fp_encoding_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %18

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [13 x i8*], [13 x i8*]* @fp_encoding_to_str.encs, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
