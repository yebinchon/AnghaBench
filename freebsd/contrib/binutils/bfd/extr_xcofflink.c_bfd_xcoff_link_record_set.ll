; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_link_record_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_link_record_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.xcoff_link_hash_entry = type { i32 }
%struct.xcoff_link_size_list = type { i32, %struct.xcoff_link_hash_entry*, %struct.xcoff_link_size_list* }
%struct.TYPE_2__ = type { %struct.xcoff_link_size_list* }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@XCOFF_HAS_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_xcoff_link_record_set(i32* %0, %struct.bfd_link_info* %1, %struct.bfd_link_hash_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.bfd_link_hash_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xcoff_link_hash_entry*, align 8
  %11 = alloca %struct.xcoff_link_size_list*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.bfd_link_hash_entry* %2, %struct.bfd_link_hash_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %8, align 8
  %14 = bitcast %struct.bfd_link_hash_entry* %13 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %14, %struct.xcoff_link_hash_entry** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @bfd_get_flavour(i32* %15)
  %17 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  store i32 24, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.xcoff_link_size_list* @bfd_alloc(i32* %22, i32 %23)
  store %struct.xcoff_link_size_list* %24, %struct.xcoff_link_size_list** %11, align 8
  %25 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %11, align 8
  %26 = icmp eq %struct.xcoff_link_size_list* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %31 = call %struct.TYPE_2__* @xcoff_hash_table(%struct.bfd_link_info* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %32, align 8
  %34 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %11, align 8
  %35 = getelementptr inbounds %struct.xcoff_link_size_list, %struct.xcoff_link_size_list* %34, i32 0, i32 2
  store %struct.xcoff_link_size_list* %33, %struct.xcoff_link_size_list** %35, align 8
  %36 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %37 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %11, align 8
  %38 = getelementptr inbounds %struct.xcoff_link_size_list, %struct.xcoff_link_size_list* %37, i32 0, i32 1
  store %struct.xcoff_link_hash_entry* %36, %struct.xcoff_link_hash_entry** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %11, align 8
  %41 = getelementptr inbounds %struct.xcoff_link_size_list, %struct.xcoff_link_size_list* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.xcoff_link_size_list*, %struct.xcoff_link_size_list** %11, align 8
  %43 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %44 = call %struct.TYPE_2__* @xcoff_hash_table(%struct.bfd_link_info* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.xcoff_link_size_list* %42, %struct.xcoff_link_size_list** %45, align 8
  %46 = load i32, i32* @XCOFF_HAS_SIZE, align 4
  %47 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %48 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %29, %27, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.xcoff_link_size_list* @bfd_alloc(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @xcoff_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
