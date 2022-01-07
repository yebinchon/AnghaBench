; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_scope = type { i32, i32, i32, %struct.coff_scope*, %struct.coff_scope*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"List of blocks %lx \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  %s %x..%x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"*****************\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vars %d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_scope*)* @dump_coff_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_scope(%struct.coff_scope* %0) #0 {
  %2 = alloca %struct.coff_scope*, align 8
  store %struct.coff_scope* %0, %struct.coff_scope** %2, align 8
  %3 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %4 = icmp ne %struct.coff_scope* %3, null
  br i1 %4, label %5, label %65

5:                                                ; preds = %1
  %6 = call i32 @tab(i32 1)
  %7 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %8 = ptrtoint %struct.coff_scope* %7 to i64
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %11 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %5
  %15 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %16 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %21 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %24 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %27 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %14, %5
  %33 = call i32 (...) @nl()
  %34 = call i32 @tab(i32 0)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (...) @nl()
  br label %37

37:                                               ; preds = %40, %32
  %38 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %39 = icmp ne %struct.coff_scope* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = call i32 @tab(i32 0)
  %42 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %43 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @nl()
  %47 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %48 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dump_coff_symbol(i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i32 (...) @nl()
  %53 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %54 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %53, i32 0, i32 4
  %55 = load %struct.coff_scope*, %struct.coff_scope** %54, align 8
  call void @dump_coff_scope(%struct.coff_scope* %55)
  %56 = call i32 (...) @nl()
  %57 = load %struct.coff_scope*, %struct.coff_scope** %2, align 8
  %58 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %57, i32 0, i32 3
  %59 = load %struct.coff_scope*, %struct.coff_scope** %58, align 8
  store %struct.coff_scope* %59, %struct.coff_scope** %2, align 8
  br label %37

60:                                               ; preds = %37
  %61 = call i32 @tab(i32 0)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 (...) @nl()
  %64 = call i32 @tab(i32 -1)
  br label %65

65:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @dump_coff_symbol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
