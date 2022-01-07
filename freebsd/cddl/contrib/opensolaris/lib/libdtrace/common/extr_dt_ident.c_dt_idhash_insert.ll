; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idhash_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idhash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32, %struct.TYPE_10__**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @dt_idhash_insert(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i8* %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = call i32 @dt_idhash_populate(%struct.TYPE_9__* %29)
  br label %31

31:                                               ; preds = %28, %10
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32*, i32** %19, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = load i64, i64* %21, align 8
  %41 = call %struct.TYPE_10__* @dt_ident_create(i8* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32* %38, i8* %39, i64 %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %22, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %43 = icmp eq %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %83

45:                                               ; preds = %31
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @dt_strtab_hash(i8* %46, i32* null)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = urem i64 %47, %50
  store i64 %51, i64* %23, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %53, align 8
  %55 = load i64, i64* %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %54, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = load i64, i64* %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 %64
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %71, align 8
  %73 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %45
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %80 = call i32 %77(%struct.TYPE_9__* %78, %struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %74, %45
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %11, align 8
  br label %83

83:                                               ; preds = %81, %44
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  ret %struct.TYPE_10__* %84
}

declare dso_local i32 @dt_idhash_populate(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @dt_ident_create(i8*, i32, i32, i32, i32, i32, i32*, i8*, i64) #1

declare dso_local i64 @dt_strtab_hash(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
