; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbol = type { i8*, i32, i32, %struct.coff_symbol*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"List of symbols\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Symbol  %s, tag %d, number %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Visible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_symbol*)* @dump_coff_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_symbol(%struct.coff_symbol* %0) #0 {
  %2 = alloca %struct.coff_symbol*, align 8
  store %struct.coff_symbol* %0, %struct.coff_symbol** %2, align 8
  %3 = call i32 @tab(i32 1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @nl()
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %8 = icmp ne %struct.coff_symbol* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = call i32 @tab(i32 1)
  %11 = call i32 @tab(i32 1)
  %12 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %13 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %16 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %19 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %17, i32 %20)
  %22 = call i32 (...) @nl()
  %23 = call i32 @tab(i32 -1)
  %24 = call i32 @tab(i32 1)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @nl()
  %27 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %28 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dump_coff_type(i32 %29)
  %31 = call i32 @tab(i32 -1)
  %32 = call i32 @tab(i32 1)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %35 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dump_coff_where(i32 %36)
  %38 = call i32 @tab(i32 -1)
  %39 = call i32 @tab(i32 1)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %42 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dump_coff_visible(i32 %43)
  %45 = call i32 @tab(i32 -1)
  %46 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %47 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %46, i32 0, i32 3
  %48 = load %struct.coff_symbol*, %struct.coff_symbol** %47, align 8
  store %struct.coff_symbol* %48, %struct.coff_symbol** %2, align 8
  %49 = call i32 @tab(i32 -1)
  br label %6

50:                                               ; preds = %6
  %51 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @dump_coff_type(i32) #1

declare dso_local i32 @dump_coff_where(i32) #1

declare dso_local i32 @dump_coff_visible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
