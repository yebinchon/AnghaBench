; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_sym.c_add_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_sym.c_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64 }

@nsyms = common dso_local global i32 0, align 4
@maxsyms = common dso_local global i32 0, align 4
@symbol_table = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't allocate symbol table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_symbol(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @nsyms, align 4
  %9 = load i32, i32* @maxsyms, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @maxsyms, align 4
  %13 = add nsw i32 %12, 10000
  store i32 %13, i32* @maxsyms, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symbol_table, align 8
  %15 = load i32, i32* @maxsyms, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 24
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %14, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @symbol_table, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symbol_table, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 3) #3
  unreachable

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symbol_table, align 8
  %29 = load i32, i32* @nsyms, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @nsyms, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  ret void
}

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
