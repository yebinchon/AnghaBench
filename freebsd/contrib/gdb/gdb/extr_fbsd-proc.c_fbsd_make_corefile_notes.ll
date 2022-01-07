; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_fbsd-proc.c_fbsd_make_corefile_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_fbsd-proc.c_fbsd_make_corefile_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ELFOSABI_FREEBSD = common dso_local global i32 0, align 4
@EI_OSABI = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@stop_signal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @fbsd_make_corefile_notes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fbsd_make_corefile_notes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_3__* @elf_elfheader(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load i32, i32* @ELFOSABI_FREEBSD, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @EI_OSABI, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %14, i32* %19, align 4
  %20 = call i32 @fill_gregset(i32* %5, i32 -1)
  %21 = load i32*, i32** %3, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @ptid_get_pid(i32 %24)
  %26 = load i32, i32* @stop_signal, align 4
  %27 = call i8* @elfcore_write_prstatus(i32* %21, i8* %22, i32* %23, i32 %25, i32 %26, i32* %5)
  store i8* %27, i8** %7, align 8
  %28 = call i32 @fill_fpregset(i32* %6, i32 -1)
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @elfcore_write_prfpreg(i32* %29, i8* %30, i32* %31, i32* %6, i32 4)
  store i8* %32, i8** %7, align 8
  store i8 0, i8* %9, align 1
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @elfcore_write_thrmisc(i32* %33, i8* %34, i32* %35, i8* %9, i32 1)
  store i8* %36, i8** %7, align 8
  %37 = call i64 @get_exec_file(i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %2
  %40 = call i64 @get_exec_file(i32 0)
  %41 = call i8* @strrchr(i64 %40, i8 signext 47)
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @xstrdup(i8* %43)
  store i8* %44, i8** %11, align 8
  %45 = call i64 (...) @get_inferior_args()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 (...) @get_inferior_args()
  %51 = call i8* @reconcat(i8* %48, i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %50, i32* null)
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i32*, i32** %3, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @elfcore_write_prpsinfo(i32* %53, i8* %54, i32* %55, i8* %56, i8* %57)
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %52, %2
  %60 = load i32, i32* @xfree, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @make_cleanup(i32 %60, i8* %61)
  %63 = load i8*, i8** %7, align 8
  ret i8* %63
}

declare dso_local %struct.TYPE_3__* @elf_elfheader(i32*) #1

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i8* @elfcore_write_prstatus(i32*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ptid_get_pid(i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

declare dso_local i8* @elfcore_write_prfpreg(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i8* @elfcore_write_thrmisc(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i64 @get_exec_file(i32) #1

declare dso_local i8* @strrchr(i64, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @get_inferior_args(...) #1

declare dso_local i8* @reconcat(i8*, i8*, i8*, i64, i32*) #1

declare dso_local i8* @elfcore_write_prpsinfo(i32*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
