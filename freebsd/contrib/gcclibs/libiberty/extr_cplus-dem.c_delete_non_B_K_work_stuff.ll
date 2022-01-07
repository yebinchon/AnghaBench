; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_delete_non_B_K_work_stuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_delete_non_B_K_work_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32*, i64*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_stuff*)* @delete_non_B_K_work_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_non_B_K_work_stuff(%struct.work_stuff* %0) #0 {
  %2 = alloca %struct.work_stuff*, align 8
  %3 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %2, align 8
  %4 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %5 = call i32 @forget_types(%struct.work_stuff* %4)
  %6 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %7 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %12 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @free(i8* %14)
  %16 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %17 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %19 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %22 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %29 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %34 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %43 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %41, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %57 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = bitcast i64* %58 to i8*
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %62 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %61, i32 0, i32 2
  store i64* null, i64** %62, align 8
  br label %63

63:                                               ; preds = %55, %20
  %64 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %65 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %70 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @string_delete(i32* %71)
  %73 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %74 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @free(i8* %76)
  %78 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %79 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @forget_types(%struct.work_stuff*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
