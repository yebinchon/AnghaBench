; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_bss_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_bss_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@now_seg = common dso_local global i64 0, align 8
@now_subseg = common dso_local global i32 0, align 4
@bss_section = common dso_local global i64 0, align 8
@frag_now = common dso_local global i32 0, align 4
@rs_org = common dso_local global i32 0, align 4
@C_EXT = common dso_local global i64 0, align 8
@C_STAT = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bss_alloc(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @now_seg, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @now_subseg, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* @bss_section, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @subseg_set(i64 %14, i32 1)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @record_alignment(i64 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @frag_align(i32 %22, i32 0, i32 0)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @S_GET_SEGMENT(i32* %25)
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_3__* @symbol_get_frag(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @frag_now, align 4
  %36 = call i32 @symbol_set_frag(i32* %34, i32 %35)
  %37 = load i32, i32* @rs_org, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @frag_var(i32 %37, i32 1, i32 1, i32 0, i32* %38, i64 %39, i32* null)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  store i8 0, i8* %41, align 1
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @S_SET_SEGMENT(i32* %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @subseg_set(i64 %45, i32 %46)
  ret void
}

declare dso_local i32 @subseg_set(i64, i32) #1

declare dso_local i32 @record_alignment(i64, i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local %struct.TYPE_3__* @symbol_get_frag(i32*) #1

declare dso_local i32 @symbol_set_frag(i32*, i32) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
