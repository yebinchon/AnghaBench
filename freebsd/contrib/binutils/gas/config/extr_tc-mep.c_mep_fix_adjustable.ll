; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_fix_adjustable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_fix_adjustable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@gas_cgen_cpu_desc = common dso_local global i32 0, align 4
@BFD_RELOC_VTABLE_INHERIT = common dso_local global i64 0, align 8
@BFD_RELOC_VTABLE_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mep_fix_adjustable(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %21 = trunc i64 %20 to i32
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @cgen_operand_lookup_by_num(i32 %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = call i64 @md_cgen_lookup_reloc(i32* %26, i32* %27, %struct.TYPE_4__* %28)
  store i64 %29, i64* %4, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %15
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @S_IS_EXTERNAL(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %64

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @S_IS_WEAK(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %64

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @BFD_RELOC_VTABLE_INHERIT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @BFD_RELOC_VTABLE_ENTRY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 0, i32* %2, align 4
  br label %64

63:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %46, %39
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @cgen_operand_lookup_by_num(i32, i32) #1

declare dso_local i64 @md_cgen_lookup_reloc(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @S_IS_EXTERNAL(i32*) #1

declare dso_local i64 @S_IS_WEAK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
