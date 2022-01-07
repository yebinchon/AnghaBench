; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_add_btr_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_add_btr_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@migrate_btrl_obstack = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Found target reg definition: sets %u { bb %d, insn %d }%s priority %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c":not const\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32*)* @add_btr_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @add_btr_def(i32 %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %16 = call %struct.TYPE_9__* @obstack_alloc(i32* @migrate_btrl_obstack, i32 4)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 12
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = call i32 @basic_block_freq(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %50 = call i32 @find_btr_def_group(i32* %48, %struct.TYPE_9__* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 0, %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %57 = call i32 @fibheap_insert(i32 %51, i32 %55, %struct.TYPE_9__* %56)
  %58 = load i64, i64* @dump_file, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %7
  %61 = load i64, i64* @dump_file, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @INSN_UID(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @fprintf(i64 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %67, i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %60, %7
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  ret %struct.TYPE_9__* %79
}

declare dso_local %struct.TYPE_9__* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @basic_block_freq(%struct.TYPE_10__*) #1

declare dso_local i32 @find_btr_def_group(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fibheap_insert(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
