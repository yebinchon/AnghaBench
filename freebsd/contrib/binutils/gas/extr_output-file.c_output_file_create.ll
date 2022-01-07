; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_output-file.c_output_file_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_output-file.c_output_file_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't open a bfd on stdout %s\00", align 1
@TARGET_FORMAT = common dso_local global i32 0, align 4
@stdoutput = common dso_local global %struct.TYPE_5__* null, align 8
@bfd_error_invalid_target = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"selected target format '%s' unknown\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"can't create %s: %s\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@TARGET_ARCH = common dso_local global i32 0, align 4
@TARGET_MACH = common dso_local global i32 0, align 4
@flag_traditional_format = common dso_local global i64 0, align 8
@BFD_TRADITIONAL_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_file_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 45
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32, i8*, ...) @as_fatal(i32 %16, i8* %17)
  br label %43

19:                                               ; preds = %9, %1
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* @TARGET_FORMAT, align 4
  %22 = call %struct.TYPE_5__* @bfd_openw(i8* %20, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** @stdoutput, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = call i64 (...) @bfd_get_error()
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @bfd_error_invalid_target, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @TARGET_FORMAT, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32, i8*, ...) @as_fatal(i32 %30, i8* %33)
  br label %41

35:                                               ; preds = %24
  %36 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @bfd_errmsg(i64 %38)
  %40 = call i32 (i32, i8*, ...) @as_fatal(i32 %36, i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %19
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stdoutput, align 8
  %45 = load i32, i32* @bfd_object, align 4
  %46 = call i32 @bfd_set_format(%struct.TYPE_5__* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stdoutput, align 8
  %48 = load i32, i32* @TARGET_ARCH, align 4
  %49 = load i32, i32* @TARGET_MACH, align 4
  %50 = call i32 @bfd_set_arch_mach(%struct.TYPE_5__* %47, i32 %48, i32 %49)
  %51 = load i64, i64* @flag_traditional_format, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* @BFD_TRADITIONAL_FORMAT, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stdoutput, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %43
  ret void
}

declare dso_local i32 @as_fatal(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_5__* @bfd_openw(i8*, i32) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_errmsg(i64) #1

declare dso_local i32 @bfd_set_format(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
