; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_open_builtin_lib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_open_builtin_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ovl_stream = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"builtin ovl_mgr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"elf32-spu\00", align 1
@ovl_mgr_open = common dso_local global i32 0, align 4
@ovl_mgr_pread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_elf_open_builtin_lib(i32** %0, %struct._ovl_stream* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct._ovl_stream*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct._ovl_stream* %1, %struct._ovl_stream** %4, align 8
  %5 = load i32, i32* @ovl_mgr_open, align 4
  %6 = load %struct._ovl_stream*, %struct._ovl_stream** %4, align 8
  %7 = bitcast %struct._ovl_stream* %6 to i8*
  %8 = load i32, i32* @ovl_mgr_pread, align 4
  %9 = call i32* @bfd_openr_iovec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %5, i8* %7, i32 %8, i32* null, i32* null)
  %10 = load i32**, i32*** %3, align 8
  store i32* %9, i32** %10, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32* @bfd_openr_iovec(i8*, i8*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
