; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_gen_line_info_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_gen_line_info_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_line_info = type { i32 }
%struct.line_subseg = type { %struct.line_entry** }
%struct.line_entry = type { %struct.line_entry*, %struct.dwarf2_line_info, i32* }

@now_seg = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dwarf2_line_info*)* @dwarf2_gen_line_info_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_gen_line_info_1(i32* %0, %struct.dwarf2_line_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dwarf2_line_info*, align 8
  %5 = alloca %struct.line_subseg*, align 8
  %6 = alloca %struct.line_entry*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.dwarf2_line_info* %1, %struct.dwarf2_line_info** %4, align 8
  %7 = call i64 @xmalloc(i32 24)
  %8 = inttoptr i64 %7 to %struct.line_entry*
  store %struct.line_entry* %8, %struct.line_entry** %6, align 8
  %9 = load %struct.line_entry*, %struct.line_entry** %6, align 8
  %10 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %9, i32 0, i32 0
  store %struct.line_entry* null, %struct.line_entry** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.line_entry*, %struct.line_entry** %6, align 8
  %13 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  %14 = load %struct.line_entry*, %struct.line_entry** %6, align 8
  %15 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %14, i32 0, i32 1
  %16 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %17 = bitcast %struct.dwarf2_line_info* %15 to i8*
  %18 = bitcast %struct.dwarf2_line_info* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* @now_seg, align 4
  %20 = load i32, i32* @now_subseg, align 4
  %21 = call %struct.line_subseg* @get_line_subseg(i32 %19, i32 %20)
  store %struct.line_subseg* %21, %struct.line_subseg** %5, align 8
  %22 = load %struct.line_entry*, %struct.line_entry** %6, align 8
  %23 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %24 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %23, i32 0, i32 0
  %25 = load %struct.line_entry**, %struct.line_entry*** %24, align 8
  store %struct.line_entry* %22, %struct.line_entry** %25, align 8
  %26 = load %struct.line_entry*, %struct.line_entry** %6, align 8
  %27 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %26, i32 0, i32 0
  %28 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %29 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %28, i32 0, i32 0
  store %struct.line_entry** %27, %struct.line_entry*** %29, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.line_subseg* @get_line_subseg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
