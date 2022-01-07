; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_coff_grok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_coff_grok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.coff_symbol = type { i32 }
%struct.coff_ofile = type { i32 }

@abfd = common dso_local global %struct.TYPE_8__* null, align 8
@syms = common dso_local global i32** null, align 8
@symcount = common dso_local global i64 0, align 8
@rawsyms = common dso_local global i32 0, align 4
@rawcount = common dso_local global i32 0, align 4
@tindex = common dso_local global %struct.coff_symbol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.coff_ofile* @coff_grok(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.coff_ofile*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** @abfd, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %7 = call i64 @bfd_get_symtab_upper_bound(%struct.TYPE_8__* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bfd_fatal(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @xmalloc(i64 %16)
  %18 = inttoptr i64 %17 to i32**
  store i32** %18, i32*** @syms, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %20 = load i32**, i32*** @syms, align 8
  %21 = call i64 @bfd_canonicalize_symtab(%struct.TYPE_8__* %19, i32** %20)
  store i64 %21, i64* @symcount, align 8
  %22 = load i64, i64* @symcount, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfd_fatal(i32 %27)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %31 = call i32 @obj_raw_syments(%struct.TYPE_8__* %30)
  store i32 %31, i32* @rawsyms, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abfd, align 8
  %33 = call i32 @obj_raw_syment_count(%struct.TYPE_8__* %32)
  store i32 %33, i32* @rawcount, align 4
  %34 = load i32, i32* @rawcount, align 4
  %35 = call i64 @xcalloc(i32 8, i32 %34)
  %36 = inttoptr i64 %35 to %struct.coff_symbol**
  store %struct.coff_symbol** %36, %struct.coff_symbol*** @tindex, align 8
  %37 = call %struct.coff_ofile* (...) @doit()
  store %struct.coff_ofile* %37, %struct.coff_ofile** %4, align 8
  %38 = load %struct.coff_ofile*, %struct.coff_ofile** %4, align 8
  ret %struct.coff_ofile* %38
}

declare dso_local i64 @bfd_get_symtab_upper_bound(%struct.TYPE_8__*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_symtab(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @obj_raw_syments(%struct.TYPE_8__*) #1

declare dso_local i32 @obj_raw_syment_count(%struct.TYPE_8__*) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local %struct.coff_ofile* @doit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
