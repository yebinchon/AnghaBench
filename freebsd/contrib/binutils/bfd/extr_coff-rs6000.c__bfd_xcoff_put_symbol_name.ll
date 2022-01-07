; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-rs6000.c__bfd_xcoff_put_symbol_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-rs6000.c__bfd_xcoff_put_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.bfd_strtab_hash = type { i32 }
%struct.internal_syment = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@SYMNMLEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BFD_TRADITIONAL_FORMAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STRING_SIZE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.bfd_strtab_hash*, %struct.internal_syment*, i8*)* @_bfd_xcoff_put_symbol_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_xcoff_put_symbol_name(%struct.TYPE_7__* %0, %struct.bfd_strtab_hash* %1, %struct.internal_syment* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.bfd_strtab_hash*, align 8
  %8 = alloca %struct.internal_syment*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.bfd_strtab_hash* %1, %struct.bfd_strtab_hash** %7, align 8
  store %struct.internal_syment* %2, %struct.internal_syment** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @SYMNMLEN, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %18 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* @SYMNMLEN, align 8
  %23 = call i32 @strncpy(i32 %20, i8* %21, i64 %22)
  br label %56

24:                                               ; preds = %4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BFD_TRADITIONAL_FORMAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash* %35, i8* %36, i32 %37, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %46 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* @STRING_SIZE_SIZE, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %53 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %44, %16
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %42
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
