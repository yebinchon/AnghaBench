; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_gcore_copy_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_gcore_copy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@SEC_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Not enough memory to create corefile.\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Memory read failed for corefile section, %s bytes at 0x%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to write corefile contents (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @gcore_copy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcore_copy_callback(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @bfd_section_size(i32* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  store %struct.cleanup* null, %struct.cleanup** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @bfd_get_section_flags(i32* %13, i32* %14)
  %16 = load i32, i32* @SEC_LOAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %67

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bfd_section_name(i32* %21, i32* %22)
  %24 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %67

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @xmalloc(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* @xfree, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call %struct.cleanup* @make_cleanup(i32 %35, i8* %36)
  store %struct.cleanup* %37, %struct.cleanup** %8, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @bfd_section_vma(i32* %38, i32* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @target_read_memory(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @paddr_d(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @bfd_section_vma(i32* %48, i32* %49)
  %51 = call i32 @paddr(i32 %50)
  %52 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %45, %34
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @bfd_set_section_contents(i32* %54, i32* %55, i8* %56, i32 0, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = call i32 (...) @bfd_get_error()
  %62 = call i32 @bfd_errmsg(i32 %61)
  %63 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %66 = call i32 @do_cleanups(%struct.cleanup* %65)
  br label %67

67:                                               ; preds = %64, %26, %19
  ret void
}

declare dso_local i32 @bfd_section_size(i32*, i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @bfd_section_name(i32*, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

declare dso_local i32 @bfd_section_vma(i32*, i32*) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @paddr_d(i32) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local i32 @bfd_set_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
