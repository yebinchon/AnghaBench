; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_hash_entry_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_hash_entry_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_entry = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.bfd_link_hash_entry* }

@bfd_link_hash_warning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bfd_link_hash_entry*)* @hash_entry_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hash_entry_bfd(%struct.bfd_link_hash_entry* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.bfd_link_hash_entry* %0, %struct.bfd_link_hash_entry** %3, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %6 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @bfd_link_hash_warning, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %12 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  store %struct.bfd_link_hash_entry* %15, %struct.bfd_link_hash_entry** %3, align 8
  br label %4

16:                                               ; preds = %4
  %17 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %20 [
    i32 129, label %21
    i32 128, label %21
    i32 131, label %27
    i32 130, label %27
    i32 132, label %35
  ]

20:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %45

21:                                               ; preds = %16, %16
  %22 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %23 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %2, align 8
  br label %45

27:                                               ; preds = %16, %16
  %28 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %29 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %2, align 8
  br label %45

35:                                               ; preds = %16
  %36 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %37 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %35, %27, %21, %20
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
