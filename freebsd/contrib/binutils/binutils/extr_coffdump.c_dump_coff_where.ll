; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_where.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_where.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_where = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"Stack offset %x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Memory section %s+%x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Register %d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Struct Member offset %x\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Enum Member offset %x\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Undefined symbol\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"STRTAG\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ENTAG\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"TYPEDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_where*)* @dump_coff_where to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_where(%struct.coff_where* %0) #0 {
  %2 = alloca %struct.coff_where*, align 8
  store %struct.coff_where* %0, %struct.coff_where** %2, align 8
  %3 = call i32 @tab(i32 1)
  %4 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %5 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %45 [
    i32 131, label %7
    i32 133, label %12
    i32 132, label %22
    i32 134, label %27
    i32 135, label %32
    i32 128, label %37
    i32 130, label %39
    i32 136, label %41
    i32 129, label %43
  ]

7:                                                ; preds = %1
  %8 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %9 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %14 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %19 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %20)
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %24 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %29 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  br label %47

32:                                               ; preds = %1
  %33 = load %struct.coff_where*, %struct.coff_where** %2, align 8
  %34 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %47

37:                                               ; preds = %1
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %47

39:                                               ; preds = %1
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %41

41:                                               ; preds = %1, %39
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %47

43:                                               ; preds = %1
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %47

45:                                               ; preds = %1
  %46 = call i32 (...) @abort() #3
  unreachable

47:                                               ; preds = %43, %41, %37, %32, %27, %22, %12, %7
  %48 = call i32 (...) @nl()
  %49 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @nl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
