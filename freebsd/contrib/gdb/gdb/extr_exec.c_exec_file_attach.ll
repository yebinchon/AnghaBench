; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_file_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_file_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@exec_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"No executable file now.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@write_files = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@gnutarget = common dso_local global i32 0, align 4
@exec_bfd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\22%s\22: could not open as an executable file: %s\00", align 1
@xfree = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\22%s\22: not in executable format: %s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\22%s\22: can't find the file sections: %s\00", align 1
@vmap = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_file_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @unpush_target(%struct.TYPE_5__* @exec_ops)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  br label %84

16:                                               ; preds = %2
  %17 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* @write_files, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_BINARY, align 4
  %24 = or i32 %22, %23
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = load i32, i32* @O_BINARY, align 4
  %28 = or i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  %31 = call i32 @openp(i32 %17, i32 1, i8* %18, i32 %30, i32 0, i8** %5)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @perror_with_name(i8* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @gnutarget, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bfd_fdopenr(i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* @exec_bfd, align 4
  %42 = load i32, i32* @exec_bfd, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (...) @bfd_get_error()
  %47 = call i8* @bfd_errmsg(i32 %46)
  %48 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @xstrdup(i8* %50)
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* @xfree, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @make_cleanup(i32 %52, i8* %53)
  %55 = load i32, i32* @exec_bfd, align 4
  %56 = load i32, i32* @bfd_object, align 4
  %57 = call i32 @bfd_check_format(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = call i32 @exec_close(i32 0)
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (...) @bfd_get_error()
  %63 = call i8* @bfd_errmsg(i32 %62)
  %64 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %63)
  br label %65

65:                                               ; preds = %59, %49
  %66 = load i32, i32* @exec_bfd, align 4
  %67 = call i64 @build_section_table(i32 %66, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @exec_ops, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @exec_ops, i32 0, i32 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = call i32 @exec_close(i32 0)
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (...) @bfd_get_error()
  %73 = call i8* @bfd_errmsg(i32 %72)
  %74 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %73)
  br label %75

75:                                               ; preds = %69, %65
  %76 = call i32 (...) @validate_files()
  %77 = load i32, i32* @exec_bfd, align 4
  %78 = call i32 @set_gdbarch_from_file(i32 %77)
  %79 = call i32 @push_target(%struct.TYPE_5__* @exec_ops)
  br i1 true, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @exec_file_display_hook(i8* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %15
  ret void
}

declare dso_local i32 @unpush_target(%struct.TYPE_5__*) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @openp(i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @bfd_fdopenr(i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i32 @bfd_check_format(i32, i32) #1

declare dso_local i32 @exec_close(i32) #1

declare dso_local i64 @build_section_table(i32, i32*, i32*) #1

declare dso_local i32 @validate_files(...) #1

declare dso_local i32 @set_gdbarch_from_file(i32) #1

declare dso_local i32 @push_target(%struct.TYPE_5__*) #1

declare dso_local i32 @exec_file_display_hook(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
