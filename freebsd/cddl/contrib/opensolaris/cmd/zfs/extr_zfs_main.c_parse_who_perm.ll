; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_who_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_who_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@DATA_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i8)* @parse_who_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_who_perm(%struct.TYPE_10__* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32* null, i32** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %31, %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @nvlist_next_nvpair(i32* %27, i32* %28)
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = call i8* @nvpair_name(i32* %32)
  store i8* %33, i8** %11, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @nvpair_type(i32* %34)
  store i64 %35, i64* %12, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %13, align 8
  %39 = call %struct.TYPE_12__* @safe_malloc(i32 4)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %14, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @DATA_TYPE_BOOLEAN, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @uu_avl_node_init(%struct.TYPE_12__* %45, i32* %47, i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %6, align 1
  %55 = call i32 @set_deleg_perm_node(i32* %50, %struct.TYPE_12__* %51, i32 %52, i8* %53, i8 signext %54)
  br label %26

56:                                               ; preds = %26
  ret i32 0
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local %struct.TYPE_12__* @safe_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @set_deleg_perm_node(i32*, %struct.TYPE_12__*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
