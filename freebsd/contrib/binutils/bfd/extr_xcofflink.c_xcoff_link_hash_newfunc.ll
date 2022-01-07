; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.xcoff_link_hash_entry = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@XMC_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @xcoff_link_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @xcoff_link_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xcoff_link_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = bitcast %struct.bfd_hash_entry* %9 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %10, %struct.xcoff_link_hash_entry** %8, align 8
  %11 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %12 = icmp eq %struct.xcoff_link_hash_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %15 = call %struct.xcoff_link_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table* %14, i32 56)
  store %struct.xcoff_link_hash_entry* %15, %struct.xcoff_link_hash_entry** %8, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %18 = icmp eq %struct.xcoff_link_hash_entry* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %4, align 8
  br label %51

20:                                               ; preds = %16
  %21 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %22 = bitcast %struct.xcoff_link_hash_entry* %21 to %struct.bfd_hash_entry*
  %23 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @_bfd_link_hash_newfunc(%struct.bfd_hash_entry* %22, %struct.bfd_hash_table* %23, i8* %24)
  %26 = inttoptr i64 %25 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %26, %struct.xcoff_link_hash_entry** %8, align 8
  %27 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %28 = icmp ne %struct.xcoff_link_hash_entry* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %31 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %32, i32 0, i32 7
  store i32* null, i32** %33, align 8
  %34 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %38 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %37, i32 0, i32 5
  store i32* null, i32** %38, align 8
  %39 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %40 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %42 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %44 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @XMC_UA, align 4
  %46 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %47 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %29, %20
  %49 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %50 = bitcast %struct.xcoff_link_hash_entry* %49 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %50, %struct.bfd_hash_entry** %4, align 8
  br label %51

51:                                               ; preds = %48, %19
  %52 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %52
}

declare dso_local %struct.xcoff_link_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local i64 @_bfd_link_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
