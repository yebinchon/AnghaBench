; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c__cpp_init_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c__cpp_init_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }

@file_hash_hash = common dso_local global i32 0, align 4
@file_hash_eq = common dso_local global i32 0, align 4
@xcalloc = common dso_local global i32 0, align 4
@free = common dso_local global i64 0, align 8
@htab_hash_string = common dso_local global i32 0, align 4
@nonexistent_file_hash_eq = common dso_local global i32 0, align 4
@xmalloc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cpp_init_files(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @file_hash_hash, align 4
  %4 = load i32, i32* @file_hash_eq, align 4
  %5 = load i32, i32* @xcalloc, align 4
  %6 = load i64, i64* @free, align 8
  %7 = call i8* @htab_create_alloc(i32 127, i32 %3, i32 %4, i32* null, i32 %5, i64 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @file_hash_hash, align 4
  %11 = load i32, i32* @file_hash_eq, align 4
  %12 = load i32, i32* @xcalloc, align 4
  %13 = load i64, i64* @free, align 8
  %14 = call i8* @htab_create_alloc(i32 127, i32 %10, i32 %11, i32* null, i32 %12, i64 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i32 @allocate_file_hash_entries(%struct.TYPE_4__* %17)
  %19 = load i32, i32* @htab_hash_string, align 4
  %20 = load i32, i32* @nonexistent_file_hash_eq, align 4
  %21 = load i32, i32* @xcalloc, align 4
  %22 = load i64, i64* @free, align 8
  %23 = call i8* @htab_create_alloc(i32 127, i32 %19, i32 %20, i32* null, i32 %21, i64 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* @xmalloc, align 8
  %29 = inttoptr i64 %28 to i8* (i64)*
  %30 = load i64, i64* @free, align 8
  %31 = inttoptr i64 %30 to void (i8*)*
  %32 = call i32 @_obstack_begin(i32* %27, i32 0, i32 0, i8* (i64)* %29, void (i8*)* %31)
  ret void
}

declare dso_local i8* @htab_create_alloc(i32, i32, i32, i32*, i32, i64) #1

declare dso_local i32 @allocate_file_hash_entries(%struct.TYPE_4__*) #1

declare dso_local i32 @_obstack_begin(i32*, i32, i32, i8* (i64)*, void (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
