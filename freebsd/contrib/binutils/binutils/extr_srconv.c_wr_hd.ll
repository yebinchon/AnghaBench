; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_hd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i32 }
%struct.IT_hd = type { i8*, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i64 }

@abfd = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@MTYPE_ABS_LM = common dso_local global i32 0, align 4
@MTYPE_OMS_OR_LMS = common dso_local global i32 0, align 4
@DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0200\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"H8300\00", align 1
@addrsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"C_H8/300\00", align 1
@toolname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"H8300H\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"C_H8/300H\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"H8300S\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"C_H8/300S\00", align 1
@rname_h8300 = common dso_local global i32 0, align 4
@rnames = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"C_SH\00", align 1
@rname_sh = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*)* @wr_hd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wr_hd(%struct.coff_ofile* %0) #0 {
  %2 = alloca %struct.coff_ofile*, align 8
  %3 = alloca %struct.IT_hd, align 8
  store %struct.coff_ofile* %0, %struct.coff_ofile** %2, align 8
  %4 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 20
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @abfd, align 4
  %6 = call i32 @bfd_get_file_flags(i32 %5)
  %7 = load i32, i32* @EXEC_P, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @MTYPE_ABS_LM, align 4
  %12 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 19
  store i32 %11, i32* %12, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @MTYPE_OMS_OR_LMS, align 4
  %15 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 19
  store i32 %14, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @DATE, align 4
  %18 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 18
  store i32 %17, i32* %18, align 4
  %19 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %20 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 17
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 16
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @abfd, align 4
  %26 = call i32 @bfd_get_arch(i32 %25)
  switch i32 %26, label %57 [
    i32 132, label %27
    i32 131, label %48
  ]

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 1
  store i32 8, i32* %28, align 8
  %29 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 15
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 2
  store i32 32, i32* %30, align 4
  %31 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 14
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 13
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @abfd, align 4
  %34 = call i32 @bfd_get_mach(i32 %33)
  switch i32 %34, label %44 [
    i32 130, label %35
    i32 129, label %38
    i32 128, label %41
  ]

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 4
  store i32 2, i32* %37, align 8
  store i32 2, i32* @addrsize, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** @toolname, align 8
  br label %46

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 4
  store i32 4, i32* %40, align 8
  store i32 4, i32* @addrsize, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** @toolname, align 8
  br label %46

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 4
  store i32 4, i32* %43, align 8
  store i32 4, i32* @addrsize, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** @toolname, align 8
  br label %46

44:                                               ; preds = %27
  %45 = call i32 (...) @abort() #3
  unreachable

46:                                               ; preds = %41, %38, %35
  %47 = load i32, i32* @rname_h8300, align 4
  store i32 %47, i32* @rnames, align 4
  br label %59

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 1
  store i32 8, i32* %49, align 8
  %50 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 15
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 4
  store i32 4, i32* %51, align 8
  %52 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 2
  store i32 32, i32* %52, align 4
  %53 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 14
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 13
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %55, align 8
  store i32 4, i32* @addrsize, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** @toolname, align 8
  %56 = load i32, i32* @rname_sh, align 4
  store i32 %56, i32* @rnames, align 4
  br label %59

57:                                               ; preds = %16
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %48, %46
  %60 = load i32, i32* @abfd, align 4
  %61 = call i32 @bfd_get_file_flags(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @EXEC_P, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 5
  store i32 0, i32* %69, align 4
  br label %78

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 5
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 12
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 10
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @abfd, align 4
  %76 = call i32 @bfd_get_start_address(i32 %75)
  %77 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 9
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %68
  %79 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @abfd, align 4
  %82 = call i32 @bfd_get_filename(i32 %81)
  %83 = call i32 @strip_suffix(i32 %82)
  %84 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %3, i32 0, i32 8
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @file, align 4
  %86 = call i32 @sysroff_swap_hd_out(i32 %85, %struct.IT_hd* %3)
  ret void
}

declare dso_local i32 @bfd_get_file_flags(i32) #1

declare dso_local i32 @bfd_get_arch(i32) #1

declare dso_local i32 @bfd_get_mach(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_start_address(i32) #1

declare dso_local i32 @strip_suffix(i32) #1

declare dso_local i32 @bfd_get_filename(i32) #1

declare dso_local i32 @sysroff_swap_hd_out(i32, %struct.IT_hd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
