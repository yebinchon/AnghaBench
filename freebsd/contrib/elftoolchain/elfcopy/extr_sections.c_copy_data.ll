; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_copy_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read section: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"elf_newdata() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_data(%struct.section* %0) #0 {
  %2 = alloca %struct.section*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.section* %0, %struct.section** %2, align 8
  %6 = load %struct.section*, %struct.section** %2, align 8
  %7 = getelementptr inbounds %struct.section, %struct.section* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.section*, %struct.section** %2, align 8
  %12 = getelementptr inbounds %struct.section, %struct.section* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %123

16:                                               ; preds = %10, %1
  %17 = load %struct.section*, %struct.section** %2, align 8
  %18 = getelementptr inbounds %struct.section, %struct.section* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_5__* @elf_getdata(i32 %19, i32* null)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %3, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = call i32 (...) @elf_errno()
  %24 = load %struct.section*, %struct.section** %2, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_5__* @elf_rawdata(i32 %26, i32* null)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %3, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = call i32 (...) @elf_errno()
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = load %struct.section*, %struct.section** %2, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @errx(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %29
  br label %123

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.section*, %struct.section** %2, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_5__* @elf_newdata(i32 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %4, align 8
  %46 = icmp eq %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @elf_errmsg(i32 -1)
  %50 = call i32 @errx(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.section*, %struct.section** %2, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.section*, %struct.section** %2, align 8
  %65 = getelementptr inbounds %struct.section, %struct.section* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.section*, %struct.section** %2, align 8
  %75 = getelementptr inbounds %struct.section, %struct.section* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %115

84:                                               ; preds = %51
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %84, %56
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %15, %39, %120, %115
  ret void
}

declare dso_local %struct.TYPE_5__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_5__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @elf_newdata(i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
