; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_link_count_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_link_count_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.xcoff_link_hash_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: no such symbol\00", align 1
@bfd_error_no_symbols = common dso_local global i32 0, align 4
@XCOFF_REF_REGULAR = common dso_local global i32 0, align 4
@XCOFF_LDREL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_xcoff_link_count_reloc(i32* %0, %struct.bfd_link_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xcoff_link_hash_entry*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @bfd_get_flavour(i32* %9)
  %11 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @bfd_wrapped_link_hash_lookup(i32* %16, %struct.bfd_link_info* %17, i8* %18, i32 %19, i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %23, %struct.xcoff_link_hash_entry** %8, align 8
  %24 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %25 = icmp eq %struct.xcoff_link_hash_entry* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @_bfd_error_handler(i32 %27, i8* %28)
  %30 = load i32, i32* @bfd_error_no_symbols, align 4
  %31 = call i32 @bfd_set_error(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %54

33:                                               ; preds = %15
  %34 = load i32, i32* @XCOFF_REF_REGULAR, align 4
  %35 = load i32, i32* @XCOFF_LDREL, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %38 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %42 = call %struct.TYPE_2__* @xcoff_hash_table(%struct.bfd_link_info* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %47 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %48 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %46, %struct.xcoff_link_hash_entry* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %26, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32*, %struct.bfd_link_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_2__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @xcoff_mark_symbol(%struct.bfd_link_info*, %struct.xcoff_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
