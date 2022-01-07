; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct._Elftc_String_Table_Entry = type { i64 }

@ste_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elftc_string_table_insert(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._Elftc_String_Table_Entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_5__* %9, i8* %10, i32* %8)
  store %struct._Elftc_String_Table_Entry* %11, %struct._Elftc_String_Table_Entry** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %25 = icmp eq %struct._Elftc_String_Table_Entry* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = call %struct._Elftc_String_Table_Entry* @malloc(i32 8)
  store %struct._Elftc_String_Table_Entry* %27, %struct._Elftc_String_Table_Entry** %6, align 8
  %28 = icmp eq %struct._Elftc_String_Table_Entry* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %63

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @elftc_string_table_add_to_pool(%struct.TYPE_5__* %31, i8* %32)
  %34 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %35 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = icmp eq i64 %33, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %39 = call i32 @free(%struct._Elftc_String_Table_Entry* %38)
  store i64 0, i64* %3, align 8
  br label %63

40:                                               ; preds = %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %48 = load i32, i32* @ste_next, align 4
  %49 = call i32 @SLIST_INSERT_HEAD(i32* %46, %struct._Elftc_String_Table_Entry* %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %20
  %51 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %52 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %7, align 8
  %59 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %60 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %37, %29
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct._Elftc_String_Table_Entry* @malloc(i32) #1

declare dso_local i64 @elftc_string_table_add_to_pool(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @free(%struct._Elftc_String_Table_Entry*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct._Elftc_String_Table_Entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
