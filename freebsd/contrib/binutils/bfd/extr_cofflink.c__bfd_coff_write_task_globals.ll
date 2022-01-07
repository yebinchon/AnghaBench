; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_write_task_globals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_write_task_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_link_hash_entry = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.coff_final_link_info = type { i8* }

@TRUE = common dso_local global i8* null, align 8
@bfd_link_hash_warning = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_coff_write_task_globals(%struct.coff_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.coff_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.coff_final_link_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.coff_link_hash_entry* %0, %struct.coff_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.coff_final_link_info*
  store %struct.coff_final_link_info* %9, %struct.coff_final_link_info** %5, align 8
  %10 = load i8*, i8** @TRUE, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %3, align 8
  %12 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @bfd_link_hash_warning, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %3, align 8
  %19 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.coff_link_hash_entry*
  store %struct.coff_link_hash_entry* %24, %struct.coff_link_hash_entry** %3, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %3, align 8
  %27 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %3, align 8
  %32 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %48 [
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %30, %30
  %36 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %5, align 8
  %37 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** @TRUE, align 8
  %40 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %5, align 8
  %41 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @_bfd_coff_write_global_sym(%struct.coff_link_hash_entry* %42, i8* %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %5, align 8
  %47 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %49

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i8*, i8** %6, align 8
  ret i8* %51
}

declare dso_local i8* @_bfd_coff_write_global_sym(%struct.coff_link_hash_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
