; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_read_dld_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_read_dld_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.target_ops = type { i32 }

@dld_cache = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@symfile_objfile = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"No object file symbols.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to read in .dynamic section information.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Error while reading in load map pointer.\00", align 1
@pa64_target_read_memory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Error trying to get information about dynamic linker.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32)* @read_dld_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dld_descriptor(%struct.target_ops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 4), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @bfd_get_section_by_name(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @read_dynamic_info(i32* %24, %struct.TYPE_5__* @dld_cache)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 3), align 4
  %32 = call i64 @target_read_memory(i32 %31, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 2) to i8*), i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* @pa64_target_read_memory, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 2), align 4
  %39 = call i64 @dlgetmodinfo(i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 1), i32 4, i32 %37, i32 0, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 0), align 4
  %44 = load i32, i32* @pa64_target_read_memory, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 2), align 4
  %46 = call i8* @dlgetname(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 1), i32 4, i32 %44, i32 0, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.target_ops*, %struct.target_ops** %4, align 8
  %50 = call i32 @add_to_solist(i32 0, i8* %47, i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dld_cache, i32 0, i32 1), i32 0, %struct.target_ops* %49)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @read_dynamic_info(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

declare dso_local i64 @dlgetmodinfo(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @dlgetname(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @add_to_solist(i32, i8*, i32, i32*, i32, %struct.target_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
