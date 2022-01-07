; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroscope.c_sal_macro_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroscope.c_sal_macro_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_scope = type { i32, %struct.macro_source_file* }
%struct.macro_source_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.symtab_and_line = type { i32, %struct.TYPE_2__* }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"symtab found for `%s', but that file\0Ais not covered in the compilation unit's macro information\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_scope* @sal_macro_scope(i32 %0, %struct.TYPE_2__* %1) #0 {
  %3 = alloca %struct.macro_scope*, align 8
  %4 = alloca %struct.symtab_and_line, align 8
  %5 = alloca %struct.macro_source_file*, align 8
  %6 = alloca %struct.macro_source_file*, align 8
  %7 = alloca %struct.macro_scope*, align 8
  %8 = bitcast %struct.symtab_and_line* %4 to { i32, %struct.TYPE_2__* }*
  %9 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %8, i32 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %8, i32 0, i32 1
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %10, align 8
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %2
  store %struct.macro_scope* null, %struct.macro_scope** %3, align 8
  br label %58

21:                                               ; preds = %14
  %22 = call i64 @xmalloc(i32 16)
  %23 = inttoptr i64 %22 to %struct.macro_scope*
  store %struct.macro_scope* %23, %struct.macro_scope** %7, align 8
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.macro_source_file* @macro_main(i32 %27)
  store %struct.macro_source_file* %28, %struct.macro_source_file** %5, align 8
  %29 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %30 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.macro_source_file* @macro_lookup_inclusion(%struct.macro_source_file* %29, i32 %33)
  store %struct.macro_source_file* %34, %struct.macro_source_file** %6, align 8
  %35 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %36 = icmp ne %struct.macro_source_file* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %21
  %38 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %39 = load %struct.macro_scope*, %struct.macro_scope** %7, align 8
  %40 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %39, i32 0, i32 1
  store %struct.macro_source_file* %38, %struct.macro_source_file** %40, align 8
  %41 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.macro_scope*, %struct.macro_scope** %7, align 8
  %44 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %56

45:                                               ; preds = %21
  %46 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %47 = load %struct.macro_scope*, %struct.macro_scope** %7, align 8
  %48 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %47, i32 0, i32 1
  store %struct.macro_source_file* %46, %struct.macro_source_file** %48, align 8
  %49 = load %struct.macro_scope*, %struct.macro_scope** %7, align 8
  %50 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %45, %37
  %57 = load %struct.macro_scope*, %struct.macro_scope** %7, align 8
  store %struct.macro_scope* %57, %struct.macro_scope** %3, align 8
  br label %58

58:                                               ; preds = %56, %20
  %59 = load %struct.macro_scope*, %struct.macro_scope** %3, align 8
  ret %struct.macro_scope* %59
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.macro_source_file* @macro_main(i32) #1

declare dso_local %struct.macro_source_file* @macro_lookup_inclusion(%struct.macro_source_file*, i32) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
