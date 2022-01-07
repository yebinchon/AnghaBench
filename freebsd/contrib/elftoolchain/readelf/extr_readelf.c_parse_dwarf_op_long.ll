; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_parse_dwarf_op_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_parse_dwarf_op_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.readelf = type { i32 }

@DW_DEFAULT_OPTIONS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@dwarf_op = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i8*)* @parse_dwarf_op_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dwarf_op_long(%struct.readelf* %0, i8* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @DW_DEFAULT_OPTIONS, align 4
  %13 = load %struct.readelf*, %struct.readelf** %3, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %63, %24
  %27 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dwarf_op, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dwarf_op, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @strcmp(i8* %39, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %38
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dwarf_op, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.readelf*, %struct.readelf** %3, align 8
  %56 = getelementptr inbounds %struct.readelf, %struct.readelf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %63

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %30

63:                                               ; preds = %48, %30
  br label %26

64:                                               ; preds = %26
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %11
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
