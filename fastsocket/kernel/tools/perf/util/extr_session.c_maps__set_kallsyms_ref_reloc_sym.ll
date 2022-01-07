; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_maps__set_kallsyms_ref_reloc_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_maps__set_kallsyms_ref_reloc_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.ref_reloc_sym = type { i32, i32* }
%struct.kmap = type { %struct.ref_reloc_sym* }

@ENOMEM = common dso_local global i32 0, align 4
@MAP__NR_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maps__set_kallsyms_ref_reloc_sym(%struct.map** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_reloc_sym*, align 8
  %11 = alloca %struct.kmap*, align 8
  store %struct.map** %0, %struct.map*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.ref_reloc_sym* @zalloc(i32 16)
  store %struct.ref_reloc_sym* %12, %struct.ref_reloc_sym** %10, align 8
  %13 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %14 = icmp eq %struct.ref_reloc_sym* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @strdup(i8* %19)
  %21 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %22 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %24 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %29 = call i32 @free(%struct.ref_reloc_sym* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %18
  %33 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %34 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i8* @strchr(i32* %35, i8 signext 93)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %44 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %59, %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @MAP__NR_TYPES, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.map**, %struct.map*** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.map*, %struct.map** %50, i64 %52
  %54 = load %struct.map*, %struct.map** %53, align 8
  %55 = call %struct.kmap* @map__kmap(%struct.map* %54)
  store %struct.kmap* %55, %struct.kmap** %11, align 8
  %56 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %57 = load %struct.kmap*, %struct.kmap** %11, align 8
  %58 = getelementptr inbounds %struct.kmap, %struct.kmap* %57, i32 0, i32 0
  store %struct.ref_reloc_sym* %56, %struct.ref_reloc_sym** %58, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %45

62:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %27, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.ref_reloc_sym* @zalloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.ref_reloc_sym*) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
