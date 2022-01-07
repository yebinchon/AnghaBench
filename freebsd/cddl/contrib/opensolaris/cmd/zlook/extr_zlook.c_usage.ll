; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zlook/extr_zlook.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zlook/extr_zlook.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Usage:\0A    %s -l [-is] dir-to-look-in file-in-dir [xfile-on-file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"    %s -i [-ls] dir-to-look-in file-in-dir [xfile-on-file]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"    %s -s [-il] dir-to-look-in file-in-dir [xfile-on-file]\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\09    Perform a lookup\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09    -l == lookup\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\09    -i == request FIGNORECASE\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09    -s == request stat(2) and xvattr info\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"    %s -r [-ea] [-b buffer-size-in-bytes] dir-to-look-in [file-in-dir]\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"    %s -e [-ra] [-b buffer-size-in-bytes] dir-to-look-in [file-in-dir]\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"    %s -a [-re] [-b buffer-size-in-bytes] dir-to-look-in [file-in-dir]\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\09    Perform a readdir\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\09    -r == readdir\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\09    -e == request extended entries\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\09    -a == request access filtering\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\09    -b == buffer size (default 4K)\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"    %s -A path\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"\09    Look up _PC_ACCESS_FILTERING for path with pathconf(2)\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"    %s -E path\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"\09    Look up _PC_SATTR_EXISTS for path with pathconf(2)\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"    %s -S path\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @exit(i32 %54) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
