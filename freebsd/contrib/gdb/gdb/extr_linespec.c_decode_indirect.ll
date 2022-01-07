; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i8**)* @decode_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @decode_indirect(i8** %0) #0 {
  %2 = alloca %struct.symtabs_and_lines, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab_and_line, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %6, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = call i32 @parse_and_eval_address_1(i8** %9)
  store i32 %10, i32* %4, align 4
  %11 = call i64 @xmalloc(i32 8)
  %12 = inttoptr i64 %11 to %struct.symtab_and_line*
  %13 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %2, i32 0, i32 1
  store %struct.symtab_and_line* %12, %struct.symtab_and_line** %13, align 8
  %14 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %2, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %2, i32 0, i32 1
  %16 = load %struct.symtab_and_line*, %struct.symtab_and_line** %15, align 8
  %17 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %16, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @find_pc_line(i32 %18, i32 0)
  %20 = bitcast %struct.symtab_and_line* %5 to i64*
  store i64 %19, i64* %20, align 4
  %21 = bitcast %struct.symtab_and_line* %17 to i8*
  %22 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %2, i32 0, i32 1
  %25 = load %struct.symtab_and_line*, %struct.symtab_and_line** %24, align 8
  %26 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %25, i64 0
  %27 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @find_pc_overlay(i32 %28)
  %30 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %2, i32 0, i32 1
  %31 = load %struct.symtab_and_line*, %struct.symtab_and_line** %30, align 8
  %32 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %31, i64 0
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = bitcast %struct.symtabs_and_lines* %2 to { i32, %struct.symtab_and_line* }*
  %35 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %34, align 8
  ret { i32, %struct.symtab_and_line* } %35
}

declare dso_local i32 @parse_and_eval_address_1(i8**) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @find_pc_line(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_pc_overlay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
