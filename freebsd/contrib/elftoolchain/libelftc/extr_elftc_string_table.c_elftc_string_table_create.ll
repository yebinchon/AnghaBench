; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_string_table.c_elftc_string_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Elftc_String_Table = type { i8*, i32, i64, i64, i32* }

@ELFTC_STRING_TABLE_DEFAULT_SIZE = common dso_local global i64 0, align 8
@ELFTC_STRING_TABLE_EXPECTED_CHAIN_LENGTH = common dso_local global i64 0, align 8
@ELFTC_STRING_TABLE_EXPECTED_STRING_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._Elftc_String_Table* @elftc_string_table_create(i64 %0) #0 {
  %2 = alloca %struct._Elftc_String_Table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._Elftc_String_Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ELFTC_STRING_TABLE_DEFAULT_SIZE, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @ELFTC_STRING_TABLE_DEFAULT_SIZE, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ELFTC_STRING_TABLE_EXPECTED_CHAIN_LENGTH, align 8
  %16 = load i64, i64* @ELFTC_STRING_TABLE_EXPECTED_STRING_SIZE, align 8
  %17 = mul i64 %15, %16
  %18 = udiv i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 40, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call i8* @malloc(i64 %26)
  %28 = bitcast i8* %27 to %struct._Elftc_String_Table*
  store %struct._Elftc_String_Table* %28, %struct._Elftc_String_Table** %4, align 8
  %29 = icmp eq %struct._Elftc_String_Table* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store %struct._Elftc_String_Table* null, %struct._Elftc_String_Table** %2, align 8
  br label %71

31:                                               ; preds = %13
  %32 = load i64, i64* %3, align 8
  %33 = call i8* @malloc(i64 %32)
  %34 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %35 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = icmp eq i8* %33, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %39 = call i32 @free(%struct._Elftc_String_Table* %38)
  store %struct._Elftc_String_Table* null, %struct._Elftc_String_Table** %2, align 8
  br label %71

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %47 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @SLIST_INIT(i32* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %58 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %61 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %64 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %66 = getelementptr inbounds %struct._Elftc_String_Table, %struct._Elftc_String_Table* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8 0, i8* %67, align 1
  %68 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  %69 = call i32 @ELFTC_STRING_TABLE_UPDATE_LENGTH(%struct._Elftc_String_Table* %68, i32 1)
  %70 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %4, align 8
  store %struct._Elftc_String_Table* %70, %struct._Elftc_String_Table** %2, align 8
  br label %71

71:                                               ; preds = %56, %37, %30
  %72 = load %struct._Elftc_String_Table*, %struct._Elftc_String_Table** %2, align 8
  ret %struct._Elftc_String_Table* %72
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(%struct._Elftc_String_Table*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @ELFTC_STRING_TABLE_UPDATE_LENGTH(%struct._Elftc_String_Table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
