; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_print_sysv_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_print_sysv_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svi_total = common dso_local global i64 0, align 8
@svi_maxvma = common dso_local global i64 0, align 8
@svi_namelen = common dso_local global i8* null, align 8
@sysv_internal_sizer = common dso_local global i32 0, align 4
@svi_vmalen = common dso_local global i8* null, align 8
@svi_sizelen = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" (ex %s)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c":\0A%-*s   %*s   %*s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@sysv_internal_printer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%-*s   \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_sysv_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sysv_format(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* @svi_total, align 8
  store i64 0, i64* @svi_maxvma, align 8
  store i8* null, i8** @svi_namelen, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @sysv_internal_sizer, align 4
  %5 = call i32 @bfd_map_over_sections(i32* %3, i32 %4, i32* null)
  %6 = load i64, i64* @svi_maxvma, align 8
  %7 = call i8* @size_number(i64 %6)
  store i8* %7, i8** @svi_vmalen, align 8
  %8 = load i8*, i8** @svi_vmalen, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* inttoptr (i64 4 to i8*), i8** @svi_vmalen, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i64, i64* @svi_total, align 8
  %14 = call i8* @size_number(i64 %13)
  store i8* %14, i8** @svi_sizelen, align 8
  %15 = load i8*, i8** @svi_sizelen, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* inttoptr (i64 4 to i8*), i8** @svi_sizelen, align 8
  br label %19

19:                                               ; preds = %18, %12
  store i64 0, i64* @svi_total, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i8* @bfd_get_filename(i32* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @bfd_my_archive(i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @bfd_my_archive(i32* %27)
  %29 = call i8* @bfd_get_filename(i32* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i8*, i8** @svi_namelen, align 8
  %33 = load i8*, i8** @svi_sizelen, align 8
  %34 = load i8*, i8** @svi_vmalen, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @sysv_internal_printer, align 4
  %38 = call i32 @bfd_map_over_sections(i32* %36, i32 %37, i32* null)
  %39 = load i8*, i8** @svi_namelen, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %41 = load i8*, i8** @svi_sizelen, align 8
  %42 = load i64, i64* @svi_total, align 8
  %43 = call i32 @rprint_number(i8* %41, i64 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i32*) #1

declare dso_local i8* @size_number(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32* @bfd_my_archive(i32*) #1

declare dso_local i32 @rprint_number(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
