; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_ddt_add_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_ddt_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@dump_opt = common dso_local global i32* null, align 8
@ZB_ROOT_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"traversing objset %llu, %llu objects, %lu blocks so far\0A\00", align 1
@ZIO_CHECKSUM_OFF = common dso_local global i64 0, align 8
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_9__*, i32*, i8*)* @zdb_ddt_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zdb_ddt_add_cb(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @BP_IS_HOLE(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @BP_IS_EMBEDDED(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %6
  store i32 0, i32* %7, align 4
  br label %121

31:                                               ; preds = %26
  %32 = load i32*, i32** @dump_opt, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 83
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZB_ROOT_LEVEL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @BP_GET_FILL(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @avl_numnodes(i32* %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %42, %36, %31
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @BP_IS_HOLE(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @BP_GET_CHECKSUM(i32* %58)
  %60 = load i64, i64* @ZIO_CHECKSUM_OFF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @BP_GET_LEVEL(i32* %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @BP_GET_TYPE(i32* %67)
  %69 = call i64 @DMU_OT_IS_METADATA(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %62, %57, %53
  store i32 0, i32* %7, align 4
  br label %121

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ddt_key_fill(i32* %73, i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = call %struct.TYPE_8__* @avl_find(i32* %76, %struct.TYPE_8__* %17, i32* %15)
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %16, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %79 = icmp eq %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i32, i32* @UMEM_NOFAIL, align 4
  %82 = call %struct.TYPE_8__* @umem_zalloc(i32 20, i32 %81)
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @avl_insert(i32* %87, %struct.TYPE_8__* %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %72
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @BP_GET_LSIZE(i32* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = call i64 @BP_GET_PSIZE(i32* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @bp_get_dsize_sync(i32* %112, i32* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %91, %71, %30
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i64 @BP_GET_FILL(i32*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i64 @BP_GET_LEVEL(i32*) #1

declare dso_local i64 @DMU_OT_IS_METADATA(i32) #1

declare dso_local i32 @BP_GET_TYPE(i32*) #1

declare dso_local i32 @ddt_key_fill(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @avl_find(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_8__* @umem_zalloc(i32, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i64 @bp_get_dsize_sync(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
