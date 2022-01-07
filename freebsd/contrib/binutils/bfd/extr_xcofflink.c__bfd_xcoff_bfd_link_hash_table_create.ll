; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.xcoff_link_hash_table = type { %struct.bfd_link_hash_table, i32*, i8*, i8*, i64, i32*, i32*, i32*, i32*, i32, i64, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@xcoff_link_hash_newfunc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_table* @_bfd_xcoff_bfd_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xcoff_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 112, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.xcoff_link_hash_table* @bfd_malloc(i32 %6)
  store %struct.xcoff_link_hash_table* %7, %struct.xcoff_link_hash_table** %4, align 8
  %8 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %9 = icmp eq %struct.xcoff_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %12, i32 0, i32 0
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @xcoff_link_hash_newfunc, align 4
  %16 = call i32 @_bfd_link_hash_table_init(%struct.bfd_link_hash_table* %13, i32* %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %20 = call i32 @free(%struct.xcoff_link_hash_table* %19)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %60

21:                                               ; preds = %11
  %22 = call i32 (...) @_bfd_xcoff_stringtab_init()
  %23 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %24 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %26 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %25, i32 0, i32 12
  store i32* null, i32** %26, align 8
  %27 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %28 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %27, i32 0, i32 11
  store i32* null, i32** %28, align 8
  %29 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %30 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %32 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %31, i32 0, i32 9
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %35 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %34, i32 0, i32 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %39 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %41 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %43 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %46 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %49 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %51 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @memset(i32* %52, i32 0, i32 8)
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call %struct.TYPE_2__* @xcoff_data(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %4, align 8
  %59 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %58, i32 0, i32 0
  store %struct.bfd_link_hash_table* %59, %struct.bfd_link_hash_table** %2, align 8
  br label %60

60:                                               ; preds = %21, %18, %10
  %61 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %61
}

declare dso_local %struct.xcoff_link_hash_table* @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_link_hash_table_init(%struct.bfd_link_hash_table*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.xcoff_link_hash_table*) #1

declare dso_local i32 @_bfd_xcoff_stringtab_init(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @xcoff_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
