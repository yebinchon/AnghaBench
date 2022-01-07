; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_relax_frag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_relax_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_relax_frag(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %60 [
    i32 139, label %15
    i32 140, label %20
    i32 138, label %20
    i32 132, label %20
    i32 141, label %23
    i32 133, label %23
    i32 136, label %26
    i32 130, label %26
    i32 137, label %29
    i32 131, label %29
    i32 148, label %32
    i32 135, label %37
    i32 134, label %37
    i32 144, label %37
    i32 145, label %37
    i32 147, label %40
    i32 146, label %45
    i32 151, label %50
    i32 152, label %50
    i32 142, label %53
    i32 143, label %53
    i32 150, label %56
    i32 149, label %56
    i32 129, label %56
    i32 128, label %56
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @relax_adr(%struct.TYPE_15__* %16, %struct.TYPE_16__* %17, i64 %18)
  store i32 %19, i32* %8, align 4
  br label %62

20:                                               ; preds = %3, %3, %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @relax_immediate(%struct.TYPE_15__* %21, i32 8, i32 2)
  store i32 %22, i32* %8, align 4
  br label %62

23:                                               ; preds = %3, %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = call i32 @relax_immediate(%struct.TYPE_15__* %24, i32 5, i32 2)
  store i32 %25, i32* %8, align 4
  br label %62

26:                                               ; preds = %3, %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i32 @relax_immediate(%struct.TYPE_15__* %27, i32 5, i32 1)
  store i32 %28, i32* %8, align 4
  br label %62

29:                                               ; preds = %3, %3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = call i32 @relax_immediate(%struct.TYPE_15__* %30, i32 5, i32 0)
  store i32 %31, i32* %8, align 4
  br label %62

32:                                               ; preds = %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @relax_adr(%struct.TYPE_15__* %33, %struct.TYPE_16__* %34, i64 %35)
  store i32 %36, i32* %8, align 4
  br label %62

37:                                               ; preds = %3, %3, %3, %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = call i32 @relax_immediate(%struct.TYPE_15__* %38, i32 8, i32 0)
  store i32 %39, i32* %8, align 4
  br label %62

40:                                               ; preds = %3
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @relax_branch(%struct.TYPE_15__* %41, %struct.TYPE_16__* %42, i32 11, i64 %43)
  store i32 %44, i32* %8, align 4
  br label %62

45:                                               ; preds = %3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @relax_branch(%struct.TYPE_15__* %46, %struct.TYPE_16__* %47, i32 8, i64 %48)
  store i32 %49, i32* %8, align 4
  br label %62

50:                                               ; preds = %3, %3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = call i32 @relax_immediate(%struct.TYPE_15__* %51, i32 8, i32 2)
  store i32 %52, i32* %8, align 4
  br label %62

53:                                               ; preds = %3, %3
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = call i32 @relax_immediate(%struct.TYPE_15__* %54, i32 7, i32 2)
  store i32 %55, i32* %8, align 4
  br label %62

56:                                               ; preds = %3, %3, %3, %3
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = call i32 @relax_addsub(%struct.TYPE_15__* %57, %struct.TYPE_16__* %58)
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %3
  %61 = call i32 (...) @abort() #3
  unreachable

62:                                               ; preds = %56, %53, %50, %45, %40, %37, %32, %29, %26, %23, %20, %15
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %6, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = call i32 @md_convert_frag(i32 %74, %struct.TYPE_16__* %75, %struct.TYPE_15__* %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = call i32 @frag_wane(%struct.TYPE_15__* %78)
  br label %80

80:                                               ; preds = %71, %68, %62
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %81, %82
  ret i32 %83
}

declare dso_local i32 @relax_adr(%struct.TYPE_15__*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @relax_immediate(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @relax_branch(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @relax_addsub(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @md_convert_frag(i32, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @frag_wane(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
