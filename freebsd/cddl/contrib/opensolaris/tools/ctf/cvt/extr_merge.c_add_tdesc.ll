; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_tdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_tdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"trying to conjure %d %s (%d, <%x>) as %d, <%x>\0A\00", align 1
@tdesc_ops = common dso_local global %struct.TYPE_17__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)* @add_tdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tdesc(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %struct.TYPE_15__* %9 to i8*
  %18 = call i64 @hash_find(i32 %16, i8* %17, i32* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = call i32 @tdesc_name(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %26, i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** @tdesc_ops, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)*, %struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = call %struct.TYPE_15__* %42(%struct.TYPE_15__* %43, i32 %44, %struct.TYPE_16__* %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %8, align 8
  %47 = icmp eq %struct.TYPE_15__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

49:                                               ; preds = %3
  %50 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = call i32 @hash_add(i32 %55, %struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = call i32 @hash_add(i32 %62, %struct.TYPE_15__* %63)
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %49, %48
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @hash_find(i32, i8*, i32*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @tdesc_name(%struct.TYPE_15__*) #1

declare dso_local i32 @hash_add(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
