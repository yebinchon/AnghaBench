; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_apply_mode_maps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_apply_mode_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.map_value = type { i32, i8*, %struct.map_value* }
%struct.mapping = type { i32 }

@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@modes = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.map_value*, %struct.mapping*, i32, i32*, i8**)* @apply_mode_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_mode_maps(i32 %0, %struct.map_value* %1, %struct.mapping* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.map_value*, align 8
  %9 = alloca %struct.mapping*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.map_value*, align 8
  %16 = alloca %struct.map_value*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.map_value* %1, %struct.map_value** %8, align 8
  store %struct.mapping* %2, %struct.mapping** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %17 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modes, i32 0, i32 0), align 4
  %19 = call i32 @htab_elements(i32 %18)
  %20 = add i32 %17, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %70

26:                                               ; preds = %6
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GET_MODE(i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.map_value*, %struct.map_value** %8, align 8
  store %struct.map_value* %31, %struct.map_value** %15, align 8
  br label %32

32:                                               ; preds = %66, %26
  %33 = load %struct.map_value*, %struct.map_value** %15, align 8
  %34 = icmp ne %struct.map_value* %33, null
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = load %struct.map_value*, %struct.map_value** %15, align 8
  %37 = getelementptr inbounds %struct.map_value, %struct.map_value* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.map_value*, %struct.map_value** %15, align 8
  %43 = getelementptr inbounds %struct.map_value, %struct.map_value* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.mapping*, %struct.mapping** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.map_value* @map_attr_string(i8* %44, %struct.mapping* %45, i32 %46)
  store %struct.map_value* %47, %struct.map_value** %16, align 8
  %48 = load %struct.map_value*, %struct.map_value** %16, align 8
  %49 = icmp ne %struct.map_value* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.map_value*, %struct.map_value** %16, align 8
  %53 = getelementptr inbounds %struct.map_value, %struct.map_value* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @find_mode(i8* %54, i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @PUT_MODE(i32 %51, i32 %57)
  br label %64

59:                                               ; preds = %41
  %60 = load %struct.map_value*, %struct.map_value** %15, align 8
  %61 = getelementptr inbounds %struct.map_value, %struct.map_value* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %12, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %50
  br label %70

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.map_value*, %struct.map_value** %15, align 8
  %68 = getelementptr inbounds %struct.map_value, %struct.map_value* %67, i32 0, i32 2
  %69 = load %struct.map_value*, %struct.map_value** %68, align 8
  store %struct.map_value* %69, %struct.map_value** %15, align 8
  br label %32

70:                                               ; preds = %25, %64, %32
  ret void
}

declare dso_local i32 @htab_elements(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local %struct.map_value* @map_attr_string(i8*, %struct.mapping*, i32) #1

declare dso_local i32 @PUT_MODE(i32, i32) #1

declare dso_local i64 @find_mode(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
