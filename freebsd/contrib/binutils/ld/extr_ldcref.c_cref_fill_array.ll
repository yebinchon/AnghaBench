; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_cref_fill_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_cref_fill_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cref_hash_entry = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }

@output_bfd = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cref_hash_entry*, i8*)* @cref_fill_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cref_fill_array(%struct.cref_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cref_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cref_hash_entry***, align 8
  store %struct.cref_hash_entry* %0, %struct.cref_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cref_hash_entry***
  store %struct.cref_hash_entry*** %7, %struct.cref_hash_entry**** %5, align 8
  %8 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %9 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* @output_bfd, align 4
  %15 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %16 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @DMGL_ANSI, align 4
  %20 = load i32, i32* @DMGL_PARAMS, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @bfd_demangle(i32 %14, i32* %18, i32 %21)
  %23 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %26 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %31 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %35 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %3, align 8
  %38 = load %struct.cref_hash_entry***, %struct.cref_hash_entry**** %5, align 8
  %39 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %38, align 8
  store %struct.cref_hash_entry* %37, %struct.cref_hash_entry** %39, align 8
  %40 = load %struct.cref_hash_entry***, %struct.cref_hash_entry**** %5, align 8
  %41 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %40, align 8
  %42 = getelementptr inbounds %struct.cref_hash_entry*, %struct.cref_hash_entry** %41, i32 1
  store %struct.cref_hash_entry** %42, %struct.cref_hash_entry*** %40, align 8
  %43 = load i32, i32* @TRUE, align 4
  ret i32 %43
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @bfd_demangle(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
