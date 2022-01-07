; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_ddt_leak_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_ddt_leak_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32** }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@DDT_CLASS_UNIQUE = common dso_local global i64 0, align 8
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@DDT_PHYS_DITTO = common dso_local global i32 0, align 4
@ZDB_OT_DITTO = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @zdb_ddt_leak_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_ddt_leak_init(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = call i32 @bzero(%struct.TYPE_19__* %5, i32 16)
  br label %13

13:                                               ; preds = %97, %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = call i32 @ddt_walk(%struct.TYPE_16__* %14, %struct.TYPE_19__* %5, %struct.TYPE_18__* %6)
  store i32 %15, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DDT_CLASS_UNIQUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %104

25:                                               ; preds = %17
  %26 = call i32 @ddt_phys_total_refcnt(%struct.TYPE_18__* %6)
  %27 = icmp sgt i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %69, %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %69

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = call i32 @ddt_bp_create(i64 %42, i32* %43, %struct.TYPE_17__* %44, i32* %8)
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load i32, i32* @ZDB_OT_DITTO, align 4
  %52 = call i32 @zdb_count_block(%struct.TYPE_15__* %50, i32* null, i32* %8, i32 %51)
  br label %68

53:                                               ; preds = %40
  %54 = call i32 @BP_GET_ASIZE(i32* %8)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = mul nsw i32 %54, %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %53, %49
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 1
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %9, align 8
  br label %30

74:                                               ; preds = %30
  %75 = load i32*, i32** @dump_opt, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 76
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @ddt_enter(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* @B_TRUE, align 4
  %91 = call i32* @ddt_lookup(i32* %89, i32* %8, i32 %90)
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @VERIFY(i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @ddt_exit(i32* %95)
  br label %97

97:                                               ; preds = %79, %74
  br label %13

98:                                               ; preds = %13
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  br label %104

104:                                              ; preds = %98, %24
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ddt_walk(%struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ddt_phys_total_refcnt(%struct.TYPE_18__*) #1

declare dso_local i32 @ddt_bp_create(i64, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @zdb_count_block(%struct.TYPE_15__*, i32*, i32*, i32) #1

declare dso_local i32 @BP_GET_ASIZE(i32*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @ddt_lookup(i32*, i32*, i32) #1

declare dso_local i32 @ddt_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
