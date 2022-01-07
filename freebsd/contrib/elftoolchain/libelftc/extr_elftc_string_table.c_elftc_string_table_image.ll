; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, %struct._Elftc_String_Table_Bucket* }
%struct._Elftc_String_Table_Bucket = type { i32 }
%struct._Elftc_String_Table_Entry = type { i64 }

@ELFTC_STRING_TABLE_COMPACTION_FLAG = common dso_local global i32 0, align 4
@_Elftc_String_Table_Entry = common dso_local global i32 0, align 4
@ste_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @elftc_string_table_image(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._Elftc_String_Table_Entry*, align 8
  %10 = alloca %struct._Elftc_String_Table_Bucket*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64* %1, i64** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ELFTC_STRING_TABLE_COMPACTION_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i64 @ELFTC_STRING_TABLE_LENGTH(%struct.TYPE_7__* %26)
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %126

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i64 1, i64* %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i64 @ELFTC_STRING_TABLE_LENGTH(%struct.TYPE_7__* %45)
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %104, %33
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %13, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_7__* %61, i8* %62, i32* %15)
  store %struct._Elftc_String_Table_Entry* %63, %struct._Elftc_String_Table_Entry** %9, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct._Elftc_String_Table_Bucket*, %struct._Elftc_String_Table_Bucket** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct._Elftc_String_Table_Bucket, %struct._Elftc_String_Table_Bucket* %66, i64 %68
  store %struct._Elftc_String_Table_Bucket* %69, %struct._Elftc_String_Table_Bucket** %10, align 8
  %70 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %9, align 8
  %71 = icmp ne %struct._Elftc_String_Table_Entry* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %9, align 8
  %75 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load %struct._Elftc_String_Table_Bucket*, %struct._Elftc_String_Table_Bucket** %10, align 8
  %80 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %9, align 8
  %81 = load i32, i32* @_Elftc_String_Table_Entry, align 4
  %82 = load i32, i32* @ste_next, align 4
  %83 = call i32 @SLIST_REMOVE(%struct._Elftc_String_Table_Bucket* %79, %struct._Elftc_String_Table_Entry* %80, i32 %81, i32 %82)
  %84 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %9, align 8
  %85 = call i32 @free(%struct._Elftc_String_Table_Entry* %84)
  br label %104

86:                                               ; preds = %56
  %87 = load i64, i64* %14, align 8
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %11, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %104

96:                                               ; preds = %86
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @memmove(i8* %97, i8* %98, i64 %99)
  %101 = load i64, i64* %12, align 8
  %102 = load %struct._Elftc_String_Table_Entry*, %struct._Elftc_String_Table_Entry** %9, align 8
  %103 = getelementptr inbounds %struct._Elftc_String_Table_Entry, %struct._Elftc_String_Table_Entry* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %95, %78
  %105 = load i64, i64* %13, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %6, align 8
  br label %52

111:                                              ; preds = %52
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = call i32 @ELFTC_STRING_TABLE_CLEAR_COMPACTION_FLAG(%struct.TYPE_7__* %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @ELFTC_STRING_TABLE_UPDATE_LENGTH(%struct.TYPE_7__* %114, i64 %115)
  %117 = load i64*, i64** %5, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i64, i64* %14, align 8
  %121 = load i64*, i64** %5, align 8
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %111
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %122, %29
  %127 = load i8*, i8** %3, align 8
  ret i8* %127
}

declare dso_local i64 @ELFTC_STRING_TABLE_LENGTH(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct._Elftc_String_Table_Entry* @elftc_string_table_find_hash_entry(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @SLIST_REMOVE(%struct._Elftc_String_Table_Bucket*, %struct._Elftc_String_Table_Entry*, i32, i32) #1

declare dso_local i32 @free(%struct._Elftc_String_Table_Entry*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @ELFTC_STRING_TABLE_CLEAR_COMPACTION_FLAG(%struct.TYPE_7__*) #1

declare dso_local i32 @ELFTC_STRING_TABLE_UPDATE_LENGTH(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
