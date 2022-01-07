; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_free_elfinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_free_elfinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.dbx_symfile_info* }
%struct.dbx_symfile_info = type { %struct.stab_section_info* }
%struct.stab_section_info = type { %struct.stab_section_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_elfinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_elfinfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.dbx_symfile_info*, align 8
  %5 = alloca %struct.stab_section_info*, align 8
  %6 = alloca %struct.stab_section_info*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.objfile*
  store %struct.objfile* %8, %struct.objfile** %3, align 8
  %9 = load %struct.objfile*, %struct.objfile** %3, align 8
  %10 = getelementptr inbounds %struct.objfile, %struct.objfile* %9, i32 0, i32 1
  %11 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %10, align 8
  store %struct.dbx_symfile_info* %11, %struct.dbx_symfile_info** %4, align 8
  %12 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %4, align 8
  %13 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %12, i32 0, i32 0
  %14 = load %struct.stab_section_info*, %struct.stab_section_info** %13, align 8
  store %struct.stab_section_info* %14, %struct.stab_section_info** %5, align 8
  br label %15

15:                                               ; preds = %18, %1
  %16 = load %struct.stab_section_info*, %struct.stab_section_info** %5, align 8
  %17 = icmp ne %struct.stab_section_info* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.stab_section_info*, %struct.stab_section_info** %5, align 8
  %20 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %19, i32 0, i32 0
  %21 = load %struct.stab_section_info*, %struct.stab_section_info** %20, align 8
  store %struct.stab_section_info* %21, %struct.stab_section_info** %6, align 8
  %22 = load %struct.objfile*, %struct.objfile** %3, align 8
  %23 = getelementptr inbounds %struct.objfile, %struct.objfile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.stab_section_info*, %struct.stab_section_info** %5, align 8
  %26 = call i32 @xmfree(i32 %24, %struct.stab_section_info* %25)
  %27 = load %struct.stab_section_info*, %struct.stab_section_info** %6, align 8
  store %struct.stab_section_info* %27, %struct.stab_section_info** %5, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %4, align 8
  %30 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %29, i32 0, i32 0
  store %struct.stab_section_info* null, %struct.stab_section_info** %30, align 8
  ret void
}

declare dso_local i32 @xmfree(i32, %struct.stab_section_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
