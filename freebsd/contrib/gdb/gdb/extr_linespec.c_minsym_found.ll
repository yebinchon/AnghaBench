; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_minsym_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_minsym_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i32 }
%struct.minimal_symbol = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.bfd_section = type { i32 }

@FUNCTION_START_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i32, %struct.minimal_symbol*)* @minsym_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @minsym_found(i32 %0, %struct.minimal_symbol* %1) #0 {
  %3 = alloca %struct.symtabs_and_lines, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.minimal_symbol*, align 8
  %6 = alloca %struct.symtab_and_line, align 4
  store i32 %0, i32* %4, align 4
  store %struct.minimal_symbol* %1, %struct.minimal_symbol** %5, align 8
  %7 = call i64 @xmalloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.symtab_and_line*
  %9 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  store %struct.symtab_and_line* %8, %struct.symtab_and_line** %9, align 8
  %10 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  %11 = load %struct.symtab_and_line*, %struct.symtab_and_line** %10, align 8
  %12 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i64 0
  %13 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %14 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %13)
  %15 = call i64 @find_pc_sect_line(i32 %14, %struct.bfd_section* null, i32 0)
  %16 = bitcast %struct.symtab_and_line* %6 to i64*
  store i64 %15, i64* %16, align 4
  %17 = bitcast %struct.symtab_and_line* %12 to i8*
  %18 = bitcast %struct.symtab_and_line* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %20 = call i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %19)
  %21 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  %22 = load %struct.symtab_and_line*, %struct.symtab_and_line** %21, align 8
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i64 0
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %29 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  %30 = load %struct.symtab_and_line*, %struct.symtab_and_line** %29, align 8
  %31 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %30, i64 0
  %32 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %28
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  %38 = load %struct.symtab_and_line*, %struct.symtab_and_line** %37, align 8
  %39 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %38, i64 0
  %40 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SKIP_PROLOGUE(i32 %41)
  %43 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 1
  %44 = load %struct.symtab_and_line*, %struct.symtab_and_line** %43, align 8
  %45 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %44, i64 0
  %46 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %27, %2
  %48 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = bitcast %struct.symtabs_and_lines* %3 to { i32, %struct.symtab_and_line* }*
  %50 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %49, align 8
  ret { i32, %struct.symtab_and_line* } %50
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @find_pc_sect_line(i32, %struct.bfd_section*, i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local i32 @SKIP_PROLOGUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
