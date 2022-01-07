; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_dtc.c_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_dtc.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09dtc [options] <input file>\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09-h\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09\09This help text\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\09-q\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\09\09Quiet: -q suppress warnings, -qq errors, -qqq all\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09-I <input format>\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09\09Input formats are:\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\09\09\09dts - device tree source text\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\09\09\09dtb - device tree blob\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\09\09\09fs - /proc/device-tree style directory\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\09-o <output file>\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\09-O <output format>\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\09\09Output formats are:\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\09\09\09asm - assembler source\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\09-V <output version>\0A\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"\09\09Blob version to produce, defaults to %d (relevant for dtb\0A\09\09and asm output only)\0A\00", align 1
@DEFAULT_FDT_VERSION = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"\09-R <number>\0A\00", align 1
@.str.19 = private unnamed_addr constant [89 x i8] c"\09\09Make space for <number> reserve map entries (relevant for \0A\09\09dtb and asm output only)\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"\09-S <bytes>\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"\09\09Make the blob at least <bytes> long (extra space)\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"\09-p <bytes>\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"\09\09Add padding to the blob of <bytes> long (extra space)\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\09-b <number>\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\09\09Set the physical boot cpu\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\09-f\0A\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"\09\09Force - try to produce output even if the input tree has errors\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\09-v\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\09\09Print DTC version and exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* @DEFAULT_FDT_VERSION, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.19, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  %66 = call i32 @exit(i32 3) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
