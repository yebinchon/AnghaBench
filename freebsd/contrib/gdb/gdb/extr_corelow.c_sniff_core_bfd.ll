; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_sniff_core_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_sniff_core_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_fns = type { i64 (%struct.core_fns*, i32*)*, %struct.core_fns* }

@core_gdbarch = common dso_local global i64 0, align 8
@core_file_fns = common dso_local global %struct.core_fns* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"\22%s\22: ambiguous core format, %d handlers match\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\22%s\22: no core file handler recognizes format, using default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.core_fns* (i32*)* @sniff_core_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.core_fns* @sniff_core_bfd(i32* %0) #0 {
  %2 = alloca %struct.core_fns*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.core_fns*, align 8
  %5 = alloca %struct.core_fns*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.core_fns* null, %struct.core_fns** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @core_gdbarch, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i64, i64* @core_gdbarch, align 8
  %11 = call i64 @gdbarch_regset_from_core_section_p(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store %struct.core_fns* null, %struct.core_fns** %2, align 8
  br label %59

14:                                               ; preds = %9, %1
  %15 = load %struct.core_fns*, %struct.core_fns** @core_file_fns, align 8
  store %struct.core_fns* %15, %struct.core_fns** %4, align 8
  br label %16

16:                                               ; preds = %32, %14
  %17 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %18 = icmp ne %struct.core_fns* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %21 = getelementptr inbounds %struct.core_fns, %struct.core_fns* %20, i32 0, i32 0
  %22 = load i64 (%struct.core_fns*, i32*)*, i64 (%struct.core_fns*, i32*)** %21, align 8
  %23 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 %22(%struct.core_fns* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  store %struct.core_fns* %28, %struct.core_fns** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %19
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %34 = getelementptr inbounds %struct.core_fns, %struct.core_fns* %33, i32 0, i32 1
  %35 = load %struct.core_fns*, %struct.core_fns** %34, align 8
  store %struct.core_fns* %35, %struct.core_fns** %4, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @bfd_get_filename(i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %52

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @bfd_get_filename(i32* %48)
  %50 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.core_fns*, %struct.core_fns** %5, align 8
  %54 = icmp eq %struct.core_fns* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load %struct.core_fns*, %struct.core_fns** @core_file_fns, align 8
  store %struct.core_fns* %56, %struct.core_fns** %5, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.core_fns*, %struct.core_fns** %5, align 8
  store %struct.core_fns* %58, %struct.core_fns** %2, align 8
  br label %59

59:                                               ; preds = %57, %13
  %60 = load %struct.core_fns*, %struct.core_fns** %2, align 8
  ret %struct.core_fns* %60
}

declare dso_local i64 @gdbarch_regset_from_core_section_p(i64) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
