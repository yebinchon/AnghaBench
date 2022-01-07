; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_map_vmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_map_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i8*, i8*, %struct.vmap*, i32* }
%struct.vmap_and_bfd = type { %struct.vmap*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bfdsec_to_vmap = common dso_local global i32 0, align 4
@vmap = common dso_local global %struct.vmap* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmap* @map_vmap(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vmap_and_bfd, align 8
  %6 = alloca %struct.vmap*, align 8
  %7 = alloca %struct.vmap**, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i64 @xmalloc(i32 32)
  %9 = inttoptr i64 %8 to %struct.vmap*
  store %struct.vmap* %9, %struct.vmap** %6, align 8
  %10 = load %struct.vmap*, %struct.vmap** %6, align 8
  %11 = bitcast %struct.vmap* %10 to i8*
  %12 = call i32 @memset(i8* %11, i8 signext 0, i32 32)
  %13 = load %struct.vmap*, %struct.vmap** %6, align 8
  %14 = getelementptr inbounds %struct.vmap, %struct.vmap* %13, i32 0, i32 2
  store %struct.vmap* null, %struct.vmap** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.vmap*, %struct.vmap** %6, align 8
  %17 = getelementptr inbounds %struct.vmap, %struct.vmap* %16, i32 0, i32 3
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32* [ %21, %20 ], [ %23, %22 ]
  %26 = call i8* @bfd_get_filename(i32* %25)
  %27 = load %struct.vmap*, %struct.vmap** %6, align 8
  %28 = getelementptr inbounds %struct.vmap, %struct.vmap* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @bfd_get_filename(i32* %32)
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i8* [ %33, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %34 ]
  %37 = load %struct.vmap*, %struct.vmap** %6, align 8
  %38 = getelementptr inbounds %struct.vmap, %struct.vmap* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds %struct.vmap_and_bfd, %struct.vmap_and_bfd* %5, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = load %struct.vmap*, %struct.vmap** %6, align 8
  %42 = getelementptr inbounds %struct.vmap_and_bfd, %struct.vmap_and_bfd* %5, i32 0, i32 0
  store %struct.vmap* %41, %struct.vmap** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @bfdsec_to_vmap, align 4
  %45 = call i32 @bfd_map_over_sections(i32* %43, i32 %44, %struct.vmap_and_bfd* %5)
  store %struct.vmap** @vmap, %struct.vmap*** %7, align 8
  br label %46

46:                                               ; preds = %51, %35
  %47 = load %struct.vmap**, %struct.vmap*** %7, align 8
  %48 = load %struct.vmap*, %struct.vmap** %47, align 8
  %49 = icmp ne %struct.vmap* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.vmap**, %struct.vmap*** %7, align 8
  %53 = load %struct.vmap*, %struct.vmap** %52, align 8
  %54 = getelementptr inbounds %struct.vmap, %struct.vmap* %53, i32 0, i32 2
  store %struct.vmap** %54, %struct.vmap*** %7, align 8
  br label %46

55:                                               ; preds = %46
  %56 = load %struct.vmap*, %struct.vmap** %6, align 8
  %57 = load %struct.vmap**, %struct.vmap*** %7, align 8
  store %struct.vmap* %56, %struct.vmap** %57, align 8
  %58 = load %struct.vmap*, %struct.vmap** %6, align 8
  ret %struct.vmap* %58
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, %struct.vmap_and_bfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
