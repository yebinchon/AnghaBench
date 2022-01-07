; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_longest_path_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_longest_path_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@UNDEFINED_LONGEST_PATH_LENGTH = common dso_local global i32 0, align 4
@ON_THE_PATH = common dso_local global i32 0, align 4
@advance_cycle_insn_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @longest_path_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longest_path_length(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNDEFINED_LONGEST_PATH_LENGTH, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ON_THE_PATH, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call %struct.TYPE_11__* @first_out_arc(%struct.TYPE_10__* %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %4, align 8
  br label %26

26:                                               ; preds = %56, %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = icmp ne %struct.TYPE_10__* %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @advance_cycle_insn_decl, align 4
  %42 = call i64 @DECL_INSN_RESERV(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32 @longest_path_length(%struct.TYPE_10__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %35, %29
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = call %struct.TYPE_11__* @next_out_arc(%struct.TYPE_11__* %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %4, align 8
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_11__* @first_out_arc(%struct.TYPE_10__*) #1

declare dso_local i64 @DECL_INSN_RESERV(i32) #1

declare dso_local %struct.TYPE_11__* @next_out_arc(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
