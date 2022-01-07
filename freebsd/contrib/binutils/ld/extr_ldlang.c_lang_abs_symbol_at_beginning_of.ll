; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_abs_symbol_at_beginning_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_abs_symbol_at_beginning_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@link_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%P%F: bfd_link_hash_lookup failed: %E\0A\00", align 1
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@output_bfd = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_abs_symbol_at_beginning_of(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfd_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @link_info, i32 0, i32 0), align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @TRUE, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %7, i8* %8, i32 %9, i32 %10, i32 %11)
  store %struct.bfd_link_hash_entry* %12, %struct.bfd_link_hash_entry** %5, align 8
  %13 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %14 = icmp eq %struct.bfd_link_hash_entry* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @einfo(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %20 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @bfd_link_hash_new, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @bfd_link_hash_undefined, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24, %18
  %31 = load i64, i64* @bfd_link_hash_defined, align 8
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %33 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @output_bfd, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32* @bfd_get_section_by_name(i32 %34, i8* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %52

44:                                               ; preds = %30
  %45 = load i32, i32* @output_bfd, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @bfd_get_section_vma(i32 %45, i32* %46)
  %48 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %49 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* @bfd_abs_section_ptr, align 4
  %54 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %55 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %24
  ret void
}

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_get_section_vma(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
