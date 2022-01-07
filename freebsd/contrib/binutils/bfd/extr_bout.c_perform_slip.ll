; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_perform_slip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_perform_slip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.generic_link_hash_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@bfd_link_hash_defined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i64)* @perform_slip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_slip(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.generic_link_hash_entry*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_11__** @_bfd_generic_link_get_symbols(i32* %12)
  store %struct.TYPE_11__** %13, %struct.TYPE_11__*** %9, align 8
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %15 = icmp ne %struct.TYPE_11__** %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BFD_ASSERT(i32 %16)
  br label %18

18:                                               ; preds = %85, %4
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %10, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %83

48:                                               ; preds = %36
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %53, %struct.generic_link_hash_entry** %11, align 8
  %54 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %55 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @bfd_link_hash_defined, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BFD_ASSERT(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %65 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %63
  store i64 %70, i64* %68, align 8
  %71 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %72 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BFD_ASSERT(i32 %81)
  br label %83

83:                                               ; preds = %48, %36
  br label %84

84:                                               ; preds = %83, %30
  br label %85

85:                                               ; preds = %84, %22
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %86, i32 1
  store %struct.TYPE_11__** %87, %struct.TYPE_11__*** %9, align 8
  br label %18

88:                                               ; preds = %18
  ret void
}

declare dso_local %struct.TYPE_11__** @_bfd_generic_link_get_symbols(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
