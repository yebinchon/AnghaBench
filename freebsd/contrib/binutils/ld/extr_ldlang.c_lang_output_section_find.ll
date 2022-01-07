; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.out_section_hash_entry = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }

@output_section_statement_table = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @lang_output_section_find(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.out_section_hash_entry*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @bfd_hash_lookup(i32* @output_section_statement_table, i8* %6, i32 %7, i32 %8)
  %10 = inttoptr i64 %9 to %struct.out_section_hash_entry*
  store %struct.out_section_hash_entry* %10, %struct.out_section_hash_entry** %4, align 8
  %11 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %12 = icmp eq %struct.out_section_hash_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %16 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %55, %14
  %20 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %2, align 8
  br label %58

30:                                               ; preds = %19
  %31 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %32 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.out_section_hash_entry*
  store %struct.out_section_hash_entry* %35, %struct.out_section_hash_entry** %4, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %38 = icmp ne %struct.out_section_hash_entry* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %4, align 8
  %49 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i8* %47, i32 %52)
  %54 = icmp eq i64 %53, 0
  br label %55

55:                                               ; preds = %46, %39, %36
  %56 = phi i1 [ false, %39 ], [ false, %36 ], [ %54, %46 ]
  br i1 %56, label %19, label %57

57:                                               ; preds = %55
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %58

58:                                               ; preds = %57, %26, %13
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %59
}

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
