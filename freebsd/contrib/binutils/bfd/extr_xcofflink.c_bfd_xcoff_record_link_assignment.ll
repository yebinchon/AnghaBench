; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_record_link_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_record_link_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.xcoff_link_hash_entry = type { i32 }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@XCOFF_DEF_REGULAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_xcoff_record_link_assignment(i32* %0, %struct.bfd_link_info* %1, i8* %2) #0 {
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
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %17 = call i32 @xcoff_hash_table(%struct.bfd_link_info* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(i32 %17, i8* %18, i32 %19, i32 %20, i32 %21)
  store %struct.xcoff_link_hash_entry* %22, %struct.xcoff_link_hash_entry** %8, align 8
  %23 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %24 = icmp eq %struct.xcoff_link_hash_entry* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %29 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %30 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %25, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @xcoff_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
