; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_after_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_after_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64 }

@SP_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @after_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @after_prologue(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.symtab_and_line, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @find_proc_desc(i64 %13, i32* null, i32 0)
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @PROC_FRAME_REG(i64 %19)
  %21 = load i64, i64* @SP_REGNUM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @PROC_FRAME_OFFSET(i64 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %48

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @find_pc_partial_function(i64 %30, i32* null, i64* %7, i64* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %48

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @find_pc_line(i64 %35, i32 0)
  %37 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = bitcast %struct.symtab_and_line* %6 to i8*
  %39 = bitcast %struct.symtab_and_line* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %3, align 8
  br label %48

47:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %47, %44, %33, %27
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @find_proc_desc(i64, i32*, i32) #1

declare dso_local i64 @PROC_FRAME_REG(i64) #1

declare dso_local i64 @PROC_FRAME_OFFSET(i64) #1

declare dso_local i32 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local i64 @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
