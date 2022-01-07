; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_update_definedness.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_update_definedness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_entry = type { i64 }
%struct.lang_definedness_hash_entry = type { i32 }

@lang_definedness_table = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@bfd_link_hash_new = common dso_local global i64 0, align 8
@lang_statement_iteration = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_update_definedness(i8* %0, %struct.bfd_link_hash_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfd_link_hash_entry*, align 8
  %5 = alloca %struct.lang_definedness_hash_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfd_link_hash_entry* %1, %struct.bfd_link_hash_entry** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @bfd_hash_lookup(i32* @lang_definedness_table, i8* %6, i32 %7, i32 %8)
  %10 = inttoptr i64 %9 to %struct.lang_definedness_hash_entry*
  store %struct.lang_definedness_hash_entry* %10, %struct.lang_definedness_hash_entry** %5, align 8
  %11 = load %struct.lang_definedness_hash_entry*, %struct.lang_definedness_hash_entry** %5, align 8
  %12 = icmp eq %struct.lang_definedness_hash_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %16 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bfd_link_hash_undefined, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %22 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @bfd_link_hash_common, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @bfd_link_hash_new, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.lang_definedness_hash_entry*, %struct.lang_definedness_hash_entry** %5, align 8
  %34 = getelementptr inbounds %struct.lang_definedness_hash_entry, %struct.lang_definedness_hash_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32, %26, %20, %14
  %39 = load i32, i32* @lang_statement_iteration, align 4
  %40 = load %struct.lang_definedness_hash_entry*, %struct.lang_definedness_hash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.lang_definedness_hash_entry, %struct.lang_definedness_hash_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %37, %13
  ret void
}

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
