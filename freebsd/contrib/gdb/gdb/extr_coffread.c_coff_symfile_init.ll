; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_symfile_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_symfile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.dbx_symfile_info*, i32, %struct.dbx_symfile_info* }
%struct.dbx_symfile_info = type { i32 }

@OBJF_REORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @coff_symfile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_symfile_init(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = load %struct.objfile*, %struct.objfile** %2, align 8
  %4 = getelementptr inbounds %struct.objfile, %struct.objfile* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.dbx_symfile_info* @xmmalloc(i32 %5, i32 4)
  %7 = load %struct.objfile*, %struct.objfile** %2, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 3
  store %struct.dbx_symfile_info* %6, %struct.dbx_symfile_info** %8, align 8
  %9 = load %struct.objfile*, %struct.objfile** %2, align 8
  %10 = getelementptr inbounds %struct.objfile, %struct.objfile* %9, i32 0, i32 3
  %11 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %10, align 8
  %12 = call i32 @memset(%struct.dbx_symfile_info* %11, i32 0, i32 4)
  %13 = load %struct.objfile*, %struct.objfile** %2, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dbx_symfile_info* @xmmalloc(i32 %15, i32 4)
  %17 = load %struct.objfile*, %struct.objfile** %2, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 1
  store %struct.dbx_symfile_info* %16, %struct.dbx_symfile_info** %18, align 8
  %19 = load %struct.objfile*, %struct.objfile** %2, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 1
  %21 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %20, align 8
  %22 = call i32 @memset(%struct.dbx_symfile_info* %21, i32 0, i32 4)
  %23 = load i32, i32* @OBJF_REORDERED, align 4
  %24 = load %struct.objfile*, %struct.objfile** %2, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.objfile*, %struct.objfile** %2, align 8
  %29 = call i32 @init_entry_point_info(%struct.objfile* %28)
  ret void
}

declare dso_local %struct.dbx_symfile_info* @xmmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.dbx_symfile_info*, i32, i32) #1

declare dso_local i32 @init_entry_point_info(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
