; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"dwarf_loclist_form_expr_b: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@DW_DLA_LOC_BLOCK = common dso_local global i32 0, align 4
@DW_DLA_LOCDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32*, i32)* @dump_dwarf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_block(%struct.readelf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.readelf*, %struct.readelf** %4, align 8
  %12 = getelementptr inbounds %struct.readelf, %struct.readelf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.readelf*, %struct.readelf** %4, align 8
  %17 = getelementptr inbounds %struct.readelf, %struct.readelf* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.readelf*, %struct.readelf** %4, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.readelf*, %struct.readelf** %4, align 8
  %23 = getelementptr inbounds %struct.readelf, %struct.readelf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dwarf_loclist_from_expr_b(i32 %13, i32* %14, i32 %15, i32 %18, i32 %21, i32 %24, %struct.TYPE_5__** %7, i32* %8, i32* %9)
  %26 = load i64, i64* @DW_DLV_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dwarf_errmsg(i32 %29)
  %31 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %75

32:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.readelf*, %struct.readelf** %4, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = call i32 @dump_dwarf_loc(%struct.readelf* %40, %struct.TYPE_5__* %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %39
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.readelf*, %struct.readelf** %4, align 8
  %62 = getelementptr inbounds %struct.readelf, %struct.readelf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* @DW_DLA_LOC_BLOCK, align 4
  %68 = call i32 @dwarf_dealloc(i32 %63, %struct.TYPE_5__* %66, i32 %67)
  %69 = load %struct.readelf*, %struct.readelf** %4, align 8
  %70 = getelementptr inbounds %struct.readelf, %struct.readelf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = load i32, i32* @DW_DLA_LOCDESC, align 4
  %74 = call i32 @dwarf_dealloc(i32 %71, %struct.TYPE_5__* %72, i32 %73)
  br label %75

75:                                               ; preds = %60, %28
  ret void
}

declare dso_local i64 @dwarf_loclist_from_expr_b(i32, i32*, i32, i32, i32, i32, %struct.TYPE_5__**, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dump_dwarf_loc(%struct.readelf*, %struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dwarf_dealloc(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
