; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_excl_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_excl_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }

@irp = common dso_local global i32 0, align 4
@els_in_cycle_reserv = common dso_local global i32 0, align 4
@excl_set = common dso_local global i8* null, align 8
@description = common dso_local global %struct.TYPE_10__* null, align 8
@unit_excl_set_table = common dso_local global i8** null, align 8
@dm_unit = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initiate_excl_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initiate_excl_sets() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @els_in_cycle_reserv, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i32 @obstack_blank(i32* @irp, i32 %8)
  %10 = call i64 @obstack_base(i32* @irp)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @excl_set, align 8
  %12 = call i32 @obstack_finish(i32* @irp)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @obstack_blank(i32* @irp, i32 %18)
  %20 = call i64 @obstack_base(i32* @irp)
  %21 = inttoptr i64 %20 to i8**
  store i8** %21, i8*** @unit_excl_set_table, align 8
  %22 = call i32 @obstack_finish(i32* @irp)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %90, %0
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %93

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %1, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @dm_unit, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %29
  %43 = load i32, i32* @els_in_cycle_reserv, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @obstack_blank(i32* @irp, i32 %46)
  %48 = call i64 @obstack_base(i32* @irp)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %2, align 8
  %50 = call i32 @obstack_finish(i32* @irp)
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* @els_in_cycle_reserv, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i8* %51, i32 0, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %58 = call %struct.TYPE_11__* @DECL_UNIT(%struct.TYPE_9__* %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %3, align 8
  br label %61

61:                                               ; preds = %77, %42
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i8*, i8** %2, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SET_BIT(i8* %65, i32 %70)
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %64
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %3, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load i8*, i8** %2, align 8
  %83 = load i8**, i8*** @unit_excl_set_table, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %85 = call %struct.TYPE_11__* @DECL_UNIT(%struct.TYPE_9__* %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8*, i8** %83, i64 %87
  store i8* %82, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %29
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %23

93:                                               ; preds = %23
  ret void
}

declare dso_local i32 @obstack_blank(i32*, i32) #1

declare dso_local i64 @obstack_base(i32*) #1

declare dso_local i32 @obstack_finish(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @DECL_UNIT(%struct.TYPE_9__*) #1

declare dso_local i32 @SET_BIT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
