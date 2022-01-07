; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_elfmdebug_build_psymtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_elfmdebug_build_psymtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32* }
%struct.ecoff_debug_swap = type { i32 (i32*, i32*, %struct.ecoff_debug_info*)* }
%struct.ecoff_debug_info = type opaque
%struct.ecoff_debug_info.0 = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Error reading ECOFF debugging information: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elfmdebug_build_psymtabs(%struct.objfile* %0, %struct.ecoff_debug_swap* %1, i32* %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.ecoff_debug_swap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecoff_debug_info.0*, align 8
  %9 = alloca %struct.cleanup*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.ecoff_debug_swap* %1, %struct.ecoff_debug_swap** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.objfile*, %struct.objfile** %4, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = call i32 (...) @init_minimal_symbol_collection()
  %14 = call %struct.cleanup* (...) @make_cleanup_discard_minimal_symbols()
  store %struct.cleanup* %14, %struct.cleanup** %9, align 8
  %15 = load %struct.objfile*, %struct.objfile** %4, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = call i64 @obstack_alloc(i32* %16, i32 4)
  %18 = inttoptr i64 %17 to %struct.ecoff_debug_info.0*
  store %struct.ecoff_debug_info.0* %18, %struct.ecoff_debug_info.0** %8, align 8
  %19 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %20 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*, %struct.ecoff_debug_info*)*, i32 (i32*, i32*, %struct.ecoff_debug_info*)** %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.ecoff_debug_info.0*, %struct.ecoff_debug_info.0** %8, align 8
  %25 = bitcast %struct.ecoff_debug_info.0* %24 to %struct.ecoff_debug_info*
  %26 = call i32 %21(i32* %22, i32* %23, %struct.ecoff_debug_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = call i32 (...) @bfd_get_error()
  %30 = call i32 @bfd_errmsg(i32 %29)
  %31 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.objfile*, %struct.objfile** %4, align 8
  %34 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %35 = load %struct.ecoff_debug_info.0*, %struct.ecoff_debug_info.0** %8, align 8
  %36 = call i32 @mdebug_build_psymtabs(%struct.objfile* %33, %struct.ecoff_debug_swap* %34, %struct.ecoff_debug_info.0* %35)
  %37 = load %struct.objfile*, %struct.objfile** %4, align 8
  %38 = call i32 @install_minimal_symbols(%struct.objfile* %37)
  %39 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %40 = call i32 @do_cleanups(%struct.cleanup* %39)
  ret void
}

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local %struct.cleanup* @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @mdebug_build_psymtabs(%struct.objfile*, %struct.ecoff_debug_swap*, %struct.ecoff_debug_info.0*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
