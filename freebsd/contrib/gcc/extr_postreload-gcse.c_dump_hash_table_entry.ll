; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_dump_hash_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_dump_hash_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.occr*, i32 }
%struct.occr = type { %struct.occr*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"expr: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0Ahashcode: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"list of occurrences:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @dump_hash_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_hash_table_entry(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.occr*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.expr*
  store %struct.expr* %11, %struct.expr** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.expr*, %struct.expr** %5, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @print_rtl(i32* %16, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.expr*, %struct.expr** %5, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.expr*, %struct.expr** %5, align 8
  %29 = getelementptr inbounds %struct.expr, %struct.expr* %28, i32 0, i32 1
  %30 = load %struct.occr*, %struct.occr** %29, align 8
  store %struct.occr* %30, %struct.occr** %7, align 8
  br label %31

31:                                               ; preds = %34, %2
  %32 = load %struct.occr*, %struct.occr** %7, align 8
  %33 = icmp ne %struct.occr* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.occr*, %struct.occr** %7, align 8
  %36 = getelementptr inbounds %struct.occr, %struct.occr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @print_rtl_single(i32* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.occr*, %struct.occr** %7, align 8
  %44 = getelementptr inbounds %struct.occr, %struct.occr* %43, i32 0, i32 0
  %45 = load %struct.occr*, %struct.occr** %44, align 8
  store %struct.occr* %45, %struct.occr** %7, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_rtl(i32*, i32) #1

declare dso_local i32 @print_rtl_single(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
