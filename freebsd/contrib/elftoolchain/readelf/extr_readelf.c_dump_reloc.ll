; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i64, i32 }

@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_reloc(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %66, %1
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.readelf*, %struct.readelf** %2, align 8
  %11 = getelementptr inbounds %struct.readelf, %struct.readelf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %7
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 1
  %17 = load %struct.section*, %struct.section** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.section, %struct.section* %17, i64 %19
  store %struct.section* %20, %struct.section** %3, align 8
  %21 = load %struct.section*, %struct.section** %3, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SHT_REL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = load %struct.section*, %struct.section** %3, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SHT_RELA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26, %14
  %33 = call i32 (...) @elf_errno()
  %34 = load %struct.section*, %struct.section** %3, align 8
  %35 = getelementptr inbounds %struct.section, %struct.section* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @elf_getdata(i32 %36, i32* null)
  store i32* %37, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = call i32 (...) @elf_errno()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @elf_errmsg(i32 %44)
  %46 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %66

48:                                               ; preds = %32
  %49 = load %struct.section*, %struct.section** %3, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SHT_REL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.readelf*, %struct.readelf** %2, align 8
  %56 = load %struct.section*, %struct.section** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @dump_rel(%struct.readelf* %55, %struct.section* %56, i32* %57)
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.readelf*, %struct.readelf** %2, align 8
  %61 = load %struct.section*, %struct.section** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @dump_rela(%struct.readelf* %60, %struct.section* %61, i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %7

69:                                               ; preds = %7
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @dump_rel(%struct.readelf*, %struct.section*, i32*) #1

declare dso_local i32 @dump_rela(%struct.readelf*, %struct.section*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
