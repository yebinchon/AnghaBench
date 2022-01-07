; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct._Elftc_String_Table_Entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elftc_string_table_lookup(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._Elftc_String_Table_Entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_4__* %9, i8* %10, i32* %8)
  store %struct._Elftc_String_Table_Entry* %11, %struct._Elftc_String_Table_Entry** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %25 = icmp eq %struct._Elftc_String_Table_Entry* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %6, align 8
  %28 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  store i64 0, i64* %3, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
