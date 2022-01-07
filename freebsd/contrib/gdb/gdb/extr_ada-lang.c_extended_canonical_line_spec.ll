; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_extended_canonical_line_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_extended_canonical_line_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.symtab_and_line = type { i32, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [11 x i8] c"%s:'%s':%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_2__*, i8*)* @extended_canonical_line_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extended_canonical_line_spec(i32 %0, %struct.TYPE_2__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symtab_and_line, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.symtab_and_line* %5 to { i32, %struct.TYPE_2__* }*
  %9 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %8, i32 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %8, i32 0, i32 1
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %10, align 8
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %14, %3
  store i8* null, i8** %4, align 8
  br label %48

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %27, %32
  %34 = add i64 %33, 12
  %35 = add i64 %34, 3
  %36 = call i64 @xmalloc(i64 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43, i32 %45)
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %25, %24
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
