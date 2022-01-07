; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_map_attr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_map_attr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_value = type { i32, %struct.map_value* }
%struct.mapping = type { i64*, %struct.map_value*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map_value* (i8*, %struct.mapping*, i32)* @map_attr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map_value* @map_attr_string(i8* %0, %struct.mapping* %1, i32 %2) #0 {
  %4 = alloca %struct.map_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mapping*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mapping*, align 8
  %10 = alloca %struct.map_value*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mapping* %1, %struct.mapping** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.mapping*, %struct.mapping** %6, align 8
  %20 = getelementptr inbounds %struct.mapping, %struct.mapping* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i64 @strncmp(i8* %18, i64* %21, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %17
  %31 = load %struct.mapping*, %struct.mapping** %6, align 8
  %32 = getelementptr inbounds %struct.mapping, %struct.mapping* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30, %17
  store %struct.map_value* null, %struct.map_value** %4, align 8
  br label %78

43:                                               ; preds = %30
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %15
  %47 = load %struct.mapping*, %struct.mapping** %6, align 8
  %48 = getelementptr inbounds %struct.mapping, %struct.mapping* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @htab_find(i32 %51, i8** %8)
  %53 = inttoptr i64 %52 to %struct.mapping*
  store %struct.mapping* %53, %struct.mapping** %9, align 8
  %54 = load %struct.mapping*, %struct.mapping** %9, align 8
  %55 = icmp eq %struct.mapping* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store %struct.map_value* null, %struct.map_value** %4, align 8
  br label %78

57:                                               ; preds = %46
  %58 = load %struct.mapping*, %struct.mapping** %9, align 8
  %59 = getelementptr inbounds %struct.mapping, %struct.mapping* %58, i32 0, i32 1
  %60 = load %struct.map_value*, %struct.map_value** %59, align 8
  store %struct.map_value* %60, %struct.map_value** %10, align 8
  br label %61

61:                                               ; preds = %72, %57
  %62 = load %struct.map_value*, %struct.map_value** %10, align 8
  %63 = icmp ne %struct.map_value* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.map_value*, %struct.map_value** %10, align 8
  %66 = getelementptr inbounds %struct.map_value, %struct.map_value* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %76

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.map_value*, %struct.map_value** %10, align 8
  %74 = getelementptr inbounds %struct.map_value, %struct.map_value* %73, i32 0, i32 1
  %75 = load %struct.map_value*, %struct.map_value** %74, align 8
  store %struct.map_value* %75, %struct.map_value** %10, align 8
  br label %61

76:                                               ; preds = %70, %61
  %77 = load %struct.map_value*, %struct.map_value** %10, align 8
  store %struct.map_value* %77, %struct.map_value** %4, align 8
  br label %78

78:                                               ; preds = %76, %56, %42
  %79 = load %struct.map_value*, %struct.map_value** %4, align 8
  ret %struct.map_value* %79
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i64 @htab_find(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
