; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_dump_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_dump_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"New symtab: [\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  Name: %s/%s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  Format: %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  Line table (section %d):\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"    %4ld: %8lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ada_dump_symtab(%struct.symtab* %0) #0 {
  %2 = alloca %struct.symtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.linetable_entry*, align 8
  store %struct.symtab* %0, %struct.symtab** %2, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = load %struct.symtab*, %struct.symtab** %2, align 8
  %9 = getelementptr inbounds %struct.symtab, %struct.symtab* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.symtab*, %struct.symtab** %2, align 8
  %14 = getelementptr inbounds %struct.symtab, %struct.symtab* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i8* [ %15, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %16 ]
  %19 = load %struct.symtab*, %struct.symtab** %2, align 8
  %20 = getelementptr inbounds %struct.symtab, %struct.symtab* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.symtab*, %struct.symtab** %2, align 8
  %25 = getelementptr inbounds %struct.symtab, %struct.symtab* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %27 ]
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.symtab*, %struct.symtab** %2, align 8
  %33 = getelementptr inbounds %struct.symtab, %struct.symtab* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load %struct.symtab*, %struct.symtab** %2, align 8
  %37 = getelementptr inbounds %struct.symtab, %struct.symtab* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %28
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.symtab*, %struct.symtab** %2, align 8
  %43 = getelementptr inbounds %struct.symtab, %struct.symtab* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %71, %40
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.symtab*, %struct.symtab** %2, align 8
  %49 = getelementptr inbounds %struct.symtab, %struct.symtab* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load %struct.symtab*, %struct.symtab** %2, align 8
  %56 = getelementptr inbounds %struct.symtab, %struct.symtab* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.linetable_entry*, %struct.linetable_entry** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %59, i64 %61
  store %struct.linetable_entry* %62, %struct.linetable_entry** %4, align 8
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.linetable_entry*, %struct.linetable_entry** %4, align 8
  %65 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.linetable_entry*, %struct.linetable_entry** %4, align 8
  %68 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %66, i64 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %46

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74, %28
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
