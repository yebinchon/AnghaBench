; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i32, i32*, i32*, i64, i32 }

@strtab_hash_newfunc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_strtab_hash* @_bfd_stringtab_init() #0 {
  %1 = alloca %struct.bfd_strtab_hash*, align 8
  %2 = alloca %struct.bfd_strtab_hash*, align 8
  %3 = alloca i32, align 4
  store i32 40, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call %struct.bfd_strtab_hash* @bfd_malloc(i32 %4)
  store %struct.bfd_strtab_hash* %5, %struct.bfd_strtab_hash** %2, align 8
  %6 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %7 = icmp eq %struct.bfd_strtab_hash* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.bfd_strtab_hash* null, %struct.bfd_strtab_hash** %1, align 8
  br label %29

9:                                                ; preds = %0
  %10 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %11 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %10, i32 0, i32 4
  %12 = load i32, i32* @strtab_hash_newfunc, align 4
  %13 = call i32 @bfd_hash_table_init(i32* %11, i32 %12, i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %17 = call i32 @free(%struct.bfd_strtab_hash* %16)
  store %struct.bfd_strtab_hash* null, %struct.bfd_strtab_hash** %1, align 8
  br label %29

18:                                               ; preds = %9
  %19 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %20 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %22 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %24 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  %27 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %2, align 8
  store %struct.bfd_strtab_hash* %28, %struct.bfd_strtab_hash** %1, align 8
  br label %29

29:                                               ; preds = %18, %15, %8
  %30 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  ret %struct.bfd_strtab_hash* %30
}

declare dso_local %struct.bfd_strtab_hash* @bfd_malloc(i32) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.bfd_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
