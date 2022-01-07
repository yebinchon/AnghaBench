; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c__bfd_new_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c__bfd_new_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32*, i64, i8*, i8*, i64, i32*, i32, i32*, i32*, i32, i64, i32*, i32, i32*, i32*, i64 }

@_bfd_id_counter = common dso_local global i32 0, align 4
@bfd_error_no_memory = common dso_local global i32 0, align 4
@bfd_default_arch_struct = common dso_local global i32 0, align 4
@no_direction = common dso_local global i32 0, align 4
@bfd_section_hash_newfunc = common dso_local global i32 0, align 4
@bfd_unknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@BFD_NO_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @_bfd_new_bfd() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call %struct.TYPE_5__* @bfd_zmalloc(i32 152)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %75

7:                                                ; preds = %0
  %8 = load i32, i32* @_bfd_id_counter, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @_bfd_id_counter, align 4
  %10 = sext i32 %8 to i64
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 18
  store i64 %10, i64* %12, align 8
  %13 = call i32* (...) @objalloc_create()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 17
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 17
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i32, i32* @bfd_error_no_memory, align 4
  %22 = call i32 @bfd_set_error(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @free(%struct.TYPE_5__* %23)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %75

25:                                               ; preds = %7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 16
  store i32* @bfd_default_arch_struct, i32** %27, align 8
  %28 = load i32, i32* @no_direction, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 14
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 12
  %37 = load i32, i32* @bfd_section_hash_newfunc, align 4
  %38 = call i32 @bfd_hash_table_init_n(i32* %36, i32 %37, i32 4, i32 251)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = call i32 @free(%struct.TYPE_5__* %41)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %75

43:                                               ; preds = %25
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 11
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 10
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @bfd_unknown, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @FALSE, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @BFD_NO_FLAGS, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %1, align 8
  br label %75

75:                                               ; preds = %43, %40, %20, %6
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %76
}

declare dso_local %struct.TYPE_5__* @bfd_zmalloc(i32) #1

declare dso_local i32* @objalloc_create(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @bfd_hash_table_init_n(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
